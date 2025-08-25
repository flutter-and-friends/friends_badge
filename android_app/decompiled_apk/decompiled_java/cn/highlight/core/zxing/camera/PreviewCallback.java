package cn.highlight.core.zxing.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;

/* loaded from: classes.dex */
public class PreviewCallback implements Camera.PreviewCallback {
    static final String TAG = PreviewCallback.class.getSimpleName();
    final CameraConfigurationManager configManager;
    Handler previewHandler;
    int previewMessage;

    public PreviewCallback(CameraConfigurationManager cameraConfigurationManager) {
        this.configManager = cameraConfigurationManager;
    }

    public void setHandler(Handler handler, int i) {
        this.previewHandler = handler;
        this.previewMessage = i;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point cameraResolution = this.configManager.getCameraResolution();
        Handler handler = this.previewHandler;
        if (cameraResolution != null && handler != null) {
            handler.obtainMessage(this.previewMessage, cameraResolution.x, cameraResolution.y, bArr).sendToTarget();
            this.previewHandler = null;
        } else {
            Log.d(TAG, "Got preview callback, but no handler or resolution available");
        }
    }
}
