package cn.highlight.work_card_write.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import cn.highlight.p004tx.usb.FtdiSerialDriver;

/* loaded from: classes.dex */
public class EPaperPicture {
    private static int[] curPal;
    private static Bitmap dstBmp;
    private static int dstH;
    private static int dstW;
    private static int[][] palettes = {new int[]{ViewCompat.MEASURED_STATE_MASK, -1}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, SupportMenu.CATEGORY_MASK}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, -7829368}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, -7829368, SupportMenu.CATEGORY_MASK}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, -256}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, -256, SupportMenu.CATEGORY_MASK}, new int[]{ViewCompat.MEASURED_STATE_MASK, -1, -16711936, -16776961, SupportMenu.CATEGORY_MASK, -256, -32768}};
    private static Bitmap srcBmp;
    private static int srcH;
    private static int srcW;

    private static boolean isCloseToYellow(int i, int i2, int i3) {
        return i > 250 && i2 > 250 && i3 < 10;
    }

    private static double getErr(double d, double d2, double d3, int i) {
        double dRed = d - Color.red(i);
        double dGreen = d2 - Color.green(i);
        double dBlue = d3 - Color.blue(i);
        return (dRed * dRed) + (dGreen * dGreen) + (dBlue * dBlue);
    }

    private static int getNear(double d, double d2, double d3) {
        int i = 0;
        double err = getErr(d, d2, d3, curPal[0]);
        int i2 = 1;
        while (true) {
            int[] iArr = curPal;
            if (i2 >= iArr.length) {
                return i;
            }
            double err2 = getErr(d, d2, d3, iArr[i2]);
            if (err2 < err) {
                i = i2;
                err = err2;
            }
            i2++;
        }
    }

    private static int getNear(int i) {
        return getNear(Color.red(i), Color.green(i), Color.blue(i));
    }

    private static void addVal(double[] dArr, int i, double d, double d2, double d3, double d4) {
        int i2 = i * 3;
        dArr[i2] = ((d * d4) / 16.0d) + dArr[i2];
        int i3 = i2 + 1;
        dArr[i3] = ((d2 * d4) / 16.0d) + dArr[i3];
        int i4 = i2 + 2;
        dArr[i4] = ((d3 * d4) / 16.0d) + dArr[i4];
    }

    private static int nearColor(int i, int i2) {
        if (i >= srcW || i2 >= srcH) {
            return curPal[(i + i2) % 2 == 0 ? (char) 1 : (char) 0];
        }
        return curPal[getNear(srcBmp.getPixel(i, i2))];
    }

    public static Bitmap createIndexedImage(Bitmap bitmap, boolean z, int i, int i2, int i3) {
        double d;
        int i4;
        srcBmp = bitmap;
        dstBmp = Bitmap.createBitmap(i, i2, srcBmp.getConfig());
        curPal = palettes[i3];
        dstW = dstBmp.getWidth();
        dstH = dstBmp.getHeight();
        srcW = srcBmp.getWidth();
        srcH = srcBmp.getHeight();
        int i5 = srcW;
        int i6 = srcH;
        int[] iArr = new int[i5 * i6];
        int[] iArr2 = new int[dstW * dstH];
        srcBmp.getPixels(iArr, 0, i5, 0, 0, i5, i6);
        if (z) {
            int i7 = 0;
            int i8 = 0;
            while (i7 < dstH) {
                int i9 = i8;
                int i10 = 0;
                while (i10 < dstW) {
                    iArr2[i9] = nearColor(i10, i7);
                    i10++;
                    i9++;
                }
                i7++;
                i8 = i9;
            }
        } else {
            int i11 = dstW;
            int i12 = 1;
            double[][] dArr = {new double[i11 * 3], new double[i11 * 3]};
            int i13 = 0;
            while (true) {
                d = 0.0d;
                if (i13 >= dstW) {
                    break;
                }
                int i14 = i13 * 3;
                dArr[1][i14] = 0.0d;
                dArr[1][i14 + 1] = 0.0d;
                dArr[1][i14 + 2] = 0.0d;
                i13++;
            }
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            while (i15 < dstH) {
                if (i15 >= srcH) {
                    int i18 = i17;
                    int i19 = 0;
                    while (i19 < dstW) {
                        iArr2[i18] = curPal[(i19 + i15) % 2 == 0 ? (char) 1 : (char) 0];
                        i19++;
                        i18++;
                    }
                    i17 = i18;
                } else {
                    int i20 = (i16 + 1) & i12;
                    for (int i21 = 0; i21 < dstW; i21++) {
                        int i22 = i21 * 3;
                        dArr[i16][i22] = d;
                        dArr[i16][i22 + 1] = d;
                        dArr[i16][i22 + 2] = d;
                    }
                    int i23 = i17;
                    int i24 = 0;
                    while (i24 < dstW) {
                        int i25 = srcW;
                        if (i24 >= i25) {
                            int i26 = i23 + 1;
                            iArr2[i23] = curPal[(i24 + i15) % 2 == 0 ? (char) 1 : (char) 0];
                            i4 = i16;
                            i23 = i26;
                        } else {
                            int i27 = iArr[(i25 * i15) + i24];
                            int i28 = i24 * 3;
                            double dRed = Color.red(i27) + dArr[i20][i28];
                            double dGreen = Color.green(i27) + dArr[i20][i28 + 1];
                            i4 = i16;
                            double dBlue = Color.blue(i27) + dArr[i20][i28 + 2];
                            int i29 = i23 + 1;
                            iArr2[i23] = curPal[getNear(dRed, dGreen, dBlue)];
                            double dRed2 = dRed - Color.red(r1);
                            double dGreen2 = dGreen - Color.green(r1);
                            double dBlue2 = dBlue - Color.blue(r1);
                            if (i24 == 0) {
                                addVal(dArr[i4], i24, dRed2, dGreen2, dBlue2, 7.0d);
                                int i30 = i24 + 1;
                                addVal(dArr[i4], i30, dRed2, dGreen2, dBlue2, 2.0d);
                                addVal(dArr[i20], i30, dRed2, dGreen2, dBlue2, 7.0d);
                            } else if (i24 == dstW - 1) {
                                addVal(dArr[i4], i24 - 1, dRed2, dGreen2, dBlue2, 7.0d);
                                addVal(dArr[i4], i24, dRed2, dGreen2, dBlue2, 9.0d);
                            } else {
                                addVal(dArr[i4], i24 - 1, dRed2, dGreen2, dBlue2, 3.0d);
                                addVal(dArr[i4], i24, dRed2, dGreen2, dBlue2, 5.0d);
                                int i31 = i24 + 1;
                                addVal(dArr[i4], i31, dRed2, dGreen2, dBlue2, 1.0d);
                                addVal(dArr[i20], i31, dRed2, dGreen2, dBlue2, 7.0d);
                            }
                            i23 = i29;
                        }
                        i24++;
                        i16 = i4;
                    }
                    i16 = i20;
                    i17 = i23;
                }
                i15++;
                i12 = 1;
                d = 0.0d;
            }
        }
        Bitmap bitmap2 = dstBmp;
        int i32 = dstW;
        bitmap2.setPixels(iArr2, 0, i32, 0, 0, i32, dstH);
        return dstBmp;
    }

    public static Bitmap createIndexedImage2(Bitmap bitmap, int i, int i2, int i3) {
        double d;
        int i4;
        double[][] dArr;
        double[][] dArr2;
        srcBmp = bitmap;
        dstBmp = Bitmap.createBitmap(i, i2, srcBmp.getConfig());
        curPal = palettes[i3];
        dstW = dstBmp.getWidth();
        dstH = dstBmp.getHeight();
        srcW = srcBmp.getWidth();
        srcH = srcBmp.getHeight();
        int i5 = srcW;
        int i6 = srcH;
        int[] iArr = new int[i5 * i6];
        int[] iArr2 = new int[dstW * dstH];
        srcBmp.getPixels(iArr, 0, i5, 0, 0, i5, i6);
        int i7 = 2;
        int i8 = dstW;
        int i9 = 1;
        double[][] dArr3 = {new double[i8 * 3], new double[i8 * 3]};
        int i10 = 0;
        while (true) {
            d = 0.0d;
            if (i10 >= dstW) {
                break;
            }
            int i11 = i10 * 3;
            dArr3[1][i11] = 0.0d;
            dArr3[1][i11 + 1] = 0.0d;
            dArr3[1][i11 + 2] = 0.0d;
            i10++;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i4 = dstH;
            if (i12 >= i4) {
                break;
            }
            if (i12 >= srcH) {
                int i15 = i14;
                int i16 = 0;
                while (i16 < dstW) {
                    iArr2[i15] = curPal[(i16 + i12) % i7 == 0 ? (char) 1 : (char) 0];
                    i16++;
                    i15++;
                }
                dArr = dArr3;
                i14 = i15;
            } else {
                int i17 = (i13 + 1) & i9;
                for (int i18 = 0; i18 < dstW; i18++) {
                    int i19 = i18 * 3;
                    dArr3[i13][i19] = d;
                    dArr3[i13][i19 + 1] = d;
                    dArr3[i13][i19 + i7] = d;
                }
                int i20 = i14;
                int i21 = 0;
                while (i21 < dstW) {
                    int i22 = srcW;
                    if (i21 >= i22) {
                        int i23 = i20 + 1;
                        iArr2[i20] = curPal[(i21 + i12) % i7 == 0 ? (char) 1 : (char) 0];
                        dArr2 = dArr3;
                        i20 = i23;
                    } else {
                        int i24 = iArr[(i22 * i12) + i21];
                        int i25 = i21 * 3;
                        double dRed = Color.red(i24) + dArr3[i17][i25];
                        double dGreen = Color.green(i24) + dArr3[i17][i25 + 1];
                        double dBlue = Color.blue(i24) + dArr3[i17][i25 + 2];
                        int i26 = i20 + 1;
                        iArr2[i20] = curPal[getNear(dRed, dGreen, dBlue)];
                        dArr2 = dArr3;
                        double dRed2 = dRed - Color.red(r13);
                        double dGreen2 = dGreen - Color.green(r13);
                        double dBlue2 = dBlue - Color.blue(r13);
                        if (i21 == 0) {
                            addVal(dArr2[i13], i21, dRed2, dGreen2, dBlue2, 9.0d);
                            int i27 = i21 + 1;
                            addVal(dArr2[i13], i27, dRed2, dGreen2, dBlue2, 3.0d);
                            addVal(dArr2[i17], i27, dRed2, dGreen2, dBlue2, 4.0d);
                        } else if (i21 == dstW - 1) {
                            addVal(dArr2[i13], i21 - 1, dRed2, dGreen2, dBlue2, 3.0d);
                            addVal(dArr2[i13], i21, dRed2, dGreen2, dBlue2, 9.0d);
                        } else {
                            addVal(dArr2[i13], i21 - 1, dRed2, dGreen2, dBlue2, 2.0d);
                            addVal(dArr2[i13], i21, dRed2, dGreen2, dBlue2, 5.0d);
                            int i28 = i21 + 1;
                            addVal(dArr2[i13], i28, dRed2, dGreen2, dBlue2, 2.0d);
                            addVal(dArr2[i17], i28, dRed2, dGreen2, dBlue2, 4.0d);
                        }
                        i20 = i26;
                    }
                    i21++;
                    dArr3 = dArr2;
                    i7 = 2;
                }
                dArr = dArr3;
                i13 = i17;
                i14 = i20;
            }
            i12++;
            dArr3 = dArr;
            i7 = 2;
            i9 = 1;
            d = 0.0d;
        }
        Bitmap bitmap2 = dstBmp;
        int i29 = dstW;
        bitmap2.setPixels(iArr2, 0, i29, 0, 0, i29, i4);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dstBmp.getWidth(), dstBmp.getHeight(), dstBmp.getConfig());
        for (int i30 = 0; i30 < dstW; i30++) {
            for (int i31 = 0; i31 < dstH; i31++) {
                int pixel = dstBmp.getPixel(i30, i31);
                int iRed = Color.red(pixel);
                int iGreen = Color.green(pixel);
                int iBlue = Color.blue(pixel);
                if (isCloseToYellow(iRed, iGreen, iBlue)) {
                    if (iBlue <= 0) {
                        iBlue = 0;
                    }
                    bitmapCreateBitmap.setPixel(i30, i31, Color.rgb(255, NDCMD.f108A5, iBlue));
                } else {
                    bitmapCreateBitmap.setPixel(i30, i31, pixel);
                }
            }
        }
        return bitmapCreateBitmap;
    }

    public int getVal(int i) {
        int iRed = Color.red(i);
        int iBlue = Color.blue(i);
        if (iRed == 255 && iBlue == 255) {
            return 1;
        }
        if (iRed == 127 && iBlue == 127) {
            return 2;
        }
        return (iRed == 255 && iBlue == 0) ? 3 : 0;
    }

    public int getVal_7color(int i) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        if (iRed == 0 && iGreen == 0 && iBlue == 0) {
            return 0;
        }
        if (iRed == 255 && iGreen == 255 && iBlue == 255) {
            return 1;
        }
        if (iRed == 0 && iGreen == 255 && iBlue == 0) {
            return 2;
        }
        if (iRed == 0 && iGreen == 0 && iBlue == 255) {
            return 3;
        }
        if (iRed == 255 && iGreen == 0 && iBlue == 0) {
            return 4;
        }
        if (iRed == 255 && iGreen == 255 && iBlue == 0) {
            return 5;
        }
        return (iRed == 255 && iGreen == 128 && iBlue == 0) ? 6 : 7;
    }

    public static Bitmap toGrayscale(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap toBlackWhiteRed(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int pixel = bitmap.getPixel(i2, i);
                int iRed = (int) ((Color.red(pixel) * 0.299d) + (Color.green(pixel) * 0.587d) + (Color.blue(pixel) * 0.114d));
                bitmapCreateBitmap.setPixel(i2, i, iRed < 192 ? ViewCompat.MEASURED_STATE_MASK : iRed < 255 ? -1 : SupportMenu.CATEGORY_MASK);
            }
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap convertToBlackWhiteRed(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        for (int i = 0; i < bitmap.getWidth(); i++) {
            for (int i2 = 0; i2 < bitmap.getHeight(); i2++) {
                int pixel = bitmap.getPixel(i, i2);
                int iRed = (int) ((Color.red(pixel) * 0.299d) + (Color.green(pixel) * 0.587d) + (Color.blue(pixel) * 0.114d));
                int iRgb = Color.rgb(iRed, iRed, iRed);
                if (Color.red(iRgb) != 0 && Color.red(iRgb) != 255) {
                    iRgb = SupportMenu.CATEGORY_MASK;
                }
                bitmapCreateBitmap.setPixel(i, i2, iRgb);
            }
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap toBlackWhiteRedYellow(Bitmap bitmap) {
        int iArgb;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int pixel = bitmap.getPixel(i2, i);
                int iRed = (int) ((Color.red(pixel) * 0.299d) + (Color.green(pixel) * 0.587d) + (Color.blue(pixel) * 0.114d));
                if (iRed < 64) {
                    iArgb = ViewCompat.MEASURED_STATE_MASK;
                } else if (iRed < 128) {
                    iArgb = Color.argb(255, (int) (((iRed - 64) / 63.0f) * 255.0f), 0, 0);
                } else if (iRed < 192) {
                    iArgb = Color.argb(255, (int) (((FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE - iRed) / 64.0f) * 255.0f), (int) (((iRed - 128) / 64.0f) * 255.0f), 0);
                } else {
                    iArgb = Color.argb(255, (int) (((255 - iRed) / 63.0f) * 255.0f), 0, 0);
                }
                bitmapCreateBitmap.setPixel(i2, i, iArgb);
            }
        }
        return bitmapCreateBitmap;
    }
}
