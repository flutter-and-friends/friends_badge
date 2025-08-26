package android.device;

/* loaded from: classes.dex */
public class PiccManager {
    private static final String TAG = "PiccReader";

    public int open() {
        throw new RuntimeException("stub");
    }

    public int enableRATS(byte b) {
        throw new RuntimeException("stub");
    }

    public int primeCard_init() {
        throw new RuntimeException("stub");
    }

    public int primeCard_apduTransmit(byte[] bArr, int i, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int request(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int request_norats(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int request_type(byte b, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int antisel(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int activate() {
        throw new RuntimeException("stub");
    }

    public int activateEx(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int apduTransmit(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }

    public int apduTransmit(byte[] bArr, int i, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int apduTransmitFelica(byte[] bArr, int i, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public void SetTimeOutFelica(int i) {
        throw new RuntimeException("stub");
    }

    public int apduTransmit(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        throw new RuntimeException("stub");
    }

    public int deactivate(byte b) {
        throw new RuntimeException("stub");
    }

    public int close() {
        throw new RuntimeException("stub");
    }

    public int m1_keyAuth(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int m1_readBlock(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int m1_writeBlock(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int m1_increment(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int m1_decrement(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int m1_restore(int i) {
        throw new RuntimeException("stub");
    }

    public int m1_transfer(int i) {
        throw new RuntimeException("stub");
    }

    public int m1_init(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int m1_amount(int i) {
        throw new RuntimeException("stub");
    }

    public int idcard_init() {
        throw new RuntimeException("stub");
    }

    public int idcard_apduTransmit(byte[] bArr, int i, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int apduTransmit(int i, int i2, byte[] bArr, int i3, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int mifareUlPageRead(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int mifareUlPageWrite(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int mifareUlReadCnt(byte b, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int mifareUlIncrCnt(byte b, int i) {
        throw new RuntimeException("stub");
    }

    public int transactionData(byte b, byte[] bArr, int i, byte[] bArr2, int[] iArr) {
        throw new RuntimeException("stub");
    }

    public int request_v2(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int request_norats_v2(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int request_type_v2(byte b, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int antisel_v2(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int reset_v2(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int activate_v2(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }
}
