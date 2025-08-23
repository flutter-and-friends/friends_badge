package cn.highlight.core.zxing.decode;

import android.os.Handler;
import android.os.Message;
import cn.highlight.core.zxing.Result;
import cn.highlight.core.zxing.ScanManager;

/* loaded from: classes.dex */
public class PhotoScanHandler extends Handler {
    public static final int PHOTODECODEERROR = 0;
    public static final int PHOTODECODEOK = 1;
    ScanManager scanManager;

    public PhotoScanHandler(ScanManager scanManager) {
        this.scanManager = scanManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.scanManager.handleDecodeError((Exception) message.obj);
        } else {
            if (i != 1) {
                return;
            }
            this.scanManager.handleDecode((Result) message.obj, message.getData());
        }
    }
}
