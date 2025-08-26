package cn.highlight.work_card_write.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class ImgUtil {
    private static byte plus_truncate_uchar(byte b, int i) {
        int i2 = (b & 255) + i;
        if (i2 < 0) {
            return (byte) 0;
        }
        if (i2 > 255) {
            return (byte) -1;
        }
        return (byte) (b + i);
    }

    public static Bitmap getImageFromAssetsFile(Context context, String str) throws IOException {
        Bitmap bitmapDecodeStream = null;
        try {
            InputStream inputStreamOpen = context.getResources().getAssets().open(str);
            bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
            inputStreamOpen.close();
            return bitmapDecodeStream;
        } catch (IOException e) {
            e.printStackTrace();
            return bitmapDecodeStream;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[][] gray2Binary(android.graphics.Bitmap r5, java.lang.String r6) {
        /*
            r0 = 0
            byte[][] r0 = (byte[][]) r0
            int r1 = r6.hashCode()
            r2 = 1290700(0x13b1cc, float:1.808656E-39)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L2d
            r2 = 40044118(0x2630656, float:1.6679144E-37)
            if (r1 == r2) goto L23
            r2 = 1241408302(0x49fe632e, float:2083941.8)
            if (r1 == r2) goto L19
            goto L37
        L19:
            java.lang.String r1 = "黑白红黄"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L37
            r6 = 2
            goto L38
        L23:
            java.lang.String r1 = "黑白红"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L37
            r6 = 1
            goto L38
        L2d:
            java.lang.String r1 = "黑白"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L37
            r6 = 0
            goto L38
        L37:
            r6 = -1
        L38:
            if (r6 == 0) goto L49
            if (r6 == r4) goto L44
            if (r6 == r3) goto L3f
            goto L4d
        L3f:
            byte[][] r0 = gray2Binary_BWYR(r5)
            goto L4d
        L44:
            byte[][] r0 = gray2Binary_BWR(r5)
            goto L4d
        L49:
            byte[][] r0 = gray2Binary_BW(r5)
        L4d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.ImgUtil.gray2Binary(android.graphics.Bitmap, java.lang.String):byte[][]");
    }

    public static byte[][] gray2Binary_BW(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int i2 = i % 8;
        int i3 = i / 8;
        if (i2 != 0) {
            i3++;
        }
        byte[] bArr = new byte[i3];
        int i4 = i / 8;
        if (i2 != 0) {
            i4++;
        }
        byte[] bArr2 = new byte[i4];
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                int pixel = bitmapCopy.getPixel(i6, i5);
                int i7 = (16711680 & pixel) >> 16;
                int i8 = (65280 & pixel) >> 8;
                int i9 = pixel & 255;
                int i10 = ((int) (((((double) ((float) i7)) * 0.3d) + (((double) ((float) i8)) * 0.59d)) + (((double) ((float) i9)) * 0.11d))) <= 95 ? 1 : 0;
                int i11 = (i7 <= 95 || i8 >= 95 || i9 >= 95) ? 0 : 1;
                int i12 = ((((i6 / 8) * height) + height) - 1) - i5;
                bArr[i12] = (byte) ((bArr[i12] << 1) | i10);
                bArr2[i12] = (byte) (i11 | (bArr2[i12] << 1));
            }
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) byte.class, 2, bArr.length);
        bArr3[0] = bArr;
        bArr3[1] = bArr2;
        return bArr3;
    }

    public static byte[][] gray2Binary_BWR(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int i2 = i % 8;
        int i3 = i / 8;
        if (i2 != 0) {
            i3++;
        }
        byte[] bArr = new byte[i3];
        int i4 = i / 8;
        if (i2 != 0) {
            i4++;
        }
        byte[] bArr2 = new byte[i4];
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                int pixel = bitmapCopy.getPixel(i6, i5);
                int i7 = (16711680 & pixel) >> 16;
                int i8 = (65280 & pixel) >> 8;
                int i9 = pixel & 255;
                int i10 = ((int) (((((double) ((float) i7)) * 0.3d) + (((double) ((float) i8)) * 0.59d)) + (((double) ((float) i9)) * 0.11d))) <= 95 ? 0 : 1;
                int i11 = (i7 <= 95 || i8 >= 95 || i9 >= 95) ? 0 : 1;
                int i12 = ((((i6 / 8) * height) + height) - 1) - i5;
                bArr[i12] = (byte) ((bArr[i12] << 1) | i10);
                bArr2[i12] = (byte) (i11 | (bArr2[i12] << 1));
            }
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) byte.class, 2, bArr.length);
        bArr3[0] = bArr;
        bArr3[1] = bArr2;
        return bArr3;
    }

    public static byte[][] gray2Binary_BWYR(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int i2 = i % 4;
        int i3 = i / 4;
        if (i2 != 0) {
            i3++;
        }
        byte[] bArr = new byte[i3];
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        for (int i4 = 0; i4 < height; i4++) {
            for (int i5 = 0; i5 < width; i5++) {
                int pixel = bitmapCopy.getPixel(i5, i4);
                int i6 = (16711680 & pixel) >> 16;
                int i7 = (65280 & pixel) >> 8;
                int i8 = pixel & 255;
                int i9 = ((int) (((((double) ((float) i6)) * 0.3d) + (((double) ((float) i7)) * 0.59d)) + (((double) ((float) i8)) * 0.11d))) <= 95 ? 0 : 1;
                if (i6 > 95 && i7 < 95 && i8 < 95) {
                    i9 = 3;
                }
                if (i6 > 95 && i7 > 95 && i8 < 95) {
                    i9 = 2;
                }
                int i10 = ((i5 / 4) * height) + i4;
                bArr[i10] = (byte) ((bArr[i10] << 2) | i9);
            }
        }
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, 1, bArr.length);
        bArr2[0] = bArr;
        return bArr2;
    }

    public static byte[][] gray2Binary_2(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int i2 = i % 8;
        int i3 = i / 8;
        if (i2 != 0) {
            i3++;
        }
        byte[] bArr = new byte[i3];
        int i4 = i / 8;
        if (i2 != 0) {
            i4++;
        }
        byte[] bArr2 = new byte[i4];
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                int pixel = bitmapCopy.getPixel(i6, i5);
                int i7 = (16711680 & pixel) >> 16;
                int i8 = (65280 & pixel) >> 8;
                int i9 = pixel & 255;
                int i10 = ((int) (((((double) ((float) i7)) * 0.3d) + (((double) ((float) i8)) * 0.59d)) + (((double) ((float) i9)) * 0.11d))) <= 120 ? 0 : 1;
                int i11 = (i7 <= 120 || i8 >= 120 || i9 >= 120) ? 0 : 1;
                int i12 = ((((i6 / 8) * height) + height) - 1) - i5;
                bArr[i12] = (byte) ((bArr[i12] << 1) | i10);
                bArr2[i12] = (byte) (i11 | (bArr2[i12] << 1));
            }
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) byte.class, 2, bArr.length);
        bArr3[0] = bArr;
        bArr3[1] = bArr2;
        return bArr3;
    }

    public static Bitmap adjustPhotoRotation(Bitmap bitmap, int i) {
        float height;
        float width;
        Matrix matrix = new Matrix();
        matrix.setRotate(i, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        if (i == 90) {
            height = bitmap.getHeight();
            width = 0.0f;
        } else {
            height = bitmap.getHeight();
            width = bitmap.getWidth();
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        matrix.postTranslate(height - fArr[2], width - fArr[5]);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, new Paint());
        return bitmapCreateBitmap;
    }

    public static byte[] floydSteinberg(Bitmap bitmap, int i, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        RGBTriple[][] rGBTripleArr = (RGBTriple[][]) Array.newInstance((Class<?>) RGBTriple.class, width, height);
        for (int i2 = 0; i2 < width; i2++) {
            for (int i3 = 0; i3 < height; i3++) {
                int pixel = bitmap.getPixel(i2, i3);
                rGBTripleArr[i2][i3] = new RGBTriple(Color.red(pixel), Color.green(pixel), Color.blue(pixel));
            }
        }
        bitmap.getConfig();
        int i4 = width % 4;
        int i5 = (width * 3) + i4;
        byte[][] bArrFloydSteinbergDither = floydSteinbergDither(rGBTripleArr, getPalette(i), z);
        byte[] bArr = new byte[(width * height * 3) + (i4 * height)];
        int i6 = height - 1;
        int i7 = 0;
        while (i7 < height) {
            int i8 = 0;
            int i9 = 0;
            while (i8 < width) {
                if (bArrFloydSteinbergDither[i8][i7] == 0) {
                    int i10 = (i6 * i5) + i9;
                    bArr[i10] = 0;
                    bArr[i10 + 1] = 0;
                    bArr[i10 + 2] = 0;
                } else if (bArrFloydSteinbergDither[i8][i7] == 1) {
                    int i11 = (i6 * i5) + i9;
                    bArr[i11] = -1;
                    bArr[i11 + 1] = -1;
                    bArr[i11 + 2] = -1;
                } else if (bArrFloydSteinbergDither[i8][i7] == 2 && i == 1) {
                    int i12 = (i6 * i5) + i9;
                    bArr[i12] = 0;
                    bArr[i12 + 1] = 0;
                    bArr[i12 + 2] = -1;
                } else if (bArrFloydSteinbergDither[i8][i7] == 2 && i == 2) {
                    int i13 = (i6 * i5) + i9;
                    bArr[i13] = -1;
                    bArr[i13 + 1] = -1;
                    bArr[i13 + 2] = 0;
                }
                i8++;
                i9 += 3;
            }
            i7++;
            i6--;
        }
        return bArr;
    }

    private static byte findNearestColor(RGBTriple rGBTriple, RGBTriple[] rGBTripleArr) {
        byte b = 0;
        int i = 195076;
        for (byte b2 = 0; b2 < rGBTripleArr.length; b2 = (byte) (b2 + 1)) {
            int i2 = (rGBTriple.channels[0] & 255) - (rGBTripleArr[b2].channels[0] & 255);
            int i3 = (rGBTriple.channels[1] & 255) - (rGBTripleArr[b2].channels[1] & 255);
            int i4 = (rGBTriple.channels[2] & 255) - (rGBTripleArr[b2].channels[2] & 255);
            int i5 = (i2 * i2) + (i3 * i3) + (i4 * i4);
            if (i5 < i) {
                b = b2;
                i = i5;
            }
        }
        return b;
    }

    public static class RGBTriple {
        public final byte[] channels;

        public RGBTriple(int i, int i2, int i3) {
            this.channels = new byte[]{(byte) i, (byte) i2, (byte) i3};
        }
    }

    public static byte[][] floydSteinbergDither(RGBTriple[][] rGBTripleArr, RGBTriple[] rGBTripleArr2, boolean z) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, rGBTripleArr.length, rGBTripleArr[0].length);
        for (int i = 0; i < rGBTripleArr.length; i++) {
            for (int i2 = 0; i2 < rGBTripleArr[i].length; i2++) {
                RGBTriple rGBTriple = rGBTripleArr[i][i2];
                byte bFindNearestColor = findNearestColor(rGBTriple, rGBTripleArr2);
                bArr[i][i2] = bFindNearestColor;
                if (!z) {
                    for (int i3 = 0; i3 < 3; i3++) {
                        int i4 = (rGBTriple.channels[i3] & 255) - (rGBTripleArr2[bFindNearestColor].channels[i3] & 255);
                        int i5 = i2 + 1;
                        if (i5 < rGBTripleArr[0].length) {
                            rGBTripleArr[i][i5].channels[i3] = plus_truncate_uchar(rGBTripleArr[i][i5].channels[i3], (i4 * 7) >> 4);
                        }
                        int i6 = i + 1;
                        if (i6 < rGBTripleArr.length) {
                            int i7 = i2 - 1;
                            if (i7 > 0) {
                                rGBTripleArr[i6][i7].channels[i3] = plus_truncate_uchar(rGBTripleArr[i6][i7].channels[i3], (i4 * 3) >> 4);
                            }
                            rGBTripleArr[i6][i2].channels[i3] = plus_truncate_uchar(rGBTripleArr[i6][i2].channels[i3], (i4 * 5) >> 4);
                            if (i5 < rGBTripleArr[0].length) {
                                rGBTripleArr[i6][i5].channels[i3] = plus_truncate_uchar(rGBTripleArr[i6][i5].channels[i3], i4 >> 4);
                            }
                        }
                    }
                }
            }
        }
        return bArr;
    }

    public static RGBTriple[] getPalette(int i) {
        return i == 1 ? new RGBTriple[]{new RGBTriple(0, 0, 0), new RGBTriple(255, 255, 255), new RGBTriple(255, 0, 0)} : i == 2 ? new RGBTriple[]{new RGBTriple(0, 0, 0), new RGBTriple(255, 255, 255), new RGBTriple(255, 255, 0)} : new RGBTriple[]{new RGBTriple(0, 0, 0), new RGBTriple(255, 255, 255)};
    }
}
