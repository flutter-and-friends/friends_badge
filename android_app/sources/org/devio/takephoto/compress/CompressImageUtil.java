package org.devio.takephoto.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.devio.takephoto.uitl.TFileUtils;

/* loaded from: classes2.dex */
public class CompressImageUtil {
    private CompressConfig config;
    private Context context;
    Handler mhHandler = new Handler();

    public interface CompressListener {
        void onCompressFailed(String str, String str2);

        void onCompressSuccess(String str);
    }

    public CompressImageUtil(Context context, CompressConfig compressConfig) {
        this.context = context;
        this.config = compressConfig == null ? CompressConfig.ofDefaultConfig() : compressConfig;
    }

    public void compress(String str, CompressListener compressListener) {
        if (this.config.isEnablePixelCompress()) {
            try {
                compressImageByPixel(str, compressListener);
                return;
            } catch (FileNotFoundException e) {
                compressListener.onCompressFailed(str, String.format("图片压缩失败,%s", e.toString()));
                e.printStackTrace();
                return;
            }
        }
        compressImageByQuality(BitmapFactory.decodeFile(str), str, compressListener);
    }

    private void compressImageByQuality(final Bitmap bitmap, final String str, final CompressListener compressListener) {
        if (bitmap == null) {
            sendMsg(false, str, "像素压缩失败,bitmap is null", compressListener);
        } else {
            new Thread(new Runnable() { // from class: org.devio.takephoto.compress.CompressImageUtil.1
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    int i = 100;
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                    while (byteArrayOutputStream.toByteArray().length > CompressImageUtil.this.config.getMaxSize()) {
                        byteArrayOutputStream.reset();
                        i -= 5;
                        if (i <= 5) {
                            i = 5;
                        }
                        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                        if (i != 5) {
                        }
                    }
                    try {
                        File thumbnailFile = CompressImageUtil.this.getThumbnailFile(new File(str));
                        FileOutputStream fileOutputStream = new FileOutputStream(thumbnailFile);
                        fileOutputStream.write(byteArrayOutputStream.toByteArray());
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        CompressImageUtil.this.sendMsg(true, thumbnailFile.getPath(), null, compressListener);
                    } catch (Exception e) {
                        CompressImageUtil.this.sendMsg(false, str, "质量压缩失败", compressListener);
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void compressImageByPixel(java.lang.String r7, org.devio.takephoto.compress.CompressImageUtil.CompressListener r8) throws java.io.FileNotFoundException {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L9
            java.lang.String r1 = "要压缩的文件不存在"
            r6.sendMsg(r0, r7, r1, r8)
            return
        L9:
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options
            r1.<init>()
            r2 = 1
            r1.inJustDecodeBounds = r2
            android.graphics.BitmapFactory.decodeFile(r7, r1)
            r1.inJustDecodeBounds = r0
            int r0 = r1.outWidth
            int r3 = r1.outHeight
            org.devio.takephoto.compress.CompressConfig r4 = r6.config
            int r4 = r4.getMaxPixel()
            float r4 = (float) r4
            if (r0 < r3) goto L2f
            float r5 = (float) r0
            int r5 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r5 <= 0) goto L2f
            int r0 = r1.outWidth
        L2a:
            float r0 = (float) r0
            float r0 = r0 / r4
            int r0 = (int) r0
            int r0 = r0 + r2
            goto L3a
        L2f:
            if (r0 >= r3) goto L39
            float r0 = (float) r3
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L39
            int r0 = r1.outHeight
            goto L2a
        L39:
            r0 = 1
        L3a:
            r1.inSampleSize = r0
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            r1.inPreferredConfig = r0
            r1.inPurgeable = r2
            r1.inInputShareable = r2
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r7, r1)
            org.devio.takephoto.compress.CompressConfig r1 = r6.config
            boolean r1 = r1.isEnableQualityCompress()
            if (r1 == 0) goto L54
            r6.compressImageByQuality(r0, r7, r8)
            goto L70
        L54:
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            java.io.File r7 = r6.getThumbnailFile(r1)
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 100
            java.io.FileOutputStream r3 = new java.io.FileOutputStream
            r3.<init>(r7)
            r0.compress(r1, r2, r3)
            java.lang.String r7 = r7.getPath()
            r8.onCompressSuccess(r7)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.devio.takephoto.compress.CompressImageUtil.compressImageByPixel(java.lang.String, org.devio.takephoto.compress.CompressImageUtil$CompressListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMsg(final boolean z, final String str, final String str2, final CompressListener compressListener) {
        this.mhHandler.post(new Runnable() { // from class: org.devio.takephoto.compress.CompressImageUtil.2
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    compressListener.onCompressSuccess(str);
                } else {
                    compressListener.onCompressFailed(str, str2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getThumbnailFile(File file) {
        return (file == null || !file.exists()) ? file : TFileUtils.getPhotoCacheDir(this.context, file);
    }
}
