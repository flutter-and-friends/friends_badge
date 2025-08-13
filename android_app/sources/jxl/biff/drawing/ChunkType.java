package jxl.biff.drawing;

import java.util.Arrays;

/* loaded from: classes2.dex */
class ChunkType {

    /* renamed from: id */
    private byte[] f1126id;
    private String name;
    private static ChunkType[] chunkTypes = new ChunkType[0];
    public static ChunkType IHDR = new ChunkType(73, 72, 68, 82, "IHDR");
    public static ChunkType IEND = new ChunkType(73, 69, 78, 68, "IEND");
    public static ChunkType PHYS = new ChunkType(112, 72, 89, 115, "pHYs");
    public static ChunkType UNKNOWN = new ChunkType(255, 255, 255, 255, "UNKNOWN");

    private ChunkType(int i, int i2, int i3, int i4, String str) {
        this.f1126id = new byte[]{(byte) i, (byte) i2, (byte) i3, (byte) i4};
        this.name = str;
        ChunkType[] chunkTypeArr = chunkTypes;
        ChunkType[] chunkTypeArr2 = new ChunkType[chunkTypeArr.length + 1];
        System.arraycopy(chunkTypeArr, 0, chunkTypeArr2, 0, chunkTypeArr.length);
        chunkTypeArr2[chunkTypes.length] = this;
        chunkTypes = chunkTypeArr2;
    }

    public String getName() {
        return this.name;
    }

    public static ChunkType getChunkType(byte b, byte b2, byte b3, byte b4) {
        int i = 0;
        byte[] bArr = {b, b2, b3, b4};
        ChunkType chunkType = UNKNOWN;
        boolean z = false;
        while (true) {
            ChunkType[] chunkTypeArr = chunkTypes;
            if (i >= chunkTypeArr.length || z) {
                break;
            }
            if (Arrays.equals(chunkTypeArr[i].f1126id, bArr)) {
                chunkType = chunkTypes[i];
                z = true;
            }
            i++;
        }
        return chunkType;
    }
}
