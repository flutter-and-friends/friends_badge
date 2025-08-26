package com.yuyh.library.imgsel.p017ui;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.yanzhenjie.permission.runtime.Permission;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.common.Callback;
import com.yuyh.library.imgsel.common.Constant;
import com.yuyh.library.imgsel.config.ISListConfig;
import com.yuyh.library.imgsel.p017ui.fragment.ImgSelFragment;
import com.yuyh.library.imgsel.utils.FileUtils;
import com.yuyh.library.imgsel.utils.StatusBarCompat;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ISListActivity extends AppCompatActivity implements View.OnClickListener, Callback {
    private static final int IMAGE_CROP_CODE = 1;
    public static final String INTENT_RESULT = "result";
    private static final int STORAGE_REQUEST_CODE = 1;
    private Button btnConfirm;
    private ISListConfig config;
    private String cropImagePath;
    private ImgSelFragment fragment;
    private ImageView ivBack;
    private ArrayList<String> result = new ArrayList<>();
    private RelativeLayout rlTitleBar;
    private TextView tvTitle;

    public static void startForResult(Activity activity, ISListConfig iSListConfig, int i) {
        Intent intent = new Intent(activity, (Class<?>) ISListActivity.class);
        intent.putExtra("config", iSListConfig);
        activity.startActivityForResult(intent, i);
    }

    public static void startForResult(Fragment fragment, ISListConfig iSListConfig, int i) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) ISListActivity.class);
        intent.putExtra("config", iSListConfig);
        fragment.startActivityForResult(intent, i);
    }

    public static void startForResult(android.app.Fragment fragment, ISListConfig iSListConfig, int i) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) ISListActivity.class);
        intent.putExtra("config", iSListConfig);
        fragment.startActivityForResult(intent, i);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1457R.layout.activity_img_sel);
        this.config = (ISListConfig) getIntent().getSerializableExtra("config");
        if (ContextCompat.checkSelfPermission(this, Permission.WRITE_EXTERNAL_STORAGE) != 0) {
            ActivityCompat.requestPermissions(this, new String[]{Permission.WRITE_EXTERNAL_STORAGE}, 1);
        } else {
            this.fragment = ImgSelFragment.instance();
            getSupportFragmentManager().beginTransaction().add(C1457R.id.fmImageList, this.fragment, null).commit();
        }
        initView();
        if (FileUtils.isSdCardAvailable()) {
            return;
        }
        Toast.makeText(this, getString(C1457R.string.sd_disable), 0).show();
    }

    private void initView() {
        this.rlTitleBar = (RelativeLayout) findViewById(C1457R.id.rlTitleBar);
        this.tvTitle = (TextView) findViewById(C1457R.id.tvTitle);
        this.btnConfirm = (Button) findViewById(C1457R.id.btnConfirm);
        this.btnConfirm.setOnClickListener(this);
        this.ivBack = (ImageView) findViewById(C1457R.id.ivBack);
        this.ivBack.setOnClickListener(this);
        ISListConfig iSListConfig = this.config;
        if (iSListConfig != null) {
            if (iSListConfig.backResId != -1) {
                this.ivBack.setImageResource(this.config.backResId);
            }
            if (this.config.statusBarColor != -1) {
                StatusBarCompat.compat(this, this.config.statusBarColor, this.config.isDark);
                if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 21) {
                    getWindow().addFlags(67108864);
                }
            }
            this.rlTitleBar.setBackgroundColor(this.config.titleBgColor);
            this.tvTitle.setTextColor(this.config.titleColor);
            this.tvTitle.setText(this.config.title);
            this.btnConfirm.setBackgroundColor(this.config.btnBgColor);
            this.btnConfirm.setTextColor(this.config.btnTextColor);
            if (this.config.multiSelect) {
                if (!this.config.rememberSelected) {
                    Constant.imageList.clear();
                }
                this.btnConfirm.setText(String.format(getString(C1457R.string.confirm_format), this.config.btnText, Integer.valueOf(Constant.imageList.size()), Integer.valueOf(this.config.maxNum)));
            } else {
                Constant.imageList.clear();
                this.btnConfirm.setVisibility(8);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == C1457R.id.btnConfirm) {
            if (Constant.imageList != null && !Constant.imageList.isEmpty()) {
                exit();
                return;
            } else {
                Toast.makeText(this, getString(C1457R.string.minnum), 0).show();
                return;
            }
        }
        if (id == C1457R.id.ivBack) {
            onBackPressed();
        }
    }

    @Override // com.yuyh.library.imgsel.common.Callback
    public void onSingleImageSelected(String str) {
        if (this.config.needCrop) {
            crop(str);
        } else {
            Constant.imageList.add(str);
            exit();
        }
    }

    @Override // com.yuyh.library.imgsel.common.Callback
    public void onImageSelected(String str) {
        this.btnConfirm.setText(String.format(getString(C1457R.string.confirm_format), this.config.btnText, Integer.valueOf(Constant.imageList.size()), Integer.valueOf(this.config.maxNum)));
    }

    @Override // com.yuyh.library.imgsel.common.Callback
    public void onImageUnselected(String str) {
        this.btnConfirm.setText(String.format(getString(C1457R.string.confirm_format), this.config.btnText, Integer.valueOf(Constant.imageList.size()), Integer.valueOf(this.config.maxNum)));
    }

    @Override // com.yuyh.library.imgsel.common.Callback
    public void onCameraShot(File file) {
        if (file != null) {
            if (this.config.needCrop) {
                crop(file.getAbsolutePath());
                return;
            }
            Constant.imageList.add(file.getAbsolutePath());
            this.config.multiSelect = false;
            exit();
        }
    }

    @Override // com.yuyh.library.imgsel.common.Callback
    public void onPreviewChanged(int i, int i2, boolean z) {
        if (z) {
            this.tvTitle.setText(i + "/" + i2);
            return;
        }
        this.tvTitle.setText(this.config.title);
    }

    private void crop(String str) {
        File file = new File(FileUtils.createRootPath(this) + "/" + System.currentTimeMillis() + ".jpg");
        this.cropImagePath = file.getAbsolutePath();
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
        intent.putExtra("output", Uri.fromFile(file));
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        startActivityForResult(intent, 1);
    }

    public Uri getImageContentUri(File file) {
        String absolutePath = file.getAbsolutePath();
        Cursor cursorQuery = getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{absolutePath}, null);
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            int i = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
            return Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), "" + i);
        }
        if (!file.exists()) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", absolutePath);
        return getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    public ISListConfig getConfig() {
        return this.config;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            Constant.imageList.add(this.cropImagePath);
            this.config.multiSelect = false;
            exit();
        }
        super.onActivityResult(i, i2, intent);
    }

    public void exit() {
        Intent intent = new Intent();
        this.result.clear();
        this.result.addAll(Constant.imageList);
        intent.putStringArrayListExtra(INTENT_RESULT, this.result);
        setResult(-1, intent);
        if (!this.config.multiSelect) {
            Constant.imageList.clear();
        }
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 1) {
            return;
        }
        if (iArr.length >= 1 && iArr[0] == 0) {
            getSupportFragmentManager().beginTransaction().add(C1457R.id.fmImageList, ImgSelFragment.instance(), null).commitAllowingStateLoss();
        } else {
            Toast.makeText(this, getString(C1457R.string.permission_storage_denied), 0).show();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("config", this.config);
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.config = (ISListConfig) bundle.getSerializable("config");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ImgSelFragment imgSelFragment = this.fragment;
        if (imgSelFragment == null || !imgSelFragment.hidePreview()) {
            Constant.imageList.clear();
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
