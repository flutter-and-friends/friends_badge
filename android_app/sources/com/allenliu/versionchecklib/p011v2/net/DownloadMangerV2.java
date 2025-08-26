package com.allenliu.versionchecklib.p011v2.net;

import android.os.Handler;
import android.os.Looper;
import com.allenliu.versionchecklib.callback.DownloadListener;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.core.http.FileCallBack;
import java.io.File;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class DownloadMangerV2 {
    public static void download(String str, String str2, String str3, final DownloadListener downloadListener) {
        if (str != null && !str.isEmpty()) {
            Request requestBuild = new Request.Builder().addHeader("Accept-Encoding", "identity").url(str).build();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.DownloadMangerV2.1
                @Override // java.lang.Runnable
                public void run() {
                    DownloadListener downloadListener2 = downloadListener;
                    if (downloadListener2 != null) {
                        downloadListener2.onCheckerStartDownload();
                    }
                }
            });
            AllenHttp.getHttpClient().newCall(requestBuild).enqueue(new FileCallBack(str2, str3) { // from class: com.allenliu.versionchecklib.v2.net.DownloadMangerV2.2
                @Override // com.allenliu.versionchecklib.core.http.FileCallBack
                public void onSuccess(final File file, Call call, Response response) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.DownloadMangerV2.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (downloadListener != null) {
                                downloadListener.onCheckerDownloadSuccess(file);
                            }
                        }
                    });
                }

                @Override // com.allenliu.versionchecklib.core.http.FileCallBack
                public void onDownloading(final int i) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.DownloadMangerV2.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (downloadListener != null) {
                                downloadListener.onCheckerDownloading(i);
                            }
                        }
                    });
                }

                @Override // com.allenliu.versionchecklib.core.http.FileCallBack
                public void onDownloadFailed() {
                    DownloadMangerV2.handleFailed(downloadListener);
                }
            });
            return;
        }
        throw new RuntimeException("you must set download url for download function using");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab A[Catch: IOException -> 0x00af, TRY_LEAVE, TryCatch #6 {IOException -> 0x00af, blocks: (B:41:0x00a6, B:43:0x00ab), top: B:52:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void response(okhttp3.Response r11, java.lang.String r12, java.lang.String r13, final com.allenliu.versionchecklib.callback.DownloadListener r14) throws java.lang.Throwable {
        /*
            boolean r0 = r11.isSuccessful()
            if (r0 == 0) goto Lb3
            r0 = 2048(0x800, float:2.87E-42)
            byte[] r0 = new byte[r0]
            java.io.File r1 = new java.io.File
            r1.<init>(r12)
            boolean r2 = r1.exists()
            if (r2 != 0) goto L18
            r1.mkdirs()
        L18:
            r1 = 0
            okhttp3.ResponseBody r2 = r11.body()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8f
            java.io.InputStream r2 = r2.byteStream()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8f
            okhttp3.ResponseBody r11 = r11.body()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            long r3 = r11.contentLength()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            java.io.File r11 = new java.io.File     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            r11.<init>(r12, r13)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            boolean r12 = r11.exists()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            if (r12 == 0) goto L38
            r11.delete()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            goto L3b
        L38:
            r11.createNewFile()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
        L3b:
            java.io.FileOutputStream r12 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            r12.<init>(r11)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            r5 = 0
        L42:
            int r13 = r2.read(r0)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r1 = -1
            if (r13 == r1) goto L69
            r1 = 0
            r12.write(r0, r1, r13)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            long r7 = (long) r13     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            long r5 = r5 + r7
            double r7 = (double) r5     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            double r9 = (double) r3     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            double r7 = r7 / r9
            r9 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r7 = r7 * r9
            int r13 = (int) r7     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            android.os.Handler r1 = new android.os.Handler     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            android.os.Looper r7 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            com.allenliu.versionchecklib.v2.net.DownloadMangerV2$3 r7 = new com.allenliu.versionchecklib.v2.net.DownloadMangerV2$3     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r7.<init>()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r1.post(r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            goto L42
        L69:
            r12.flush()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            android.os.Handler r13 = new android.os.Handler     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            android.os.Looper r0 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r13.<init>(r0)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            com.allenliu.versionchecklib.v2.net.DownloadMangerV2$4 r0 = new com.allenliu.versionchecklib.v2.net.DownloadMangerV2$4     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r0.<init>()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            r13.post(r0)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L89
            if (r2 == 0) goto L9a
            r2.close()     // Catch: java.io.IOException -> L9e
            goto L9a
        L83:
            r11 = move-exception
            goto La4
        L85:
            r11 = move-exception
            r12 = r1
            goto La4
        L88:
            r12 = r1
        L89:
            r1 = r2
            goto L90
        L8b:
            r11 = move-exception
            r12 = r1
            r2 = r12
            goto La4
        L8f:
            r12 = r1
        L90:
            handleFailed(r14)     // Catch: java.lang.Throwable -> La2
            if (r1 == 0) goto L98
            r1.close()     // Catch: java.io.IOException -> L9e
        L98:
            if (r12 == 0) goto Lb6
        L9a:
            r12.close()     // Catch: java.io.IOException -> L9e
            goto Lb6
        L9e:
            handleFailed(r14)
            goto Lb6
        La2:
            r11 = move-exception
            r2 = r1
        La4:
            if (r2 == 0) goto La9
            r2.close()     // Catch: java.io.IOException -> Laf
        La9:
            if (r12 == 0) goto Lb2
            r12.close()     // Catch: java.io.IOException -> Laf
            goto Lb2
        Laf:
            handleFailed(r14)
        Lb2:
            throw r11
        Lb3:
            handleFailed(r14)
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allenliu.versionchecklib.p011v2.net.DownloadMangerV2.response(okhttp3.Response, java.lang.String, java.lang.String, com.allenliu.versionchecklib.callback.DownloadListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleFailed(final DownloadListener downloadListener) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.DownloadMangerV2.5
            @Override // java.lang.Runnable
            public void run() {
                DownloadListener downloadListener2 = downloadListener;
                if (downloadListener2 != null) {
                    downloadListener2.onCheckerDownloadFail();
                }
            }
        });
    }
}
