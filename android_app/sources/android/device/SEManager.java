package android.device;

import android.os.Bundle;
import android.p001os.IInputActionListener;

/* loaded from: classes.dex */
public class SEManager {
    public static final int ALGORITHM_CBC = 2;
    public static final int ALGORITHM_ECB = 1;
    public static final int ECRC16_DATA = 6;
    public static final int EENCRYPTKEYS_NOTDOWLOAD = 26;
    public static final int EHEAD_CMD = 5;
    public static final int EKEYSNO_NOTFOUND = 20;
    public static final int EKEYSNO_OVERRANGE = 21;
    public static final int EKEYS_DOWNLOAD = 22;
    public static final int EKEYS_EXISTS = 25;
    public static final int EKEYS_NOTDOWNLOAD = 23;
    public static final int EKEYS_OUTOFSPACE = 24;
    public static final int EKEYS_RDORINIT = 18;
    public static final int ELENGTH_CMD = 2;
    public static final int EMSG_FORMAT = 9;
    public static final int EMSG_MAC = 7;
    public static final int ENOTSUP_ALGORITHM = 12;
    public static final int ENOTSUP_CMD = 1;
    public static final int ENOTSUP_FORMAT = 13;
    public static final int ENOTSUP_KEYSLENGTH = 28;
    public static final int ENOTSUP_MODE = 14;
    public static final int ENOTSUP_PINBLOCK_FORMAT = 40;
    public static final int ENOTSUP_SEPUSE = 27;
    public static final int EPINBLOCK_CHAR = 45;
    public static final int ERESERVED_0X1D = 29;
    public static final int ESEPARATORLEN_CMD = 4;
    public static final int ESEPARATOR_CMD = 3;
    public static final int EUSERNAME_LENGTH = 41;
    public static final int EUSERNAME_VALUE = 42;
    public static final int EUSER_PINBLOCK_LENGTH = 43;
    public static final int EUSER_PINBLOCK_VALUE = 44;
    public static final int S_OK = 0;
    private static final String TAG = "SEManager";

    public interface OperationPedInputListener extends PedInputListener {
        void handleResult(int i, int i2, Bundle bundle);
    }

    public interface PedInputListener {
        void onChanged(int i, int i2, byte[] bArr);
    }

    public int open() {
        throw new RuntimeException("stub");
    }

    public int close() {
        throw new RuntimeException("stub");
    }

    public int initPinPad(int i) {
        throw new RuntimeException("stub");
    }

    public int getFirmwareVersion(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int getStatus(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int clearKey(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int readKey(int i, int i2, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int downloadKey(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }

    public int downloadKeyDuk(byte[] bArr, int i, byte[] bArr2, int i2) {
        throw new RuntimeException("stub");
    }

    public int downloadKeyDukpt(int i, byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
        throw new RuntimeException("stub");
    }

    public int downloadKeyEx(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, byte[] bArr2, int i8, byte[] bArr3, byte[] bArr4) {
        throw new RuntimeException("stub");
    }

    public int deleteKey(int i, int i2, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int encryptData(int i, int i2, int i3, byte[] bArr, int i4, int i5, byte[] bArr2, int i6, byte[] bArr3, byte[] bArr4) {
        throw new RuntimeException("stub");
    }

    public int encryptDataDuk(int i, int i2, byte[] bArr, int i3, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        throw new RuntimeException("stub");
    }

    public int decryptData(int i, int i2, int i3, byte[] bArr, int i4, int i5, byte[] bArr2, int i6, byte[] bArr3, byte[] bArr4) {
        throw new RuntimeException("stub");
    }

    public int calculateMAC(int i, int i2, int i3, int i4, byte[] bArr, int i5, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }

    public int calculateMACEx(byte b, byte b2, int i, byte[] bArr, byte[] bArr2, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int getPinBlock(int i, int i2, byte[] bArr, int i3, String str, long j, PedInputListener pedInputListener) {
        throw new RuntimeException("stub");
    }

    public void endPinInputEvent(int i) {
        throw new RuntimeException("stub");
    }

    public int getPinBlockEx(int i, int i2, byte[] bArr, int i3, String str, long j, String str2, PedInputListener pedInputListener) {
        throw new RuntimeException("stub");
    }

    public int getPinBlockEx(Bundle bundle, PedInputListener pedInputListener) {
        throw new RuntimeException("stub");
    }

    public int getPinBlockEx(Bundle bundle, IInputActionListener iInputActionListener) {
        throw new RuntimeException("stub");
    }

    public int generateRandomData(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int enableSuspend(int i, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int setSuspendTimeout(int i, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public void addPedInputListener(PedInputListener pedInputListener) {
        throw new RuntimeException("stub");
    }

    public void removePedInputListener(PedInputListener pedInputListener) {
        throw new RuntimeException("stub");
    }

    public int setIndicatorLED(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int setRTC(int i, int i2, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int getRTC(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int getCAStatus(byte[] bArr, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int pciGetMac(byte b, int i, byte[] bArr, byte[] bArr2, byte b2) {
        throw new RuntimeException("stub");
    }

    public int encryptDataTDK(int i, int i2, byte[] bArr, int i3, int i4, byte[] bArr2, int i5, byte[] bArr3, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int readCA(int i, int i2, int i3, byte[] bArr, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int writeCA(int i, int i2, int i3, byte[] bArr, int i4) {
        throw new RuntimeException("stub");
    }

    public int readCert(int i, int i2, int i3, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int writeCert(int i, int i2, int i3, byte[] bArr, int i4) {
        throw new RuntimeException("stub");
    }

    public int verifyCertSign(byte[] bArr, int i, byte[] bArr2, int i2) {
        throw new RuntimeException("stub");
    }

    public int downloadKeyOfPINBdk(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        throw new RuntimeException("stub");
    }

    public int downloadKeyOfTDKBdk(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        throw new RuntimeException("stub");
    }

    public int calculateMACOfDUKPT(byte[] bArr, int i, byte[] bArr2, int[] iArr, byte[] bArr3, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int DukptEncryptDataIV(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5, byte[] bArr3, int[] iArr, byte[] bArr4, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int calculateMACOfDUKPTWithType(int i, int i2, byte[] bArr, int i3, byte[] bArr2, int[] iArr, byte[] bArr3, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int calculateMACOfDUKPTExtend(int i, byte[] bArr, int i2, byte[] bArr2, int[] iArr, byte[] bArr3, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public int encryptWithPEK(int i, int i2, byte[] bArr, int i3, byte[] bArr2, int[] iArr, byte[] bArr3, int[] iArr2) {
        throw new RuntimeException("stub");
    }

    public void GetDukptPinBlock(byte b, byte b2, byte b3, byte b4, byte[] bArr, int i, IInputActionListener iInputActionListener) {
        throw new RuntimeException("stub");
    }

    public int pciWriteMKeyse(int i, byte b, byte b2, byte b3, byte b4, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }

    public int pciWriteSKeyse(int i, byte b, byte b2, byte b3, byte[] bArr, byte[] bArr2, byte b4, byte b5) {
        throw new RuntimeException("stub");
    }

    public int setBeeper(int i, int i2, int i3) {
        throw new RuntimeException("stub");
    }

    public int calculateMAC2(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }
}
