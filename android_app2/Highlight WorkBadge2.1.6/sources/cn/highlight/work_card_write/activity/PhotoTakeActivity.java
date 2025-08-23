package cn.highlight.work_card_write.activity;

import android.content.Intent;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BasePhotoActivity;
import com.gyf.barlibrary.BarHide;
import com.gyf.barlibrary.ImmersionBar;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import org.devio.takephoto.model.TImage;
import org.devio.takephoto.model.TResult;
import org.devio.takephoto.model.TakePhotoOptions;

/* loaded from: classes.dex */
public class PhotoTakeActivity extends BasePhotoActivity {
    private Uri imageUri;
    private String originalImageName;
    private int type;

    @Override // cn.highlight.work_card_write.base.BasePhotoActivity
    protected int setLayoutId() {
        return R.layout.activity_photo_take;
    }

    @Override // cn.highlight.work_card_write.base.BasePhotoActivity
    protected void initViews(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ImmersionBar.with(this).hideBar(BarHide.FLAG_HIDE_NAVIGATION_BAR).init();
    }

    @Override // cn.highlight.work_card_write.base.BasePhotoActivity
    protected void initData() {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.enableReaderMode(this, null, 8, new Bundle());
        }
        this.type = getIntent().hasExtra("type") ? getIntent().getIntExtra("type", 0) : 0;
        this.originalImageName = System.currentTimeMillis() + ".png";
        File file = new File(Constants.savePath);
        File file2 = new File(file, this.originalImageName);
        if (file.exists() || file.mkdirs()) {
            this.imageUri = Uri.fromFile(file2);
            getTakePhoto().onEnableCompress(null, false);
            TakePhotoOptions.Builder builder = new TakePhotoOptions.Builder();
            builder.setWithOwnGallery(false);
            builder.setCorrectImage(true);
            getTakePhoto().setTakePhotoOptions(builder.create());
            int i = this.type;
            if (i == 1) {
                getTakePhoto().onPickFromCapture(this.imageUri);
                return;
            }
            switch (i) {
                case 6:
                    getTakePhoto().onPickFromCapture(this.imageUri);
                    break;
                case 7:
                    getTakePhoto().onPickFromGallery();
                    break;
                case 8:
                    getTakePhoto().onPickFromCapture(this.imageUri);
                    break;
                case 9:
                    getTakePhoto().onPickFromGallery();
                    break;
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // org.devio.takephoto.app.TakePhotoActivity, org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeCancel() {
        super.takeCancel();
        finishActivity();
    }

    @Override // org.devio.takephoto.app.TakePhotoActivity, org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeFail(TResult tResult, String str) {
        super.takeFail(tResult, str);
        finishActivity();
    }

    @Override // org.devio.takephoto.app.TakePhotoActivity, org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeSuccess(TResult tResult) {
        super.takeSuccess(tResult);
        setImage(tResult.getImages().get(0));
    }

    private void setImage(TImage tImage) {
        int i = this.type;
        if (i == 1) {
            Intent intent = new Intent(this, (Class<?>) CropActivity.class);
            intent.putExtra("type", this.type);
            intent.putExtra("uri", this.imageUri);
            intent.putExtra("originalPath", Constants.savePath + "/" + this.originalImageName);
            startActivity(intent);
            finishActivity();
        }
        switch (i) {
            case 6:
                Intent intent2 = new Intent(this, (Class<?>) Crop2Activity.class);
                intent2.putExtra("type", 0);
                intent2.putExtra("uri", this.imageUri);
                intent2.putExtra("originalPath", Constants.savePath + "/" + this.originalImageName);
                startActivityForResult(intent2, 0);
                break;
            case 7:
                Intent intent3 = new Intent(this, (Class<?>) Crop2Activity.class);
                intent3.putExtra("type", 0);
                intent3.putExtra("imageFile", tImage.getOriginalPath());
                intent3.putExtra("originalPath", Constants.savePath + "/" + this.originalImageName);
                startActivityForResult(intent3, 0);
                break;
            case 8:
                Intent intent4 = new Intent(this, (Class<?>) Crop2Activity.class);
                intent4.putExtra("type", 1);
                intent4.putExtra("uri", this.imageUri);
                intent4.putExtra("originalPath", Constants.savePath + "/" + this.originalImageName);
                startActivityForResult(intent4, 1);
                break;
            case 9:
                Intent intent5 = new Intent(this, (Class<?>) Crop2Activity.class);
                intent5.putExtra("type", 1);
                intent5.putExtra("imageFile", tImage.getOriginalPath());
                intent5.putExtra("originalPath", Constants.savePath + "/" + this.originalImageName);
                startActivityForResult(intent5, 1);
                break;
        }
    }

    @Override // org.devio.takephoto.app.TakePhotoActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            setResult(-1, intent);
            finishActivity();
        }
    }
}
