package jxl.biff.drawing;

/* loaded from: classes2.dex */
class Chunk {
    private byte[] data;
    private int length;
    private int pos;
    private ChunkType type;

    public Chunk(int i, int i2, ChunkType chunkType, byte[] bArr) {
        this.pos = i;
        this.length = i2;
        this.type = chunkType;
        int i3 = this.length;
        this.data = new byte[i3];
        System.arraycopy(bArr, this.pos, this.data, 0, i3);
    }

    public byte[] getData() {
        return this.data;
    }
}
