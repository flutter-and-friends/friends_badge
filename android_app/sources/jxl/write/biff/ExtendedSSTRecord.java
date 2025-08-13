package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ExtendedSSTRecord extends WritableRecordData {
    private static final int infoRecordSize = 8;
    private int[] absoluteStreamPositions;
    private int currentStringIndex;
    private int numberOfStrings;
    private int[] relativeStreamPositions;

    public ExtendedSSTRecord(int i) {
        super(Type.EXTSST);
        this.currentStringIndex = 0;
        this.numberOfStrings = i;
        int numberOfBuckets = getNumberOfBuckets();
        this.absoluteStreamPositions = new int[numberOfBuckets];
        this.relativeStreamPositions = new int[numberOfBuckets];
        this.currentStringIndex = 0;
    }

    public int getNumberOfBuckets() {
        int numberOfStringsPerBucket = getNumberOfStringsPerBucket();
        if (numberOfStringsPerBucket != 0) {
            return ((this.numberOfStrings + numberOfStringsPerBucket) - 1) / numberOfStringsPerBucket;
        }
        return 0;
    }

    public int getNumberOfStringsPerBucket() {
        return ((this.numberOfStrings + 128) - 1) / 128;
    }

    public void addString(int i, int i2) {
        int[] iArr = this.absoluteStreamPositions;
        int i3 = this.currentStringIndex;
        iArr[i3] = i + i2;
        this.relativeStreamPositions[i3] = i2;
        this.currentStringIndex = i3 + 1;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int numberOfBuckets = getNumberOfBuckets();
        byte[] bArr = new byte[(numberOfBuckets * 8) + 2];
        IntegerHelper.getTwoBytes(getNumberOfStringsPerBucket(), bArr, 0);
        for (int i = 0; i < numberOfBuckets; i++) {
            int i2 = i * 8;
            IntegerHelper.getFourBytes(this.absoluteStreamPositions[i], bArr, i2 + 2);
            IntegerHelper.getTwoBytes(this.relativeStreamPositions[i], bArr, i2 + 6);
        }
        return bArr;
    }
}
