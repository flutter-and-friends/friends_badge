package com.allenliu.versionchecklib.core.http;

import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* loaded from: classes.dex */
public abstract class FileCallBack implements Callback {
    private Handler handler = new Handler(Looper.getMainLooper());
    private String name;
    private String path;

    public abstract void onDownloadFailed();

    public abstract void onDownloading(int i);

    public abstract void onSuccess(File file, Call call, Response response);

    public FileCallBack(String str, String str2) {
        this.path = str;
        this.name = str2;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        this.handler.post(new Runnable() { // from class: com.allenliu.versionchecklib.core.http.FileCallBack.1
            @Override // java.lang.Runnable
            public void run() {
                FileCallBack.this.onDownloadFailed();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00bb A[Catch: IOException -> 0x00b7, TRY_LEAVE, TryCatch #0 {IOException -> 0x00b7, blocks: (B:47:0x00b3, B:51:0x00bb), top: B:55:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // okhttp3.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onResponse(final okhttp3.Call r12, final okhttp3.Response r13) throws java.lang.Throwable {
        /*
            r11 = this;
            r0 = 2048(0x800, float:2.87E-42)
            byte[] r0 = new byte[r0]
            java.io.File r1 = new java.io.File
            java.lang.String r2 = r11.path
            r1.<init>(r2)
            boolean r2 = r1.exists()
            if (r2 != 0) goto L14
            r1.mkdirs()
        L14:
            r1 = 0
            okhttp3.ResponseBody r2 = r13.body()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8e
            java.io.InputStream r2 = r2.byteStream()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8e
            okhttp3.ResponseBody r3 = r13.body()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r3.contentLength()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r4 = r11.path     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r5 = r11.name     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            boolean r4 = r3.exists()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            if (r4 == 0) goto L37
            r3.delete()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            goto L3a
        L37:
            r3.createNewFile()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
        L3a:
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r5 = 0
        L41:
            int r1 = r2.read(r0)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r7 = -1
            if (r1 == r7) goto L69
            okhttp3.ResponseBody r7 = r13.body()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            long r7 = r7.contentLength()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r9 = 0
            r4.write(r0, r9, r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            long r9 = (long) r1     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            long r5 = r5 + r9
            double r9 = (double) r5     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            double r7 = (double) r7     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            double r9 = r9 / r7
            r7 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r9 = r9 * r7
            int r1 = (int) r9     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            android.os.Handler r7 = r11.handler     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.allenliu.versionchecklib.core.http.FileCallBack$2 r8 = new com.allenliu.versionchecklib.core.http.FileCallBack$2     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r8.<init>()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r7.post(r8)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            goto L41
        L69:
            r4.flush()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            android.os.Handler r0 = r11.handler     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.allenliu.versionchecklib.core.http.FileCallBack$3 r1 = new com.allenliu.versionchecklib.core.http.FileCallBack$3     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r1.<init>()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r0.post(r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r2 == 0) goto L7b
            r2.close()     // Catch: java.io.IOException -> La3
        L7b:
            r4.close()     // Catch: java.io.IOException -> La3
            goto Lae
        L7f:
            r12 = move-exception
            goto Lb1
        L81:
            r12 = move-exception
            goto L88
        L83:
            r12 = move-exception
            r4 = r1
            goto Lb1
        L86:
            r12 = move-exception
            r4 = r1
        L88:
            r1 = r2
            goto L90
        L8a:
            r12 = move-exception
            r2 = r1
            r4 = r2
            goto Lb1
        L8e:
            r12 = move-exception
            r4 = r1
        L90:
            r12.printStackTrace()     // Catch: java.lang.Throwable -> Laf
            android.os.Handler r12 = r11.handler     // Catch: java.lang.Throwable -> Laf
            com.allenliu.versionchecklib.core.http.FileCallBack$4 r13 = new com.allenliu.versionchecklib.core.http.FileCallBack$4     // Catch: java.lang.Throwable -> Laf
            r13.<init>()     // Catch: java.lang.Throwable -> Laf
            r12.post(r13)     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto La5
            r1.close()     // Catch: java.io.IOException -> La3
            goto La5
        La3:
            r12 = move-exception
            goto Lab
        La5:
            if (r4 == 0) goto Lae
            r4.close()     // Catch: java.io.IOException -> La3
            goto Lae
        Lab:
            r12.printStackTrace()
        Lae:
            return
        Laf:
            r12 = move-exception
            r2 = r1
        Lb1:
            if (r2 == 0) goto Lb9
            r2.close()     // Catch: java.io.IOException -> Lb7
            goto Lb9
        Lb7:
            r13 = move-exception
            goto Lbf
        Lb9:
            if (r4 == 0) goto Lc2
            r4.close()     // Catch: java.io.IOException -> Lb7
            goto Lc2
        Lbf:
            r13.printStackTrace()
        Lc2:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allenliu.versionchecklib.core.http.FileCallBack.onResponse(okhttp3.Call, okhttp3.Response):void");
    }
}
