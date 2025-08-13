package com.isseiaoki.simplecropview;

import android.graphics.Bitmap;
import android.net.Uri;
import com.isseiaoki.simplecropview.callback.SaveCallback;
import io.reactivex.Single;

/* loaded from: classes.dex */
public class SaveRequest {
    private Bitmap.CompressFormat compressFormat;
    private int compressQuality = -1;
    private CropImageView cropImageView;
    private Bitmap image;

    public SaveRequest(CropImageView cropImageView, Bitmap bitmap) {
        this.cropImageView = cropImageView;
        this.image = bitmap;
    }

    public SaveRequest compressFormat(Bitmap.CompressFormat compressFormat) {
        this.compressFormat = compressFormat;
        return this;
    }

    public SaveRequest compressQuality(int i) {
        this.compressQuality = i;
        return this;
    }

    private void build() {
        Bitmap.CompressFormat compressFormat = this.compressFormat;
        if (compressFormat != null) {
            this.cropImageView.setCompressFormat(compressFormat);
        }
        int i = this.compressQuality;
        if (i >= 0) {
            this.cropImageView.setCompressQuality(i);
        }
    }

    public void execute(Uri uri, SaveCallback saveCallback) {
        build();
        this.cropImageView.saveAsync(uri, this.image, saveCallback);
    }

    public Single<Uri> executeAsSingle(Uri uri) {
        build();
        return this.cropImageView.saveAsSingle(this.image, uri);
    }
}
