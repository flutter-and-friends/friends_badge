package com.yuyh.library.imgsel.p017ui;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import com.yanzhenjie.permission.runtime.Permission;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.bean.Image;
import com.yuyh.library.imgsel.config.ISCameraConfig;
import com.yuyh.library.imgsel.utils.FileUtils;
import com.yuyh.library.imgsel.utils.LogUtils;
import com.yuyh.library.imgsel.utils.StatusBarCompat;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ISCameraActivity extends AppCompatActivity {
    private static final int CAMERA_REQUEST_CODE = 2;
    private static final int IMAGE_CROP_CODE = 1;
    private static final int REQUEST_CAMERA = 5;
    private ISCameraConfig config;
    private File cropImageFile;
    private File tempPhotoFile;

    public static void startForResult(Activity activity, ISCameraConfig iSCameraConfig, int i) {
        Intent intent = new Intent(activity, (Class<?>) ISCameraActivity.class);
        intent.putExtra("config", iSCameraConfig);
        activity.startActivityForResult(intent, i);
    }

    public static void startForResult(Fragment fragment, ISCameraConfig iSCameraConfig, int i) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) ISCameraActivity.class);
        intent.putExtra("config", iSCameraConfig);
        fragment.startActivityForResult(intent, i);
    }

    public static void startForResult(android.app.Fragment fragment, ISCameraConfig iSCameraConfig, int i) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) ISCameraActivity.class);
        intent.putExtra("config", iSCameraConfig);
        fragment.startActivityForResult(intent, i);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        StatusBarCompat.compatTransStatusBar(this, 858993459, true);
        super.onCreate(bundle);
        this.config = (ISCameraConfig) getIntent().getSerializableExtra("config");
        if (this.config == null) {
            return;
        }
        camera();
    }

    private void camera() throws IOException {
        if (ContextCompat.checkSelfPermission(this, Permission.CAMERA) != 0 || ContextCompat.checkSelfPermission(this, Permission.WRITE_EXTERNAL_STORAGE) != 0) {
            requestPermissions(new String[]{Permission.CAMERA, Permission.WRITE_EXTERNAL_STORAGE}, 2);
            return;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            this.tempPhotoFile = new File(FileUtils.createRootPath(this) + "/" + System.currentTimeMillis() + ".jpg");
            LogUtils.m833e(this.tempPhotoFile.getAbsolutePath());
            FileUtils.createFile(this.tempPhotoFile);
            Uri uriForFile = FileProvider.getUriForFile(this, FileUtils.getApplicationId(this) + ".image_provider", this.tempPhotoFile);
            Iterator<ResolveInfo> it = getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (it.hasNext()) {
                grantUriPermission(it.next().activityInfo.packageName, uriForFile, 3);
            }
            intent.putExtra("output", uriForFile);
            startActivityForResult(intent, 5);
            return;
        }
        Toast.makeText(this, getResources().getString(C1457R.string.open_camera_failure), 0).show();
    }

    private void crop(String str) {
        this.cropImageFile = new File(FileUtils.createRootPath(this) + "/" + System.currentTimeMillis() + ".jpg");
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(getImageContentUri(new File(str)), "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", this.config.aspectX);
        intent.putExtra("aspectY", this.config.aspectY);
        intent.putExtra("outputX", this.config.outputX);
        intent.putExtra("outputY", this.config.outputY);
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("return-data", false);
        intent.putExtra("output", Uri.fromFile(this.cropImageFile));
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        startActivityForResult(intent, 1);
    }

    public Uri getImageContentUri(File file) {
        String absolutePath = file.getAbsolutePath();
        Cursor cursorQuery = getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{absolutePath}, null);
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            int i = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
            Uri uri = Uri.parse("content://media/external/images/media");
            cursorQuery.close();
            return Uri.withAppendedPath(uri, "" + i);
        }
        if (!file.exists()) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", absolutePath);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    private void complete(Image image) {
        Intent intent = new Intent();
        if (image != null) {
            intent.putExtra(ISListActivity.INTENT_RESULT, image.path);
        }
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            complete(new Image(this.cropImageFile.getPath(), this.cropImageFile.getName()));
            return;
        }
        if (i != 5) {
            finish();
            return;
        }
        if (i2 == -1) {
            if (this.tempPhotoFile != null) {
                if (this.config.needCrop) {
                    crop(this.tempPhotoFile.getAbsolutePath());
                    return;
                } else {
                    complete(new Image(this.tempPhotoFile.getPath(), this.tempPhotoFile.getName()));
                    return;
                }
            }
            return;
        }
        File file = this.tempPhotoFile;
        if (file != null && file.exists()) {
            this.tempPhotoFile.delete();
        }
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IOException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 2) {
            return;
        }
        if (iArr.length >= 2 && iArr[0] == 0 && iArr[1] == 0) {
            camera();
        } else {
            Toast.makeText(this, getResources().getString(C1457R.string.permission_camera_denied), 0).show();
        }
    }
}
