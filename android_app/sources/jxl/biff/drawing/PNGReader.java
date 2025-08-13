package jxl.biff.drawing;

import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class PNGReader {
    private static byte[] PNG_MAGIC_NUMBER = {-119, 80, 78, 71, 13, 10, 26, 10};
    private int horizontalResolution;
    private Chunk ihdr;
    private Chunk phys;
    private int pixelHeight;
    private int pixelWidth;
    private byte[] pngData;
    private int resolutionUnit;
    private int verticalResolution;

    private int getInt(byte b, byte b2, byte b3, byte b4) {
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    public PNGReader(byte[] bArr) {
        this.pngData = bArr;
    }

    void read() {
        byte[] bArr = new byte[PNG_MAGIC_NUMBER.length];
        System.arraycopy(this.pngData, 0, bArr, 0, bArr.length);
        if (Arrays.equals(PNG_MAGIC_NUMBER, bArr)) {
            int i = 8;
            while (true) {
                byte[] bArr2 = this.pngData;
                if (i >= bArr2.length) {
                    break;
                }
                int i2 = getInt(bArr2[i], bArr2[i + 1], bArr2[i + 2], bArr2[i + 3]);
                byte[] bArr3 = this.pngData;
                ChunkType chunkType = ChunkType.getChunkType(bArr3[i + 4], bArr3[i + 5], bArr3[i + 6], bArr3[i + 7]);
                if (chunkType == ChunkType.IHDR) {
                    this.ihdr = new Chunk(i + 8, i2, chunkType, this.pngData);
                } else if (chunkType == ChunkType.PHYS) {
                    this.phys = new Chunk(i + 8, i2, chunkType, this.pngData);
                }
                i += i2 + 12;
            }
            byte[] data = this.ihdr.getData();
            this.pixelWidth = getInt(data[0], data[1], data[2], data[3]);
            this.pixelHeight = getInt(data[4], data[5], data[6], data[7]);
            Chunk chunk = this.phys;
            if (chunk != null) {
                byte[] data2 = chunk.getData();
                this.resolutionUnit = data2[8];
                this.horizontalResolution = getInt(data2[0], data2[1], data2[2], data2[3]);
                this.verticalResolution = getInt(data2[4], data2[5], data2[6], data2[7]);
            }
        }
    }

    public int getHeight() {
        return this.pixelHeight;
    }

    public int getWidth() {
        return this.pixelWidth;
    }

    public int getHorizontalResolution() {
        if (this.resolutionUnit == 1) {
            return this.horizontalResolution;
        }
        return 0;
    }

    public int getVerticalResolution() {
        if (this.resolutionUnit == 1) {
            return this.verticalResolution;
        }
        return 0;
    }

    public static void main(String[] strArr) {
        try {
            File file = new File(strArr[0]);
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            new PNGReader(bArr).read();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
