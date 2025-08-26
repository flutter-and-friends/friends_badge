package android.device;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class PrinterManager {
    public static final int PRNSTS_BUSY = -4;
    public static final int PRNSTS_ERR = -256;
    public static final int PRNSTS_ERR_DRIVER = -257;
    public static final int PRNSTS_OK = 0;
    public static final int PRNSTS_OUT_OF_PAPER = -1;
    public static final int PRNSTS_OVER_HEAT = -2;
    public static final int PRNSTS_UNDER_VOLTAGE = -3;
    private static final String TAG = "PrinterManager";

    public void prn_close() {
    }

    public int prn_open() {
        return 0;
    }

    public int open() {
        throw new RuntimeException("stub");
    }

    public int close() {
        throw new RuntimeException("stub");
    }

    public void setGrayLevel(int i) {
        throw new RuntimeException("stub");
    }

    public void paperFeed(int i) {
        throw new RuntimeException("stub");
    }

    public void setSpeedLevel(int i) {
        throw new RuntimeException("stub");
    }

    public int setupPage(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int clearPage() {
        throw new RuntimeException("stub");
    }

    public int printPage(int i) {
        throw new RuntimeException("stub");
    }

    public int drawLine(int i, int i2, int i3, int i4, int i5) {
        throw new RuntimeException("stub");
    }

    public int drawText(String str, int i, int i2, String str2, int i3, boolean z, boolean z2, int i4) {
        throw new RuntimeException("stub");
    }

    public int drawTextEx(String str, int i, int i2, int i3, int i4, String str2, int i5, int i6, int i7, int i8) {
        throw new RuntimeException("stub");
    }

    public int drawBarcode(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        throw new RuntimeException("stub");
    }

    public int drawBitmap(Bitmap bitmap, int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int drawBitmapEx(byte[] bArr, int i, int i2, int i3, int i4) {
        throw new RuntimeException("stub");
    }

    public int getStatus() {
        throw new RuntimeException("stub");
    }

    public int prn_setBlack(int i) {
        throw new RuntimeException("stub");
    }

    public void prn_paperForWard(int i) {
        throw new RuntimeException("stub");
    }

    public void prn_paperBack(int i) {
        throw new RuntimeException("stub");
    }

    public int prn_setSpeed(int i) {
        throw new RuntimeException("stub");
    }

    public int prn_getTemp() {
        throw new RuntimeException("stub");
    }

    public int prn_setupPage(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int prn_clearPage() {
        throw new RuntimeException("stub");
    }

    public int prn_printPage(int i) {
        throw new RuntimeException("stub");
    }

    public int prn_drawLine(int i, int i2, int i3, int i4, int i5) {
        throw new RuntimeException("stub");
    }

    public int prn_drawText(String str, int i, int i2, String str2, int i3, boolean z, boolean z2, int i4) {
        throw new RuntimeException("stub");
    }

    public int prn_drawTextEx(String str, int i, int i2, int i3, int i4, String str2, int i5, int i6, int i7, int i8) {
        throw new RuntimeException("stub");
    }

    public int prn_drawBarcode(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        throw new RuntimeException("stub");
    }

    public int prn_drawBitmap(Bitmap bitmap, int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int prn_getStatus() {
        throw new RuntimeException("stub");
    }

    public int getTemp() {
        throw new RuntimeException("stub");
    }

    public int printCachedPage() {
        throw new RuntimeException("stub");
    }
}
