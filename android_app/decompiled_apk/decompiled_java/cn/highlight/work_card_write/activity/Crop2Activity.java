package cn.highlight.work_card_write.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
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
public class Crop2Activity extends BaseActivity {
    private String convertName;

    @BindView(R.id.cropView)
    CropImageView cropView;
    private String imagePath;
    private Uri imageUri;
    private String originalPath;

    @BindView(R.id.tvCancel)
    TextView tvCancel;

    @BindView(R.id.tvSure)
    TextView tvSure;
    private int type;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_crop2;
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
        this.imageUri = getIntent().hasExtra("uri") ? (Uri) getIntent().getParcelableExtra("uri") : null;
        this.imagePath = getIntent().hasExtra("imageFile") ? getIntent().getStringExtra("imageFile") : "";
        this.originalPath = getIntent().hasExtra("originalPath") ? getIntent().getStringExtra("originalPath") : "";
        if (this.imageUri == null) {
            this.imageUri = Uri.fromFile(new File(this.imagePath));
        }
        initUri();
        initCrop();
    }

    private void initUri() throws IOException {
        File fileConvertBmpToPngAndReturnUri = ImageUtils.convertBmpToPngAndReturnUri(this, this.imageUri);
        if (fileConvertBmpToPngAndReturnUri != null) {
            this.imageUri = Uri.fromFile(fileConvertBmpToPngAndReturnUri);
            this.convertName = fileConvertBmpToPngAndReturnUri.getName();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initCrop() {
        char c;
        Constants.editCrop2Image = null;
        this.cropView.load(this.imageUri).execute(new LoadCallback() { // from class: cn.highlight.work_card_write.activity.Crop2Activity.1
            @Override // com.isseiaoki.simplecropview.callback.LoadCallback
            public void onSuccess() {
            }

            @Override // com.isseiaoki.simplecropview.callback.Callback
            public void onError(Throwable th) {
                Crop2Activity crop2Activity = Crop2Activity.this;
                ToastUtil.showToast(crop2Activity, crop2Activity.getResources().getString(R.string.crop_load_error));
            }
        });
        this.cropView.setAnimationEnabled(true);
        this.cropView.setAnimationDuration(100);
        if (this.type == 1) {
            this.cropView.setCropMode(CropImageView.CropMode.FREE);
            return;
        }
        int i = 416;
        String str = Constants.editSize;
        int iHashCode = str.hashCode();
        if (iHashCode != 49530) {
            c = (iHashCode == 49533 && str.equals("2.9")) ? (char) 1 : (char) 65535;
        } else if (str.equals("2.6")) {
            c = 0;
        }
        int i2 = 296;
        if (c == 0) {
            i = 152;
        } else if (c != 1) {
            i2 = EnumG.BaseMid_SafeCertification;
        } else {
            i = 128;
        }
        this.cropView.setCustomRatio(i2, i);
    }

    @OnClick({R.id.tvCancel, R.id.tvSure})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != R.id.tvCancel) {
            if (id != R.id.tvSure) {
                return;
            }
            this.cropView.crop(this.imageUri).execute(new CropCallback() { // from class: cn.highlight.work_card_write.activity.Crop2Activity.2
                @Override // com.isseiaoki.simplecropview.callback.Callback
                public void onError(Throwable th) {
                }

                @Override // com.isseiaoki.simplecropview.callback.CropCallback
                public void onSuccess(Bitmap bitmap) {
                    Constants.editCrop2Image = bitmap;
                    Crop2Activity.this.setResult(-1, new Intent());
                    Crop2Activity.this.finishActivity();
                }
            });
        } else {
            deleteOriginalImage();
            Constants.editCrop2Image = null;
            finishActivity();
        }
    }

    private void deleteOriginalImage() {
        if (!Tools.isNull(this.originalPath)) {
            File file = new File(this.originalPath);
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
