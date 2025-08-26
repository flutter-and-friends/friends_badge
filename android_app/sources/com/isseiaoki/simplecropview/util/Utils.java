package com.isseiaoki.simplecropview.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Utils {
    private static final int SIZE_DEFAULT = 2048;
    private static final int SIZE_LIMIT = 4096;
    private static final String TAG = Utils.class.getSimpleName();
    public static int sInputImageWidth = 0;
    public static int sInputImageHeight = 0;

    public static int getRotateDegreeFromOrientation(int i) {
        if (i == 3) {
            return 180;
        }
        if (i == 6) {
            return 90;
        }
        if (i != 8) {
            return 0;
        }
        return PropertyID.CHARACTER_DATA_DELAY;
    }

    public static void copyExifInfo(Context context, Uri uri, Uri uri2, int i, int i2) throws Throwable {
        if (uri == null || uri2 == null) {
            return;
        }
        try {
            File fileFromUri = getFileFromUri(context, uri);
            File fileFromUri2 = getFileFromUri(context, uri2);
            if (fileFromUri != null && fileFromUri2 != null) {
                String absolutePath = fileFromUri.getAbsolutePath();
                String absolutePath2 = fileFromUri2.getAbsolutePath();
                ExifInterface exifInterface = new ExifInterface(absolutePath);
                ArrayList<String> arrayList = new ArrayList();
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_DATETIME);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_FLASH);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_FOCAL_LENGTH);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_ALTITUDE);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_ALTITUDE_REF);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_DATESTAMP);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_LATITUDE);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_LATITUDE_REF);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_LONGITUDE);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_LONGITUDE_REF);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_PROCESSING_METHOD);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_GPS_TIMESTAMP);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_MAKE);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_MODEL);
                arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_WHITE_BALANCE);
                if (Build.VERSION.SDK_INT >= 11) {
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_EXPOSURE_TIME);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_F_NUMBER);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_ISO_SPEED_RATINGS);
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_DATETIME_DIGITIZED);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_DIGITIZED);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_ORIGINAL);
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_F_NUMBER);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_ISO_SPEED_RATINGS);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_DIGITIZED);
                    arrayList.add(androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_ORIGINAL);
                }
                ExifInterface exifInterface2 = new ExifInterface(absolutePath2);
                for (String str : arrayList) {
                    String attribute = exifInterface.getAttribute(str);
                    if (!TextUtils.isEmpty(attribute)) {
                        exifInterface2.setAttribute(str, attribute);
                    }
                }
                exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(i));
                exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(i2));
                exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, String.valueOf(0));
                exifInterface2.saveAttributes();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static int getExifRotation(File file) {
        if (file == null) {
            return 0;
        }
        try {
            return getRotateDegreeFromOrientation(new ExifInterface(file.getAbsolutePath()).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0));
        } catch (IOException e) {
            Logger.m310e("An error occurred while getting the exif data: " + e.getMessage(), e);
            return 0;
        }
    }

    public static int getExifRotation(Context context, Uri uri) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"orientation"}, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i = cursorQuery.getInt(0);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return i;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException unused) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static int getExifOrientation(Context context, Uri uri) {
        if (uri.getAuthority().toLowerCase().endsWith("media")) {
            return getExifRotation(context, uri);
        }
        return getExifRotation(getFileFromUri(context, uri));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Matrix getMatrixFromExifOrientation(int i) {
        Matrix matrix = new Matrix();
        switch (i) {
            case 0:
            case 1:
            default:
                return matrix;
            case 2:
                matrix.postScale(-1.0f, 1.0f);
                return matrix;
            case 3:
                matrix.postRotate(180.0f);
                return matrix;
            case 4:
                matrix.postScale(1.0f, -1.0f);
                return matrix;
            case 5:
                matrix.postRotate(90.0f);
                matrix.postScale(1.0f, -1.0f);
                return matrix;
            case 6:
                matrix.postRotate(90.0f);
                return matrix;
            case 7:
                matrix.postRotate(-90.0f);
                matrix.postScale(1.0f, -1.0f);
                return matrix;
            case 8:
                matrix.postRotate(-90.0f);
                return matrix;
        }
    }

    public static int getExifOrientationFromAngle(int i) {
        int i2 = i % 360;
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 90) {
            return 6;
        }
        if (i2 != 180) {
            return i2 != 270 ? 1 : 8;
        }
        return 3;
    }

    public static Uri ensureUriPermission(Context context, Intent intent) {
        Uri data = intent.getData();
        if (Build.VERSION.SDK_INT >= 19) {
            context.getContentResolver().takePersistableUriPermission(data, intent.getFlags() & 1);
        }
        return data;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.File getFileFromUri(android.content.Context r5, android.net.Uri r6) throws java.lang.Throwable {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 0
            r3 = 19
            if (r0 < r3) goto La
            r0 = 1
            goto Lb
        La:
            r0 = 0
        Lb:
            r3 = 0
            if (r0 == 0) goto Lc2
            boolean r0 = android.provider.DocumentsContract.isDocumentUri(r5, r6)
            if (r0 == 0) goto Lc2
            boolean r0 = isExternalStorageDocument(r6)
            java.lang.String r4 = ":"
            if (r0 == 0) goto L4a
            java.lang.String r5 = android.provider.DocumentsContract.getDocumentId(r6)
            java.lang.String[] r5 = r5.split(r4)
            r6 = r5[r2]
            java.lang.String r0 = "primary"
            boolean r6 = r0.equalsIgnoreCase(r6)
            if (r6 == 0) goto Lef
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()
            r6.append(r0)
            java.lang.String r0 = "/"
            r6.append(r0)
            r5 = r5[r1]
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            goto Lf0
        L4a:
            boolean r0 = isDownloadsDocument(r6)
            if (r0 == 0) goto L78
            java.lang.String r6 = android.provider.DocumentsContract.getDocumentId(r6)
            boolean r0 = com.isseiaoki.simplecropview.util.Utils.RawDocumentsHelper.isRawDocId(r6)
            if (r0 == 0) goto L60
            java.lang.String r5 = com.isseiaoki.simplecropview.util.Utils.RawDocumentsHelper.getAbsoluteFilePath(r6)
            goto Lf0
        L60:
            java.lang.String r0 = "content://downloads/public_downloads"
            android.net.Uri r0 = android.net.Uri.parse(r0)
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            long r1 = r6.longValue()
            android.net.Uri r6 = android.content.ContentUris.withAppendedId(r0, r1)
            java.lang.String r5 = getDataColumn(r5, r6, r3, r3)
            goto Lf0
        L78:
            boolean r0 = isMediaDocument(r6)
            if (r0 == 0) goto Lb7
            java.lang.String r6 = android.provider.DocumentsContract.getDocumentId(r6)
            java.lang.String[] r6 = r6.split(r4)
            r0 = r6[r2]
            java.lang.String r4 = "image"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L93
            android.net.Uri r0 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI
            goto Laa
        L93:
            java.lang.String r4 = "video"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L9e
            android.net.Uri r0 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            goto Laa
        L9e:
            java.lang.String r4 = "audio"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto La9
            android.net.Uri r0 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
            goto Laa
        La9:
            r0 = r3
        Laa:
            java.lang.String[] r4 = new java.lang.String[r1]
            r6 = r6[r1]
            r4[r2] = r6
            java.lang.String r6 = "_id=?"
            java.lang.String r5 = getDataColumn(r5, r0, r6, r4)
            goto Lf0
        Lb7:
            boolean r0 = isGoogleDriveDocument(r6)
            if (r0 == 0) goto Lef
            java.io.File r5 = getGoogleDriveFile(r5, r6)
            return r5
        Lc2:
            java.lang.String r0 = r6.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r1.equalsIgnoreCase(r0)
            if (r0 == 0) goto Lde
            boolean r0 = isGooglePhotosUri(r6)
            if (r0 == 0) goto Ld9
            java.lang.String r5 = r6.getLastPathSegment()
            goto Lf0
        Ld9:
            java.lang.String r5 = getDataColumn(r5, r6, r3, r3)
            goto Lf0
        Lde:
            java.lang.String r5 = r6.getScheme()
            java.lang.String r0 = "file"
            boolean r5 = r0.equalsIgnoreCase(r5)
            if (r5 == 0) goto Lef
            java.lang.String r5 = r6.getPath()
            goto Lf0
        Lef:
            r5 = r3
        Lf0:
            if (r5 == 0) goto Lf8
            java.io.File r6 = new java.io.File
            r6.<init>(r5)
            return r6
        Lf8:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.isseiaoki.simplecropview.util.Utils.getFileFromUri(android.content.Context, android.net.Uri):java.io.File");
    }

    public static class RawDocumentsHelper {
        public static final String RAW_PREFIX = "raw:";

        public static boolean isRawDocId(String str) {
            return str != null && str.startsWith(RAW_PREFIX);
        }

        public static String getDocIdForFile(File file) {
            return RAW_PREFIX + file.getAbsolutePath();
        }

        public static String getAbsoluteFilePath(String str) {
            return str.substring(4);
        }
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursorQuery;
        int columnIndex;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data", "_display_name"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        if (uri.toString().startsWith("content://com.google.android.gallery3d")) {
                            columnIndex = cursorQuery.getColumnIndex("_display_name");
                        } else {
                            columnIndex = cursorQuery.getColumnIndex("_data");
                        }
                        if (columnIndex != -1) {
                            String string = cursorQuery.getString(columnIndex);
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return string;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean isGoogleDriveDocument(Uri uri) {
        return "com.google.android.apps.docs.storage".equals(uri.getAuthority());
    }

    private static File getGoogleDriveFile(Context context, Uri uri) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        if (uri == null) {
            return null;
        }
        String absolutePath = new File(context.getCacheDir(), "tmp").getAbsolutePath();
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                closeQuietly(null);
                closeQuietly(null);
                return null;
            }
            fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                fileOutputStream = new FileOutputStream(absolutePath);
            } catch (IOException unused) {
                fileOutputStream = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        File file = new File(absolutePath);
                        closeQuietly(fileInputStream);
                        closeQuietly(fileOutputStream);
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } catch (IOException unused2) {
                closeQuietly(fileInputStream);
                closeQuietly(fileOutputStream);
                return null;
            } catch (Throwable th2) {
                fileOutputStream2 = fileOutputStream;
                th = th2;
                closeQuietly(fileInputStream);
                closeQuietly(fileOutputStream2);
                throw th;
            }
        } catch (IOException unused3) {
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static Bitmap decodeSampledBitmapFromUri(Context context, Uri uri, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        ?? DecodeStream = 0;
        DecodeStream = 0;
        DecodeStream = 0;
        DecodeStream = 0;
        try {
            try {
                try {
                    inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    if (inputStreamOpenInputStream != null) {
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inSampleSize = calculateInSampleSize(context, uri, i);
                            options.inJustDecodeBounds = false;
                            DecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        } catch (FileNotFoundException e) {
                            e = e;
                            Logger.m309e(e.getMessage());
                            if (inputStreamOpenInputStream != null) {
                                inputStreamOpenInputStream.close();
                            }
                            return DecodeStream;
                        }
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    inputStreamOpenInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        try {
                            DecodeStream.close();
                        } catch (IOException e3) {
                            Logger.m309e(e3.getMessage());
                        }
                    }
                    throw th;
                }
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                    DecodeStream = DecodeStream;
                }
            } catch (IOException e4) {
                Logger.m309e(e4.getMessage());
            }
            return DecodeStream;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int calculateInSampleSize(Context context, Uri uri, int i) throws Throwable {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                closeQuietly(inputStreamOpenInputStream);
            } catch (FileNotFoundException unused) {
                inputStream = inputStreamOpenInputStream;
                closeQuietly(inputStream);
                sInputImageWidth = options.outWidth;
                sInputImageHeight = options.outHeight;
                while (true) {
                    if (options.outWidth / i2 > i) {
                    }
                    i2 *= 2;
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                closeQuietly(inputStream);
                throw th;
            }
        } catch (FileNotFoundException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        sInputImageWidth = options.outWidth;
        sInputImageHeight = options.outHeight;
        while (true) {
            if (options.outWidth / i2 > i && options.outHeight / i2 <= i) {
                return i2;
            }
            i2 *= 2;
        }
    }

    public static Bitmap getScaledBitmapForHeight(Bitmap bitmap, int i) {
        return getScaledBitmap(bitmap, Math.round(i * (bitmap.getWidth() / bitmap.getHeight())), i);
    }

    public static Bitmap getScaledBitmapForWidth(Bitmap bitmap, int i) {
        return getScaledBitmap(bitmap, i, Math.round(i / (bitmap.getWidth() / bitmap.getHeight())));
    }

    public static Bitmap getScaledBitmap(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public static int getMaxSize() {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        if (iArr[0] > 0) {
            return Math.min(iArr[0], 4096);
        }
        return 2048;
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static void updateGalleryInfo(Context context, Uri uri) throws Throwable {
        if ("content".equals(uri.getScheme())) {
            ContentValues contentValues = new ContentValues();
            File fileFromUri = getFileFromUri(context, uri);
            if (fileFromUri != null && fileFromUri.exists()) {
                contentValues.put("_size", Long.valueOf(fileFromUri.length()));
            }
            context.getContentResolver().update(uri, contentValues, null, null);
        }
    }
}
