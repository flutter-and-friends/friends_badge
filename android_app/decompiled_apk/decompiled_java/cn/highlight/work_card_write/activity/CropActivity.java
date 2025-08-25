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
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.util.ImageUtils;
import com.gg.reader.api.protocol.gx.EnumG;
import com.isseiaoki.simplecropview.CropImageView;
import com.isseiaoki.simplecropview.callback.CropCallback;
import com.isseiaoki.simplecropview.callback.LoadCallback;
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
    */
    private void initCrop() {
        char c;
        this.cropView.load(this.imageUri).execute(new LoadCallback() { // from class: cn.highlight.work_card_write.activity.CropActivity.1
            @Override // com.isseiaoki.simplecropview.callback.LoadCallback
            public void onSuccess() {
            }

            @Override // com.isseiaoki.simplecropview.callback.Callback
            public void onError(Throwable th) {
                CropActivity cropActivity = CropActivity.this;
                ToastUtil.showToast(cropActivity, cropActivity.getResources().getString(R.string.crop_load_error));
            }
        });
        this.cropView.setAnimationEnabled(true);
        this.cropView.setAnimationDuration(100);
        String str = this.cropSize;
        int iHashCode = str.hashCode();
        if (iHashCode != 49530) {
            if (iHashCode != 49533) {
                c = (iHashCode == 50492 && str.equals("3.7")) ? (char) 2 : (char) 65535;
            } else if (str.equals("2.9")) {
                c = 1;
            }
        } else if (str.equals("2.6")) {
            c = 0;
        }
        if (c == 0) {
            this.cropView.setCustomRatio(296, 152);
        } else if (c == 1) {
            this.cropView.setCustomRatio(296, 128);
        } else {
            if (c != 2) {
                return;
            }
            this.cropView.setCustomRatio(EnumG.BaseMid_SafeCertification, 416);
        }
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
