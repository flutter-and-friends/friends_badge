package com.soundcloud.android.crop;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Handler;
import com.soundcloud.android.crop.MonitoredActivity;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
class CropUtil {
    private static final String SCHEME_CONTENT = "content";
    private static final String SCHEME_FILE = "file";

    CropUtil() {
    }

    public static void closeSilently(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static int getExifRotation(File file) {
        if (file == null) {
            return 0;
        }
        try {
            int attributeInt = new ExifInterface(file.getAbsolutePath()).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
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
        } catch (IOException e) {
            Log.m316e("Error getting Exif data", e);
            return 0;
        }
    }

    public static boolean copyExifRotation(File file, File file2) throws IOException {
        if (file != null && file2 != null) {
            try {
                ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                ExifInterface exifInterface2 = new ExifInterface(file2.getAbsolutePath());
                exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, exifInterface.getAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION));
                exifInterface2.saveAttributes();
                return true;
            } catch (IOException e) {
                Log.m316e("Error copying Exif data", e);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x007b A[PHI: r3
      0x007b: PHI (r3v5 android.database.Cursor) = (r3v4 android.database.Cursor), (r3v6 android.database.Cursor) binds: [B:37:0x0079, B:32:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.File getFromMediaUri(android.content.Context r9, android.content.ContentResolver r10, android.net.Uri r11) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = r11.getScheme()
            java.lang.String r2 = "file"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L1a
            java.io.File r9 = new java.io.File
            java.lang.String r10 = r11.getPath()
            r9.<init>(r10)
            return r9
        L1a:
            java.lang.String r1 = r11.getScheme()
            java.lang.String r2 = "content"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L8f
            java.lang.String r1 = "_display_name"
            java.lang.String r2 = "_data"
            java.lang.String[] r5 = new java.lang.String[]{r2, r1}
            r6 = 0
            r7 = 0
            r8 = 0
            r3 = r10
            r4 = r11
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L75 java.lang.SecurityException -> L78 java.lang.IllegalArgumentException -> L7f
            if (r3 == 0) goto L72
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            if (r4 == 0) goto L72
            java.lang.String r4 = r11.toString()     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            java.lang.String r5 = "content://com.google.android.gallery3d"
            boolean r4 = r4.startsWith(r5)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            if (r4 == 0) goto L50
            int r1 = r3.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            goto L54
        L50:
            int r1 = r3.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
        L54:
            r2 = -1
            if (r1 == r2) goto L72
            java.lang.String r1 = r3.getString(r1)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            if (r2 != 0) goto L72
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L6c java.lang.SecurityException -> L6e java.lang.IllegalArgumentException -> L70
            if (r3 == 0) goto L6b
            r3.close()
        L6b:
            return r2
        L6c:
            r9 = move-exception
            goto L89
        L6e:
            goto L79
        L70:
            r0 = r3
            goto L7f
        L72:
            if (r3 == 0) goto L8f
            goto L7b
        L75:
            r9 = move-exception
            r3 = r0
            goto L89
        L78:
            r3 = r0
        L79:
            if (r3 == 0) goto L8f
        L7b:
            r3.close()
            goto L8f
        L7f:
            java.io.File r9 = getFromMediaUriPfd(r9, r10, r11)     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L88
            r0.close()
        L88:
            return r9
        L89:
            if (r3 == 0) goto L8e
            r3.close()
        L8e:
            throw r9
        L8f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.soundcloud.android.crop.CropUtil.getFromMediaUri(android.content.Context, android.content.ContentResolver, android.net.Uri):java.io.File");
    }

    private static String getTempFilename(Context context) throws IOException {
        return File.createTempFile("image", "tmp", context.getCacheDir()).getAbsolutePath();
    }

    private static File getFromMediaUriPfd(Context context, ContentResolver contentResolver, Uri uri) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        String tempFilename;
        FileOutputStream fileOutputStream2 = null;
        if (uri == null) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(contentResolver.openFileDescriptor(uri, "r").getFileDescriptor());
            try {
                tempFilename = getTempFilename(context);
                fileOutputStream = new FileOutputStream(tempFilename);
            } catch (IOException unused) {
                fileOutputStream = null;
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused2) {
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    File file = new File(tempFilename);
                    closeSilently(fileInputStream);
                    closeSilently(fileOutputStream);
                    return file;
                }
            }
        } catch (IOException unused3) {
            closeSilently(fileInputStream);
            closeSilently(fileOutputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            closeSilently(fileInputStream);
            closeSilently(fileOutputStream2);
            throw th;
        }
    }

    public static void startBackgroundJob(MonitoredActivity monitoredActivity, String str, String str2, Runnable runnable, Handler handler) {
        new Thread(new BackgroundJob(monitoredActivity, runnable, ProgressDialog.show(monitoredActivity, str, str2, true, false), handler)).start();
    }

    private static class BackgroundJob extends MonitoredActivity.LifeCycleAdapter implements Runnable {
        private final MonitoredActivity activity;
        private final Runnable cleanupRunner = new Runnable() { // from class: com.soundcloud.android.crop.CropUtil.BackgroundJob.1
            @Override // java.lang.Runnable
            public void run() {
                BackgroundJob.this.activity.removeLifeCycleListener(BackgroundJob.this);
                if (BackgroundJob.this.dialog.getWindow() != null) {
                    BackgroundJob.this.dialog.dismiss();
                }
            }
        };
        private final ProgressDialog dialog;
        private final Handler handler;
        private final Runnable job;

        public BackgroundJob(MonitoredActivity monitoredActivity, Runnable runnable, ProgressDialog progressDialog, Handler handler) {
            this.activity = monitoredActivity;
            this.dialog = progressDialog;
            this.job = runnable;
            this.activity.addLifeCycleListener(this);
            this.handler = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.job.run();
            } finally {
                this.handler.post(this.cleanupRunner);
            }
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleAdapter, com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityDestroyed(MonitoredActivity monitoredActivity) {
            this.cleanupRunner.run();
            this.handler.removeCallbacks(this.cleanupRunner);
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleAdapter, com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityStopped(MonitoredActivity monitoredActivity) {
            this.dialog.hide();
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleAdapter, com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityStarted(MonitoredActivity monitoredActivity) {
            this.dialog.show();
        }
    }
}
