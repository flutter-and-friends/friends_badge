package org.devio.takephoto.uitl;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;
import org.devio.takephoto.C1727R;
import org.devio.takephoto.model.TException;
import org.devio.takephoto.model.TExceptionType;

/* loaded from: classes2.dex */
public class TImageFiles {
    private static final String TAG = IntentUtils.class.getName();

    /* JADX WARN: Removed duplicated region for block: B:32:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void writeToFile(android.graphics.Bitmap r3, android.net.Uri r4) throws java.lang.Throwable {
        /*
            if (r3 != 0) goto L3
            return
        L3:
            java.io.File r0 = new java.io.File
            java.lang.String r4 = r4.getPath()
            r0.<init>(r4)
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream
            r4.<init>()
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 100
            r3.compress(r1, r2, r4)
            r3 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L38
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L38
            byte[] r3 = r4.toByteArray()     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L4c
            r1.write(r3)     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L4c
            r4.flush()     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L4c
            r1.flush()     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L4c
            r1.close()     // Catch: java.io.IOException -> L47
            r4.close()     // Catch: java.io.IOException -> L47
            goto L4b
        L32:
            r3 = move-exception
            goto L3b
        L34:
            r0 = move-exception
            r1 = r3
            r3 = r0
            goto L4d
        L38:
            r0 = move-exception
            r1 = r3
            r3 = r0
        L3b:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L4b
            r1.close()     // Catch: java.io.IOException -> L47
            r4.close()     // Catch: java.io.IOException -> L47
            goto L4b
        L47:
            r3 = move-exception
            r3.printStackTrace()
        L4b:
            return
        L4c:
            r3 = move-exception
        L4d:
            if (r1 == 0) goto L5a
            r1.close()     // Catch: java.io.IOException -> L56
            r4.close()     // Catch: java.io.IOException -> L56
            goto L5a
        L56:
            r4 = move-exception
            r4.printStackTrace()
        L5a:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.devio.takephoto.uitl.TImageFiles.writeToFile(android.graphics.Bitmap, android.net.Uri):void");
    }

    public static void inputStreamToFile(InputStream inputStream, File file) throws Throwable {
        if (file == null) {
            Log.i(TAG, "inputStreamToFile:file not be null");
            throw new TException(TExceptionType.TYPE_WRITE_FAIL);
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[10240];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i != -1) {
                            fileOutputStream2.write(bArr, 0, i);
                        } else {
                            try {
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                                inputStream.close();
                                return;
                            } catch (IOException e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    Log.e(TAG, "InputStream 写入文件出错:" + e.toString());
                    throw new TException(TExceptionType.TYPE_WRITE_FAIL);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public static File getTempFile(Activity activity, Uri uri) throws TException {
        String mimeType = getMimeType(activity, uri);
        if (!checkMimeType(activity, mimeType)) {
            throw new TException(TExceptionType.TYPE_NOT_IMAGE);
        }
        File externalFilesDir = activity.getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        return new File(externalFilesDir, UUID.randomUUID().toString() + "." + mimeType);
    }

    public static boolean checkMimeType(Context context, String str) {
        boolean z = !TextUtils.isEmpty(str) && ".jpg|.gif|.png|.bmp|.jpeg|.webp|".contains(str.toLowerCase());
        if (!z) {
            Toast.makeText(context, context.getResources().getText(C1727R.string.tip_type_not_image), 0).show();
        }
        return z;
    }

    public static String getMimeType(Activity activity, Uri uri) {
        String fileExtensionFromUrl;
        if ("content".equals(uri.getScheme())) {
            fileExtensionFromUrl = MimeTypeMap.getSingleton().getExtensionFromMimeType(activity.getContentResolver().getType(uri));
            if (TextUtils.isEmpty(fileExtensionFromUrl)) {
                fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(uri.getPath())).toString());
            }
        } else {
            fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(uri.getPath())).toString());
            if (TextUtils.isEmpty(fileExtensionFromUrl)) {
                fileExtensionFromUrl = MimeTypeMap.getSingleton().getExtensionFromMimeType(activity.getContentResolver().getType(uri));
            }
        }
        return TextUtils.isEmpty(fileExtensionFromUrl) ? getMimeTypeByFileName(TUriParse.getFileWithUri(uri, activity).getName()) : fileExtensionFromUrl;
    }

    public static String getMimeTypeByFileName(String str) {
        return str.substring(str.lastIndexOf("."), str.length());
    }
}
