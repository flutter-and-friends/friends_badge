package cn.highlight.core.zxing.utils;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.highlight.core.R;
import cn.highlight.core.zxing.ScanManager;
import cn.highlight.core.zxing.camera.CameraManager;
import cn.highlight.core.zxing.decode.DecodeThread;
import com.google.zxing.Result;

/* loaded from: classes.dex */
public class CaptureActivityHandler extends Handler {
    final CameraManager cameraManager;
    final DecodeThread decodeThread;
    final ScanManager scanManager;
    State state;

    enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(ScanManager scanManager, CameraManager cameraManager, int i) {
        this.scanManager = scanManager;
        this.decodeThread = new DecodeThread(scanManager, i);
        this.decodeThread.start();
        this.state = State.SUCCESS;
        this.cameraManager = cameraManager;
        cameraManager.startPreview();
        restartPreviewAndDecode();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == R.id.restart_preview) {
            restartPreviewAndDecode();
            return;
        }
        if (message.what == R.id.decode_succeeded) {
            this.state = State.SUCCESS;
            Bundle data = message.getData();
            Result result = (Result) message.obj;
            this.scanManager.handleDecode(new cn.highlight.core.zxing.Result(result.getText(), result.getRawBytes(), result.getResultPoints(), result.getBarcodeFormat()), data);
            return;
        }
        if (message.what == R.id.decode_failed) {
            this.state = State.PREVIEW;
            this.cameraManager.requestPreviewFrame(this.decodeThread.getHandler(), R.id.decode);
        } else if (message.what == R.id.decode_error) {
            this.scanManager.handleDecodeError((Exception) message.obj);
        } else {
            int i = message.what;
            int i2 = R.id.return_scan_result;
        }
    }

    public void quitSynchronously() {
        this.state = State.DONE;
        this.cameraManager.stopPreview();
        Message.obtain(this.decodeThread.getHandler(), R.id.quit).sendToTarget();
        try {
            this.decodeThread.join(500L);
        } catch (InterruptedException unused) {
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
    }

    void restartPreviewAndDecode() {
        if (this.state == State.SUCCESS) {
            this.state = State.PREVIEW;
            this.cameraManager.requestPreviewFrame(this.decodeThread.getHandler(), R.id.decode);
        }
    }

    public boolean isScanning() {
        return this.state == State.PREVIEW;
    }
}
