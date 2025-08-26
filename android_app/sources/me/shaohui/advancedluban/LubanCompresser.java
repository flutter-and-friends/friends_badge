package me.shaohui.advancedluban;

import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p024rx.Observable;
import p024rx.functions.FuncN;
import p024rx.schedulers.Schedulers;

/* loaded from: classes2.dex */
class LubanCompresser {
    private static final String TAG = "Luban Compress";
    private ByteArrayOutputStream mByteArrayOutputStream;
    private final LubanBuilder mLuban;

    LubanCompresser(LubanBuilder lubanBuilder) {
        this.mLuban = lubanBuilder;
    }

    Observable<File> singleAction(final File file) {
        return Observable.fromCallable(new Callable<File>() { // from class: me.shaohui.advancedluban.LubanCompresser.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public File call() throws Exception {
                LubanCompresser lubanCompresser = LubanCompresser.this;
                return lubanCompresser.compressImage(lubanCompresser.mLuban.gear, file);
            }
        }).subscribeOn(Schedulers.computation());
    }

    Observable<List<File>> multiAction(List<File> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (final File file : list) {
            arrayList.add(Observable.fromCallable(new Callable<File>() { // from class: me.shaohui.advancedluban.LubanCompresser.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public File call() throws Exception {
                    LubanCompresser lubanCompresser = LubanCompresser.this;
                    return lubanCompresser.compressImage(lubanCompresser.mLuban.gear, file);
                }
            }));
        }
        return Observable.zip(arrayList, new FuncN<List<File>>() { // from class: me.shaohui.advancedluban.LubanCompresser.3
            @Override // p024rx.functions.FuncN
            public List<File> call(Object... objArr) {
                ArrayList arrayList2 = new ArrayList(objArr.length);
                for (Object obj : objArr) {
                    arrayList2.add((File) obj);
                }
                return arrayList2;
            }
        }).subscribeOn(Schedulers.computation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File compressImage(int i, File file) throws IOException {
        if (i == 1) {
            return firstCompress(file);
        }
        if (i != 3) {
            return i != 4 ? file : customCompress(file);
        }
        return thirdCompress(file);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0072 A[PHI: r0 r4
      0x0072: PHI (r0v27 int) = (r0v26 int), (r0v2 int) binds: [B:33:0x0095, B:27:0x0070] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r4v14 int) = (r4v13 int), (r4v2 int) binds: [B:33:0x0095, B:27:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0123 A[PHI: r0 r4
      0x0123: PHI (r0v13 int) = (r0v5 int), (r0v10 int), (r0v22 int) binds: [B:64:0x0121, B:61:0x0101, B:46:0x00cb] A[DONT_GENERATE, DONT_INLINE]
      0x0123: PHI (r4v5 int) = (r4v3 int), (r4v4 int), (r4v11 int) binds: [B:64:0x0121, B:61:0x0101, B:46:0x00cb] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.io.File thirdCompress(java.io.File r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: me.shaohui.advancedluban.LubanCompresser.thirdCompress(java.io.File):java.io.File");
    }

    private File firstCompress(File file) throws IOException {
        long j;
        int i;
        int i2;
        int i3;
        char c;
        int i4;
        int i5;
        String cacheFilePath = getCacheFilePath();
        String absolutePath = file.getAbsolutePath();
        long length = file.length() / 5;
        int imageSpinAngle = getImageSpinAngle(absolutePath);
        int[] imageSize = getImageSize(absolutePath);
        int i6 = imageSize[0];
        int i7 = imageSize[1];
        int i8 = PropertyID.UPCA_ENABLE;
        if (i6 <= i7) {
            double d = imageSize[0] / imageSize[1];
            if (d <= 1.0d && d > 0.5625d) {
                int i9 = imageSize[0] > 1280 ? PropertyID.UPCA_ENABLE : imageSize[0];
                length = 60;
                int i10 = i9;
                i5 = (imageSize[1] * i9) / imageSize[0];
                i4 = i10;
            } else if (d <= 0.5625d) {
                i5 = imageSize[1] > 720 ? 720 : imageSize[1];
                i4 = (imageSize[0] * i5) / imageSize[1];
            } else {
                length = 0;
                i4 = 0;
                i5 = 0;
            }
            long j2 = length;
            i = i4;
            i2 = i5;
            j = j2;
        } else {
            double d2 = imageSize[1] / imageSize[0];
            if (d2 <= 1.0d && d2 > 0.5625d) {
                if (imageSize[1] <= 1280) {
                    i8 = imageSize[1];
                }
                i = (imageSize[0] * i8) / imageSize[1];
                j = 60;
                i2 = i8;
            } else if (d2 <= 0.5625d) {
                if (imageSize[0] > 720) {
                    c = 1;
                    i3 = 720;
                } else {
                    i3 = imageSize[0];
                    c = 1;
                }
                i2 = (imageSize[c] * i3) / imageSize[0];
                j = length;
                i = i3;
            } else {
                j = 0;
                i = 0;
                i2 = 0;
            }
        }
        return compress(absolutePath, cacheFilePath, i, i2, imageSpinAngle, j);
    }

    private File customCompress(File file) throws IOException {
        String cacheFilePath = getCacheFilePath();
        String absolutePath = file.getAbsolutePath();
        int imageSpinAngle = getImageSpinAngle(absolutePath);
        long length = (this.mLuban.maxSize <= 0 || ((long) this.mLuban.maxSize) >= file.length() / 1024) ? file.length() / 1024 : this.mLuban.maxSize;
        int[] imageSize = getImageSize(absolutePath);
        int iMin = imageSize[0];
        int iMin2 = imageSize[1];
        if (this.mLuban.maxSize > 0 && this.mLuban.maxSize < file.length() / 1024.0f) {
            float fSqrt = (float) Math.sqrt((file.length() / 1024.0f) / this.mLuban.maxSize);
            iMin = (int) (iMin / fSqrt);
            iMin2 = (int) (iMin2 / fSqrt);
        }
        if (this.mLuban.maxWidth > 0) {
            iMin = Math.min(iMin, this.mLuban.maxWidth);
        }
        if (this.mLuban.maxHeight > 0) {
            iMin2 = Math.min(iMin2, this.mLuban.maxHeight);
        }
        float fMin = Math.min(iMin / imageSize[0], iMin2 / imageSize[1]);
        return (((float) this.mLuban.maxSize) <= ((float) file.length()) / 1024.0f || fMin != 1.0f) ? compress(absolutePath, cacheFilePath, (int) (imageSize[0] * fMin), (int) (imageSize[1] * fMin), imageSpinAngle, length) : file;
    }

    private String getCacheFilePath() {
        StringBuilder sb = new StringBuilder("Luban_" + System.currentTimeMillis());
        if (this.mLuban.compressFormat == Bitmap.CompressFormat.WEBP) {
            sb.append(".webp");
        } else {
            sb.append(".jpg");
        }
        return this.mLuban.cacheDir.getAbsolutePath() + File.separator + ((Object) sb);
    }

    public static int[] getImageSize(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeFile(str, options);
        return new int[]{options.outWidth, options.outHeight};
    }

    private Bitmap compress(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i3 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        while (true) {
            if (i4 / i3 <= i2 && i5 / i3 <= i) {
                options.inSampleSize = i3;
                options.inJustDecodeBounds = false;
                return BitmapFactory.decodeFile(str, options);
            }
            i3 *= 2;
        }
    }

    private int getImageSpinAngle(String str) throws IOException {
        int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt == 6) {
            return 90;
        }
        if (attributeInt != 8) {
            return 0;
        }
        return PropertyID.CHARACTER_DATA_DELAY;
    }

    private File compress(String str, String str2, int i, int i2, int i3, long j) throws IOException {
        return saveImage(str2, rotatingImage(i3, compress(str, i, i2)), j);
    }

    private static Bitmap rotatingImage(int i, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private File saveImage(String str, Bitmap bitmap, long j) throws IOException {
        Preconditions.checkNotNull(bitmap, "Luban Compressbitmap cannot be null");
        File file = new File(str.substring(0, str.lastIndexOf("/")));
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = this.mByteArrayOutputStream;
        if (byteArrayOutputStream == null) {
            this.mByteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight());
        } else {
            byteArrayOutputStream.reset();
        }
        int i = 100;
        bitmap.compress(this.mLuban.compressFormat, 100, this.mByteArrayOutputStream);
        while (this.mByteArrayOutputStream.size() / 1024 > j && i > 6) {
            this.mByteArrayOutputStream.reset();
            i -= 6;
            bitmap.compress(this.mLuban.compressFormat, i, this.mByteArrayOutputStream);
        }
        bitmap.recycle();
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        this.mByteArrayOutputStream.writeTo(fileOutputStream);
        fileOutputStream.close();
        return new File(str);
    }
}
