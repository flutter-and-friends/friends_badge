package android.device;

import java.io.FileOutputStream;

/* loaded from: classes.dex */
public class LedManager {
    public void enableLedIndicator(Led led, boolean z) {
        throw new RuntimeException("stub");
    }

    private synchronized void setBrightness(String str, byte[] bArr) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
