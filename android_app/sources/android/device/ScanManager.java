package android.device;

import android.device.scanner.configuration.Symbology;
import android.device.scanner.configuration.Triggering;
import java.io.FileDescriptor;
import java.util.Map;

/* loaded from: classes.dex */
public class ScanManager {
    public static final String ACTION_DECODE = "android.intent.ACTION_DECODE_DATA";
    public static final String BARCODE_LENGTH_TAG = "length";
    public static final String BARCODE_STRING_TAG = "barcode_string";
    public static final String BARCODE_TYPE_TAG = "barcodeType";
    public static final String DECODE_DATA_TAG = "barcode";
    private static final String TAG = "ScanManager";

    public String getScanPara(String str) {
        return null;
    }

    public boolean switchOutputMode(int i) {
        throw new RuntimeException("stub");
    }

    public int getOutputMode() {
        throw new RuntimeException("stub");
    }

    public boolean initOutputMode() {
        throw new RuntimeException("stub");
    }

    public boolean setBeep() {
        throw new RuntimeException("stub");
    }

    public boolean setUnBeep() {
        throw new RuntimeException("stub");
    }

    public boolean getBeepState() {
        throw new RuntimeException("stub");
    }

    public boolean setVibrate() {
        throw new RuntimeException("stub");
    }

    public boolean setUnVibrate() {
        throw new RuntimeException("stub");
    }

    public boolean getVibrateState() {
        throw new RuntimeException("stub");
    }

    public boolean setAppend() {
        throw new RuntimeException("stub");
    }

    public boolean setUnAppend() {
        throw new RuntimeException("stub");
    }

    public boolean getAppendState() {
        throw new RuntimeException("stub");
    }

    public Map<String, Integer> getScanerList() {
        throw new RuntimeException("stub");
    }

    public boolean setOutputParameter(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int getOutputParameter(int i) {
        throw new RuntimeException("stub");
    }

    public boolean openScanner() {
        throw new RuntimeException("stub");
    }

    public boolean closeScanner() {
        throw new RuntimeException("stub");
    }

    public boolean getScannerState() {
        throw new RuntimeException("stub");
    }

    public boolean stopDecode() {
        throw new RuntimeException("stub");
    }

    public boolean startDecode() {
        throw new RuntimeException("stub");
    }

    public boolean doAck() {
        throw new RuntimeException("stub");
    }

    public boolean doNack(int i) {
        throw new RuntimeException("stub");
    }

    public boolean lockTriggler() {
        throw new RuntimeException("stub");
    }

    public boolean lockTrigger() {
        throw new RuntimeException("stub");
    }

    public boolean unlockTriggler() {
        throw new RuntimeException("stub");
    }

    public boolean unlockTrigger() {
        throw new RuntimeException("stub");
    }

    public boolean getTriggerLockState() {
        throw new RuntimeException("stub");
    }

    public int getScannerType() {
        throw new RuntimeException("stub");
    }

    public boolean doOpTiConDefaultSet() {
        throw new RuntimeException("stub");
    }

    public boolean doSymbolDefaultSet() {
        throw new RuntimeException("stub");
    }

    public boolean resetScannerParameters() {
        throw new RuntimeException("stub");
    }

    public boolean resetScannerParameters(int i) {
        throw new RuntimeException("stub");
    }

    public FileDescriptor open(String str, int i, int i2) {
        throw new RuntimeException("stub");
    }

    public static String toHexString(String str) {
        String str2 = "";
        for (int i = 0; i < str.length(); i++) {
            str2 = str2 + Integer.toHexString(str.charAt(i));
        }
        return str2;
    }

    public void setScannerType(int i) {
        throw new RuntimeException("stub");
    }

    public void setTriggerMode(Triggering triggering) {
        throw new RuntimeException("stub");
    }

    public Triggering getTriggerMode() {
        throw new RuntimeException("stub");
    }

    private void setPropertyInt(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int setPropertyInts(int[] iArr, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int setParameterInts(int[] iArr, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public void getPropertyInts(int[] iArr, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int[] getParameterInts(int[] iArr) {
        throw new RuntimeException("stub");
    }

    public boolean setPropertyString(int i, String str) {
        throw new RuntimeException("stub");
    }

    public boolean setParameterString(int[] iArr, String[] strArr) {
        throw new RuntimeException("stub");
    }

    public String getPropertyString(int i) {
        throw new RuntimeException("stub");
    }

    public String[] getParameterString(int[] iArr) {
        throw new RuntimeException("stub");
    }

    public boolean isSymbologySupported(Symbology symbology) {
        throw new RuntimeException("stub");
    }

    public boolean isSymbologyEnabled(Symbology symbology) {
        throw new RuntimeException("stub");
    }

    public void enableAllSymbologies(boolean z) {
        throw new RuntimeException("stub");
    }

    public void enableSymbology(Symbology symbology, boolean z) {
        throw new RuntimeException("stub");
    }
}
