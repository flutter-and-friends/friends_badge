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
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.util.ImageUtils;
import com.isseiaoki.simplecropview.CropImageView;
import com.isseiaoki.simplecropview.callback.CropCallback;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class Crop2Activity extends BaseActivity {
    private String convertName;

    @BindView(C0498R.id.cropView)
    CropImageView cropView;
    private String imagePath;
    private Uri imageUri;
    private String originalPath;

    @BindView(C0498R.id.tvCancel)
    TextView tvCancel;

    @BindView(C0498R.id.tvSure)
    TextView tvSure;
    private int type;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_crop2;
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
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void initCrop() {
        /*
            r7 = this;
            r0 = 0
            cn.highlight.work_card_write.Constants.editCrop2Image = r0
            com.isseiaoki.simplecropview.CropImageView r0 = r7.cropView
            android.net.Uri r1 = r7.imageUri
            com.isseiaoki.simplecropview.LoadRequest r0 = r0.load(r1)
            cn.highlight.work_card_write.activity.Crop2Activity$1 r1 = new cn.highlight.work_card_write.activity.Crop2Activity$1
            r1.<init>()
            r0.execute(r1)
            com.isseiaoki.simplecropview.CropImageView r0 = r7.cropView
            r1 = 1
            r0.setAnimationEnabled(r1)
            com.isseiaoki.simplecropview.CropImageView r0 = r7.cropView
            r2 = 100
            r0.setAnimationDuration(r2)
            int r0 = r7.type
            if (r0 != r1) goto L2c
            com.isseiaoki.simplecropview.CropImageView r0 = r7.cropView
            com.isseiaoki.simplecropview.CropImageView$CropMode r1 = com.isseiaoki.simplecropview.CropImageView.CropMode.FREE
            r0.setCropMode(r1)
            goto L6a
        L2c:
            r0 = 240(0xf0, float:3.36E-43)
            r2 = 416(0x1a0, float:5.83E-43)
            java.lang.String r3 = cn.highlight.work_card_write.Constants.editSize
            r4 = -1
            int r5 = r3.hashCode()
            r6 = 49530(0xc17a, float:6.9406E-41)
            if (r5 == r6) goto L4c
            r6 = 49533(0xc17d, float:6.941E-41)
            if (r5 == r6) goto L42
            goto L56
        L42:
            java.lang.String r5 = "2.9"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L56
            r3 = 1
            goto L57
        L4c:
            java.lang.String r5 = "2.6"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L56
            r3 = 0
            goto L57
        L56:
            r3 = -1
        L57:
            r4 = 296(0x128, float:4.15E-43)
            if (r3 == 0) goto L63
            if (r3 == r1) goto L60
            r4 = 240(0xf0, float:3.36E-43)
            goto L65
        L60:
            r2 = 128(0x80, float:1.8E-43)
            goto L65
        L63:
            r2 = 152(0x98, float:2.13E-43)
        L65:
            com.isseiaoki.simplecropview.CropImageView r0 = r7.cropView
            r0.setCustomRatio(r4, r2)
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.Crop2Activity.initCrop():void");
    }

    @OnClick({C0498R.id.tvCancel, C0498R.id.tvSure})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != C0498R.id.tvCancel) {
            if (id != C0498R.id.tvSure) {
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
