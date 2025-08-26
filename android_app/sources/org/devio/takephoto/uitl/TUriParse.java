package org.devio.takephoto.uitl;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.devio.takephoto.model.TException;
import org.devio.takephoto.model.TExceptionType;

/* loaded from: classes2.dex */
public class TUriParse {
    private static final String TAG = IntentUtils.class.getName();

    public static Uri convertFileUriToFileProviderUri(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        return "file".equals(uri.getScheme()) ? getUriForFile(context, new File(uri.getPath())) : uri;
    }

    public static Uri getTempUri(Context context) {
        String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
        File file = new File(Environment.getExternalStorageDirectory(), "/images/" + str + ".jpg");
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        return getUriForFile(context, file);
    }

    public static Uri getTempUri(Context context, String str) {
        return getTempUri(context, new File(str));
    }

    public static Uri getTempUri(Context context, File file) {
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        return getUriForFile(context, file);
    }

    public static Uri getUriForFile(Context context, File file) {
        return FileProvider.getUriForFile(context, TConstant.getFileProviderName(context), file);
    }

    public static String parseOwnUri(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        if (TextUtils.equals(uri.getAuthority(), TConstant.getFileProviderName(context))) {
            return new File(uri.getPath().replace("camera_photos/", "")).getAbsolutePath();
        }
        return uri.getPath();
    }

    public static String getFilePathWithUri(Uri uri, Activity activity) throws TException {
        if (uri == null) {
            Log.w(TAG, "uri is null,activity may have been recovered?");
            throw new TException(TExceptionType.TYPE_URI_NULL);
        }
        File fileWithUri = getFileWithUri(uri, activity);
        String path = fileWithUri == null ? null : fileWithUri.getPath();
        if (TextUtils.isEmpty(path)) {
            throw new TException(TExceptionType.TYPE_URI_PARSE_FAIL);
        }
        if (TImageFiles.checkMimeType(activity, TImageFiles.getMimeType(activity, uri))) {
            return path;
        }
        throw new TException(TExceptionType.TYPE_NOT_IMAGE);
    }

    public static File getFileWithUri(Uri uri, Activity activity) {
        String path;
        String scheme = uri.getScheme();
        if ("content".equals(scheme)) {
            String[] strArr = {"_data"};
            Cursor cursorQuery = activity.getContentResolver().query(uri, strArr, null, null, null);
            cursorQuery.moveToFirst();
            int columnIndex = cursorQuery.getColumnIndex(strArr[0]);
            if (columnIndex >= 0) {
                path = cursorQuery.getString(columnIndex);
            } else {
                path = TextUtils.equals(uri.getAuthority(), TConstant.getFileProviderName(activity)) ? parseOwnUri(activity, uri) : null;
            }
            cursorQuery.close();
        } else {
            path = "file".equals(scheme) ? uri.getPath() : null;
        }
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return new File(path);
    }

    public static String getFilePathWithDocumentsUri(Uri uri, Activity activity) throws Throwable {
        if (uri == null) {
            Log.e(TAG, "uri is null,activity may have been recovered?");
            return null;
        }
        if ("content".equals(uri.getScheme()) && uri.getPath().contains("document")) {
            File tempFile = TImageFiles.getTempFile(activity, uri);
            try {
                TImageFiles.inputStreamToFile(activity.getContentResolver().openInputStream(uri), tempFile);
                return tempFile.getPath();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                throw new TException(TExceptionType.TYPE_NO_FIND);
            }
        }
        return getFilePathWithUri(uri, activity);
    }
}
