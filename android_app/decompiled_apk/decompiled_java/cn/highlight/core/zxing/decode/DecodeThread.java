package cn.highlight.core.zxing.decode;

import android.os.Handler;
import android.os.Looper;
import cn.highlight.core.zxing.ScanManager;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class DecodeThread extends Thread {
    public static final int ALL_MODE = 768;
    public static final String BARCODE_BITMAP = "barcode_bitmap";
    public static final int BARCODE_MODE = 256;
    public static final int QRCODE_MODE = 512;
    static Map<DecodeHintType, Object> hints;
    Handler handler;
    final CountDownLatch handlerInitLatch = new CountDownLatch(1);
    final ScanManager scanManager;

    public DecodeThread(ScanManager scanManager, int i) {
        this.scanManager = scanManager;
        hints = new EnumMap(DecodeHintType.class);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(EnumSet.of(BarcodeFormat.AZTEC));
        arrayList.addAll(EnumSet.of(BarcodeFormat.PDF_417));
        if (i == 256) {
            arrayList.addAll(DecodeFormatManager.getBarCodeFormats());
        } else if (i == 512) {
            arrayList.addAll(DecodeFormatManager.getQrCodeFormats());
        } else if (i == 768) {
            arrayList.addAll(DecodeFormatManager.getBarCodeFormats());
            arrayList.addAll(DecodeFormatManager.getQrCodeFormats());
        }
        hints.put(DecodeHintType.POSSIBLE_FORMATS, arrayList);
    }

    public Handler getHandler() throws InterruptedException {
        try {
            this.handlerInitLatch.await();
        } catch (InterruptedException unused) {
        }
        return this.handler;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.handler = new DecodeHandler(this.scanManager, hints);
        this.handlerInitLatch.countDown();
        Looper.loop();
    }

    public static Map<DecodeHintType, Object> getHints() {
        return hints;
    }
}
