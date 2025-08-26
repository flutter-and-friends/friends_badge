package com.blankj.utilcode.util;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.util.Log;
import androidx.core.content.FileProvider;
import java.io.File;

/* loaded from: classes.dex */
public final class UriUtils {
    private UriUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Uri file2Uri(File file) {
        if (file == null) {
            throw new NullPointerException("Argument 'file' of type File (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return FileProvider.getUriForFile(Utils.getApp(), Utils.getApp().getPackageName() + ".utilcode.provider", file);
        }
        return Uri.fromFile(file);
    }

    public static File uri2File(Uri uri) {
        Uri uri2;
        if (uri == null) {
            throw new NullPointerException("Argument 'uri' of type Uri (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        Log.d("UriUtils", uri.toString());
        String authority = uri.getAuthority();
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            String path = uri.getPath();
            if (path != null) {
                return new File(path);
            }
            Log.d("UriUtils", uri.toString() + " parse failed. -> 0");
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19 && DocumentsContract.isDocumentUri(Utils.getApp(), uri)) {
            if ("com.android.externalstorage.documents".equals(authority)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return new File(Environment.getExternalStorageDirectory() + "/" + strArrSplit[1]);
                }
                Log.d("UriUtils", uri.toString() + " parse failed. -> 1");
                return null;
            }
            if ("com.android.providers.downloads.documents".equals(authority)) {
                return getFileFromUri(ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), 2);
            }
            if ("com.android.providers.media.documents".equals(authority)) {
                String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                } else {
                    Log.d("UriUtils", uri.toString() + " parse failed. -> 3");
                    return null;
                }
                return getFileFromUri(uri2, "_id=?", new String[]{strArrSplit2[1]}, 4);
            }
            if ("content".equals(scheme)) {
                return getFileFromUri(uri, 5);
            }
            Log.d("UriUtils", uri.toString() + " parse failed. -> 6");
            return null;
        }
        if ("content".equals(scheme)) {
            return getFileFromUri(uri, 7);
        }
        Log.d("UriUtils", uri.toString() + " parse failed. -> 8");
        return null;
    }

    private static File getFileFromUri(Uri uri, int i) {
        return getFileFromUri(uri, null, null, i);
    }

    private static File getFileFromUri(Uri uri, String str, String[] strArr, int i) {
        Cursor cursorQuery = Utils.getApp().getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
        try {
            if (cursorQuery == null) {
                Log.d("UriUtils", uri.toString() + " parse failed(cursor is null). -> " + i);
                return null;
            }
            if (!cursorQuery.moveToFirst()) {
                Log.d("UriUtils", uri.toString() + " parse failed(moveToFirst return false). -> " + i);
                return null;
            }
            int columnIndex = cursorQuery.getColumnIndex("_data");
            if (columnIndex > -1) {
                return new File(cursorQuery.getString(columnIndex));
            }
            Log.d("UriUtils", uri.toString() + " parse failed(columnIndex: " + columnIndex + " is wrong). -> " + i);
            return null;
        } catch (Exception unused) {
            Log.d("UriUtils", uri.toString() + " parse failed. -> " + i);
            return null;
        } finally {
            cursorQuery.close();
        }
    }
}
