package android.device;

/* loaded from: classes.dex */
public class IccManager {
    private static final String TAG = "IccManager";
    private int slot = 0;

    /* renamed from: fd */
    private int f0fd = -1;
    private int volt = -1;

    public int IccSelect(char c) {
        return 0;
    }

    public int sle4442_changePassword(byte[] bArr) {
        return 0;
    }

    public int sle4442_readErrorCounter(byte[] bArr) {
        return 0;
    }

    public byte[] sle4442_readMainMemory(int i, int i2) {
        return null;
    }

    public byte[] sle4442_readProtectionMemory(int i, int i2) {
        return null;
    }

    public int sle4442_verifyPassword(byte[] bArr) {
        return 0;
    }

    public int sle4442_writeMainMemory(int i, byte[] bArr, int i2) {
        return 0;
    }

    public int sle4442_writeProtectionMemory(int i, byte[] bArr, int i2) {
        return 0;
    }

    public boolean IccOpen() {
        throw new RuntimeException("stub");
    }

    public boolean IccClose() {
        throw new RuntimeException("stub");
    }

    public boolean IccSetBaudrate(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public byte[] IccFound() {
        throw new RuntimeException("stub");
    }

    public byte[] IccAct(char c) {
        throw new RuntimeException("stub");
    }

    public byte[] IccExapdu(byte[] bArr, char c) {
        throw new RuntimeException("stub");
    }

    public int open(byte b, byte b2, byte b3) {
        throw new RuntimeException("stub");
    }

    public int close() {
        throw new RuntimeException("stub");
    }

    public int detect() {
        throw new RuntimeException("stub");
    }

    public int activate(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int apduTransmit(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
        throw new RuntimeException("stub");
    }

    public int deactivate() {
        throw new RuntimeException("stub");
    }

    public int request_Type(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int getResponseEnable(byte b) {
        throw new RuntimeException("stub");
    }

    public int setETU(int i) {
        throw new RuntimeException("stub");
    }

    public int sle4442_reset(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int sle4436_reset(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public byte[] sle4436_readMemory(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int sle4436_writeMemory(int i, byte[] bArr, int i2) {
        throw new RuntimeException("stub");
    }

    public int sle4436_writeCarry(int i, int i2, byte[] bArr, int i3) {
        throw new RuntimeException("stub");
    }

    public int sle4436_verifyPassword(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public byte[] sle4436_authenticate(int i, byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("stub");
    }

    public int sle4436_regIncrease(int i) {
        throw new RuntimeException("stub");
    }

    public int sle4436_readBit(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public int sle4436_writeBit() {
        throw new RuntimeException("stub");
    }

    public int sle4436_reloadByte() {
        throw new RuntimeException("stub");
    }

    public int sle4436_decValue(int i) {
        throw new RuntimeException("stub");
    }

    public int sle4428_reset(byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public byte[] sle4428_readMemory(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int sle4428_writeMemory(int i, byte[] bArr, int i2) {
        throw new RuntimeException("stub");
    }

    public int sle4428_password(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public byte[] at88sc102_read(int i, int i2) {
        throw new RuntimeException("stub");
    }

    public int at88sc102_write(int i, byte[] bArr, int i2) {
        throw new RuntimeException("stub");
    }

    public int at88sc102_VerifyPassword(int i, byte[] bArr, int i2) {
        throw new RuntimeException("stub");
    }

    public int IccAutoResponse(byte b) {
        throw new RuntimeException("stub");
    }

    public boolean CheckCard102() {
        throw new RuntimeException("stub");
    }

    public boolean ReadDataOf102Card(int i, int i2, int i3, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean WriteDataOf102Card(int i, int i2, int i3, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Verify102UserKey(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Update102UserKey(int i, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean getEzKey(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Verify102EzKey(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean EarseEzData(int i, int i2, int i3) {
        throw new RuntimeException("stub");
    }

    public boolean CheckCard24() {
        throw new RuntimeException("stub");
    }

    public boolean ReadDataOf24Card(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean WriteDataOf24Card(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean CheckCard1608() {
        throw new RuntimeException("stub");
    }

    public boolean ReadDataOf1608Card(int i, int i2, int i3, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean WriteDataOf1608Card(int i, int i2, int i3, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Verify1608ReadKey(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Verify1608WriteKey(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }

    public boolean Get1608ConfigZoneData(int i, int i2, byte[] bArr) {
        throw new RuntimeException("stub");
    }
}
