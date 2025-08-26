package cn.highlight.work_card_write.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.text.TextUtils;
import cn.highlight.core.utils.LogManage;
import cn.highlight.core.utils.Tools;
import cn.highlight.core.utils.file.FileUtil;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.text.DecimalFormat;
import java.util.List;
import top.zibin.luban.CompressionPredicate;
import top.zibin.luban.Luban;
import top.zibin.luban.OnCompressListener;

/* loaded from: classes.dex */
public class FileCompressUtil {
    private static FileCompressUtil instance;
    private String savePath = "";

    public interface OnCompressImgListener {
        void onCompressImg(boolean z, String str);
    }

    public static FileCompressUtil getInstance() {
        if (instance == null) {
            synchronized (FileCompressUtil.class) {
                if (instance == null) {
                    instance = new FileCompressUtil();
                }
            }
        }
        return instance;
    }

    private void setSavePath() {
        this.savePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/WC/Compress";
        LogManage.m30e("压缩文件保存路径:" + this.savePath);
    }

    public void compressImg(Context context, final String str, final OnCompressImgListener onCompressImgListener) {
        setSavePath();
        if (!Tools.isNull(str)) {
            Luban.with(context).load(str).ignoreBy(100).setTargetDir(this.savePath).filter(new CompressionPredicate() { // from class: cn.highlight.work_card_write.util.-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So
                @Override // top.zibin.luban.CompressionPredicate
                public final boolean apply(String str2) {
                    return FileCompressUtil.lambda$compressImg$0(str2);
                }
            }).setCompressListener(new OnCompressListener() { // from class: cn.highlight.work_card_write.util.FileCompressUtil.1
                @Override // top.zibin.luban.OnCompressListener
                public void onStart() {
                }

                @Override // top.zibin.luban.OnCompressListener
                public void onSuccess(File file) {
                    LogManage.m30e("图片原大小：" + FileCompressUtil.formatFileSize(new File(str).length()));
                    LogManage.m30e("图片压缩后大小：" + FileCompressUtil.formatFileSize(file.length()));
                    if (file.length() == 0) {
                        OnCompressImgListener onCompressImgListener2 = onCompressImgListener;
                        if (onCompressImgListener2 != null) {
                            onCompressImgListener2.onCompressImg(false, "");
                            return;
                        }
                        return;
                    }
                    OnCompressImgListener onCompressImgListener3 = onCompressImgListener;
                    if (onCompressImgListener3 != null) {
                        onCompressImgListener3.onCompressImg(true, file.getAbsolutePath());
                    }
                }

                @Override // top.zibin.luban.OnCompressListener
                public void onError(Throwable th) {
                    OnCompressImgListener onCompressImgListener2 = onCompressImgListener;
                    if (onCompressImgListener2 != null) {
                        onCompressImgListener2.onCompressImg(false, "");
                    }
                }
            }).launch();
        } else if (onCompressImgListener != null) {
            onCompressImgListener.onCompressImg(false, "");
        }
    }

    static /* synthetic */ boolean lambda$compressImg$0(String str) {
        return (TextUtils.isEmpty(str) || str.toLowerCase().endsWith(".gif")) ? false : true;
    }

    public String compressImgSync(Context context, String str, int i, String str2) {
        setSavePath();
        if (!Tools.isNull(str)) {
            try {
                List<File> list = Luban.with(context).load(str).ignoreBy(100).setFocusAlpha(true).setTargetDir(this.savePath).filter(new CompressionPredicate() { // from class: cn.highlight.work_card_write.util.-$$Lambda$FileCompressUtil$JnreGmukc2sPibyekCzaSILKkbs
                    @Override // top.zibin.luban.CompressionPredicate
                    public final boolean apply(String str3) {
                        return FileCompressUtil.lambda$compressImgSync$1(str3);
                    }
                }).get();
                if (list != null && list.size() > 0) {
                    File file = list.get(0);
                    LogManage.m30e("图片原大小：" + formatFileSize(new File(str).length()));
                    LogManage.m30e("图片压缩后大小：" + formatFileSize(file.length()));
                    return file.getAbsolutePath();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    static /* synthetic */ boolean lambda$compressImgSync$1(String str) {
        return (TextUtils.isEmpty(str) || str.toLowerCase().endsWith(".gif")) ? false : true;
    }

    public static String formatFileSize(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j == 0) {
            return "0B";
        }
        if (j < 1024) {
            return decimalFormat.format(j) + "B";
        }
        if (j < 1048576) {
            return decimalFormat.format(j / 1024.0d) + "KB";
        }
        if (j < EnumG.AntennaNo_31) {
            return decimalFormat.format(j / 1048576.0d) + "MB";
        }
        return decimalFormat.format(j / 1.073741824E9d) + "GB";
    }

    public void clearCompressPath() {
        try {
            setSavePath();
            FileUtil.makeDir(this.savePath);
            FileUtil.deletePath(this.savePath);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.graphics.Bitmap] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001f -> B:29:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String saveBitmapToPath(android.content.Context r4, android.graphics.Bitmap r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            r3 = this;
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            java.io.File r4 = r4.getFilesDir()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            r1.<init>(r4, r6)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            android.graphics.Bitmap$CompressFormat r6 = android.graphics.Bitmap.CompressFormat.WEBP     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L32
            r2 = 100
            r5.compress(r6, r2, r4)     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L32
            java.lang.String r0 = r1.getAbsolutePath()     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L32
            r4.close()     // Catch: java.io.IOException -> L1e
            goto L31
        L1e:
            r4 = move-exception
            r4.printStackTrace()
            goto L31
        L23:
            r5 = move-exception
            goto L29
        L25:
            r5 = move-exception
            goto L34
        L27:
            r5 = move-exception
            r4 = r0
        L29:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L32
            if (r4 == 0) goto L31
            r4.close()     // Catch: java.io.IOException -> L1e
        L31:
            return r0
        L32:
            r5 = move-exception
            r0 = r4
        L34:
            if (r0 == 0) goto L3e
            r0.close()     // Catch: java.io.IOException -> L3a
            goto L3e
        L3a:
            r4 = move-exception
            r4.printStackTrace()
        L3e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.FileCompressUtil.saveBitmapToPath(android.content.Context, android.graphics.Bitmap, java.lang.String):java.lang.String");
    }

    public Bitmap getBitmapFromPath(String str) {
        try {
            return BitmapFactory.decodeFile(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public byte[] getBitmapToDatabase(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 100; i > 0; i -= 30) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.WEBP, i, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray.length / 1024 < 500) {
                return byteArray;
            }
        }
        byteArrayOutputStream.reset();
        bitmap.compress(Bitmap.CompressFormat.WEBP, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
