package cn.highlight.core.utils.file;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Environment;
import android.webkit.MimeTypeMap;
import cn.highlight.core.utils.LogManage;
import cn.highlight.core.utils.Tools;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class FileUtil {
    private static final String TIME_FORMAT = "_yyyyMMdd_HHmmss";
    public static String appSaveFilePath = Environment.getExternalStorageDirectory().getPath() + "/appName";

    public static byte[] getBytesByFile(File file) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1000);
            byte[] bArr = new byte[1000];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0037 -> B:45:0x005c). Please report as a decompilation issue!!! */
    public static String getFileByBytes(byte[] bArr, String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                try {
                    makeDir(str);
                    str = str + "/" + str2;
                    fileOutputStream = new FileOutputStream(new File(str));
                    try {
                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                        try {
                            bufferedOutputStream2.write(bArr);
                            try {
                                bufferedOutputStream2.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            fileOutputStream.close();
                        } catch (Exception e2) {
                            e = e2;
                            bufferedOutputStream = bufferedOutputStream2;
                            str = "";
                            e.printStackTrace();
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            return str;
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e6) {
                        e = e6;
                    }
                } catch (Exception e7) {
                    e = e7;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean existSDCard() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean fileExists(String str) {
        try {
            return new File(str).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void makeDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdir();
    }

    public static void createFileNew(String str, String str2) throws IOException {
        File file = new File(str + "/" + str2);
        try {
            if (file.exists()) {
                return;
            }
            file.createNewFile();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteFile(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.isFile()) {
                        File file2 = new File(file.getAbsolutePath() + System.currentTimeMillis());
                        file.renameTo(file2);
                        file2.delete();
                        return;
                    }
                    File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                        for (File file3 : fileArrListFiles) {
                            deleteFile(file3);
                        }
                    }
                    File file4 = new File(file.getAbsolutePath() + System.currentTimeMillis());
                    file.renameTo(file4);
                    file4.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void deletePath(String str) {
        try {
            if (Tools.isNull(str)) {
                return;
            }
            File file = new File(str);
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    if (!file2.isDirectory()) {
                        file2.delete();
                    }
                }
            }
            LogManage.m30e("已删除该路径下所有文件：" + str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static File getSaveFile(Context context) {
        return new File(context.getFilesDir(), "pic.jpg");
    }

    public static String getFilePath(ContentResolver contentResolver, Uri uri) {
        try {
            if (uri.getScheme().equals("file")) {
                return uri.getPath();
            }
            return getFilePathByUri(contentResolver, uri);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public static String getFilePathByUri(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
        cursorQuery.moveToFirst();
        return cursorQuery.getString(1);
    }

    public static Bitmap ImageCompressL(Bitmap bitmap) {
        double dSqrt = Math.sqrt(888000.0d);
        if (bitmap.getWidth() <= dSqrt && bitmap.getHeight() <= dSqrt) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float fMax = (float) Math.max(dSqrt / bitmap.getWidth(), dSqrt / bitmap.getHeight());
        matrix.postScale(fMax, fMax);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap zoomImg(Bitmap bitmap, int i, int i2) {
        Matrix matrix = new Matrix();
        matrix.postScale(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        matrix.postRotate(0.0f);
        return Bitmap.createScaledBitmap(bitmap, i, i2, false);
    }

    public static String saveFile(Context context, String str, Bitmap bitmap) {
        return saveFile(context, "", str, bitmap);
    }

    public static String saveFile(Context context, String str, String str2, Bitmap bitmap) {
        return saveFile(context, str, str2, bitmapToBytes(bitmap));
    }

    public static byte[] bitmapToBytes(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0092 A[Catch: IOException -> 0x0095, TRY_LEAVE, TryCatch #1 {IOException -> 0x0095, blocks: (B:12:0x0084, B:19:0x0092), top: B:28:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0021 A[Catch: all -> 0x008e, Exception -> 0x0090, TryCatch #6 {Exception -> 0x0090, all -> 0x008e, blocks: (B:4:0x0017, B:7:0x0042, B:9:0x004d, B:10:0x0050, B:6:0x0021), top: B:32:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String saveFile(android.content.Context r5, java.lang.String r6, java.lang.String r7, byte[] r8) throws java.lang.Throwable {
        /*
            java.lang.String r5 = ""
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            java.util.Locale r1 = java.util.Locale.CHINA
            java.lang.String r2 = "yyyyMMdd"
            r0.<init>(r2, r1)
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            java.lang.String r0 = r0.format(r1)
            r1 = 0
            if (r6 == 0) goto L21
            java.lang.String r2 = r6.trim()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r2 != 0) goto L42
        L21:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r6.<init>()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r2 = r2.getPath()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r6.append(r2)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r2 = "/head/"
            r6.append(r2)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r6.append(r0)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r0 = "/"
            r6.append(r0)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
        L42:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            boolean r2 = r0.exists()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            if (r2 != 0) goto L50
            r0.mkdirs()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
        L50:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r2.<init>()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r2.append(r7)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r2.append(r5)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r0.<init>(r6, r2)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r0 = r0.getAbsolutePath()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r4.<init>()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r4.append(r7)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r4.append(r5)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r3.<init>(r6, r7)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L90
            r2.write(r8)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8c
            r2.close()     // Catch: java.io.IOException -> L95
            r5 = r0
            goto L95
        L89:
            r5 = move-exception
            r1 = r2
            goto L96
        L8c:
            r1 = r2
            goto L90
        L8e:
            r5 = move-exception
            goto L96
        L90:
            if (r1 == 0) goto L95
            r1.close()     // Catch: java.io.IOException -> L95
        L95:
            return r5
        L96:
            if (r1 == 0) goto L9b
            r1.close()     // Catch: java.io.IOException -> L9b
        L9b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.core.utils.file.FileUtil.saveFile(android.content.Context, java.lang.String, java.lang.String, byte[]):java.lang.String");
    }

    private static String getTimeFormatName(String str) {
        return new SimpleDateFormat("'" + str + "'" + TIME_FORMAT, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
    }

    public static String getFileNameByTime(String str, String str2) {
        return getTimeFormatName(str) + "." + str2;
    }

    private static File createDir(String str) {
        File file = new File(appSaveFilePath + "/" + str + "/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File createFile(String str, String str2) {
        return new File(createDir(str), str2);
    }

    private static File createFileByTime(String str, String str2, String str3) {
        return createFile(str, getFileNameByTime(str2, str3));
    }

    public static String getMimeType(String str) {
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(getExtension(str));
    }

    public static String getExtension(String str) {
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf > 0 ? name.substring(iLastIndexOf + 1) : "";
    }
}
