package cn.highlight.work_card_write.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.util.ImageUtils;
import com.isseiaoki.simplecropview.CropImageView;
import com.isseiaoki.simplecropview.callback.CropCallback;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class CropActivity extends BaseActivity {
    private String convertName;
    private String cropColor;
    private String cropSize;

    @BindView(R.id.cropView)
    CropImageView cropView;

    @BindView(R.id.edit_color_black)
    TextView editColorBlack;

    @BindView(R.id.editColorLinear)
    LinearLayout editColorLinear;

    @BindView(R.id.edit_color_red)
    TextView editColorRed;

    @BindView(R.id.edit_color_white)
    TextView editColorWhite;

    @BindView(R.id.edit_color_yellow)
    TextView editColorYellow;

    @BindView(R.id.edit_size)
    TextView editSize;
    private String imagePath;
    private Uri imageUri;

    @BindView(R.id.img_turn_left)
    ImageView img_turn_left;

    @BindView(R.id.img_turn_right)
    ImageView img_turn_right;

    @BindView(R.id.tvCancel)
    TextView tvCancel;

    @BindView(R.id.tvSure)
    TextView tvSure;
    private int type;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_crop;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        setImmersionBar(true, false, "#333333");
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() throws IOException {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.enableReaderMode(this, null, 8, new Bundle());
        }
        this.type = getIntent().getIntExtra("type", 0);
        this.imageUri = (Uri) getIntent().getParcelableExtra("uri");
        this.imagePath = getIntent().hasExtra("originalPath") ? getIntent().getStringExtra("originalPath") : "";
        initUri();
        initSpecification();
        initCrop();
    }

    private void initUri() throws IOException {
        File fileConvertBmpToPngAndReturnUri = ImageUtils.convertBmpToPngAndReturnUri(this, this.imageUri);
        if (fileConvertBmpToPngAndReturnUri != null) {
            this.imageUri = Uri.fromFile(fileConvertBmpToPngAndReturnUri);
            this.convertName = fileConvertBmpToPngAndReturnUri.getName();
        }
    }

    private void initSpecification() {
        int i = this.type;
        if (i == 1 || i == 2) {
            this.cropSize = Constants.editSize;
            this.cropColor = Constants.editColor;
            this.editColorLinear.setVisibility(0);
        } else {
            this.cropSize = Constants.editSize;
            this.cropColor = "黑白红黄";
            this.editColorLinear.setVisibility(4);
        }
        this.editSize.setText(this.cropSize);
        this.editColorBlack.setVisibility(8);
        this.editColorWhite.setVisibility(8);
        this.editColorRed.setVisibility(8);
        this.editColorYellow.setVisibility(8);
        if (this.cropColor.contains("黑白")) {
            this.editColorBlack.setVisibility(0);
            this.editColorWhite.setVisibility(0);
        }
        if (this.cropColor.contains("红")) {
            this.editColorRed.setVisibility(0);
        }
        if (this.cropColor.contains("黄")) {
            this.editColorYellow.setVisibility(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initCrop() {
        /*
            r5 = this;
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            android.net.Uri r1 = r5.imageUri
            com.isseiaoki.simplecropview.LoadRequest r0 = r0.load(r1)
            cn.highlight.work_card_write.activity.CropActivity$1 r1 = new cn.highlight.work_card_write.activity.CropActivity$1
            r1.<init>()
            r0.execute(r1)
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            r1 = 1
            r0.setAnimationEnabled(r1)
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            r2 = 100
            r0.setAnimationDuration(r2)
            java.lang.String r0 = r5.cropSize
            int r2 = r0.hashCode()
            r3 = 49530(0xc17a, float:6.9406E-41)
            r4 = 2
            if (r2 == r3) goto L48
            r3 = 49533(0xc17d, float:6.941E-41)
            if (r2 == r3) goto L3e
            r3 = 50492(0xc53c, float:7.0754E-41)
            if (r2 == r3) goto L34
            goto L52
        L34:
            java.lang.String r2 = "3.7"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L52
            r0 = 2
            goto L53
        L3e:
            java.lang.String r2 = "2.9"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L52
            r0 = 1
            goto L53
        L48:
            java.lang.String r2 = "2.6"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L52
            r0 = 0
            goto L53
        L52:
            r0 = -1
        L53:
            r2 = 296(0x128, float:4.15E-43)
            if (r0 == 0) goto L6e
            if (r0 == r1) goto L66
            if (r0 == r4) goto L5c
            goto L75
        L5c:
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            r1 = 240(0xf0, float:3.36E-43)
            r2 = 416(0x1a0, float:5.83E-43)
            r0.setCustomRatio(r1, r2)
            goto L75
        L66:
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            r1 = 128(0x80, float:1.8E-43)
            r0.setCustomRatio(r2, r1)
            goto L75
        L6e:
            com.isseiaoki.simplecropview.CropImageView r0 = r5.cropView
            r1 = 152(0x98, float:2.13E-43)
            r0.setCustomRatio(r2, r1)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.CropActivity.initCrop():void");
    }

    @OnClick({R.id.img_turn_left, R.id.img_turn_right, R.id.tvCancel, R.id.tvSure})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.img_turn_left /* 2131296591 */:
                CropImageView cropImageView = this.cropView;
                if (cropImageView != null) {
                    cropImageView.rotateImage(CropImageView.RotateDegrees.ROTATE_M90D);
                    break;
                }
                break;
            case R.id.img_turn_right /* 2131296592 */:
                CropImageView cropImageView2 = this.cropView;
                if (cropImageView2 != null) {
                    cropImageView2.rotateImage(CropImageView.RotateDegrees.ROTATE_90D);
                    break;
                }
                break;
            case R.id.tvCancel /* 2131296931 */:
                deleteOriginalImage();
                Constants.editCropImage = null;
                finishActivity();
                break;
            case R.id.tvSure /* 2131296942 */:
                this.cropView.crop(this.imageUri).execute(new CropCallback() { // from class: cn.highlight.work_card_write.activity.CropActivity.2
                    @Override // com.isseiaoki.simplecropview.callback.Callback
                    public void onError(Throwable th) {
                    }

                    @Override // com.isseiaoki.simplecropview.callback.CropCallback
                    public void onSuccess(Bitmap bitmap) {
                        Constants.editCropImage = bitmap;
                        Intent intent = new Intent(CropActivity.this, (Class<?>) Model2Activity.class);
                        intent.putExtra("type", CropActivity.this.type);
                        CropActivity.this.startActivity(intent);
                        CropActivity.this.finishActivity();
                    }
                });
                break;
        }
    }

    private void deleteOriginalImage() {
        if (!Tools.isNull(this.imagePath)) {
            File file = new File(this.imagePath);
            if (file.exists()) {
                Log.e("TAG", "deleteOriginalImage: " + file.delete());
            }
        }
        if (Tools.isNull(this.convertName)) {
            return;
        }
        File file2 = new File(Constants.savePath + "/" + this.convertName);
        if (file2.exists()) {
            Log.e("TAG", "deleteConvertImage: " + file2.delete());
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        deleteOriginalImage();
    }
}
