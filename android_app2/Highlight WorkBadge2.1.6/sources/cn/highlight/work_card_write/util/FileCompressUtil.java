package cn.highlight.work_card_write.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.text.TextUtils;
import cn.highlight.core.utils.LogManage;
import cn.highlight.core.utils.Tools;
import cn.highlight.core.utils.file.FileUtil;
import com.gg.reader.api.protocol.gx.EnumG;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
        LogManage.e("压缩文件保存路径:" + this.savePath);
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
                    LogManage.e("图片原大小：" + FileCompressUtil.formatFileSize(new File(str).length()));
                    LogManage.e("图片压缩后大小：" + FileCompressUtil.formatFileSize(file.length()));
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
                    LogManage.e("图片原大小：" + formatFileSize(new File(str).length()));
                    LogManage.e("图片压缩后大小：" + formatFileSize(file.length()));
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
    */
    public String saveBitmapToPath(Context context, Bitmap bitmap, String str) throws Throwable {
        Throwable th;
        ?? fileOutputStream;
        String absolutePath = null;
        absolutePath = null;
        absolutePath = null;
        ?? r0 = null;
        try {
            try {
                try {
                    File file = new File(context.getFilesDir(), str);
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        bitmap.compress(Bitmap.CompressFormat.WEBP, 100, fileOutputStream);
                        absolutePath = file.getAbsolutePath();
                        fileOutputStream.close();
                        context = fileOutputStream;
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        context = fileOutputStream;
                        if (fileOutputStream != 0) {
                            fileOutputStream.close();
                            context = fileOutputStream;
                        }
                        return absolutePath;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r0 = context;
                    if (r0 != null) {
                        try {
                            r0.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = 0;
            } catch (Throwable th3) {
                th = th3;
                if (r0 != null) {
                }
                throw th;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            context = e4;
        }
        return absolutePath;
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
