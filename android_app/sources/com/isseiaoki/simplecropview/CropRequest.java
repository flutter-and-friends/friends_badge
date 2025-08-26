package com.isseiaoki.simplecropview;

import android.graphics.Bitmap;
import android.net.Uri;
import com.isseiaoki.simplecropview.callback.CropCallback;
import io.reactivex.Single;

/* loaded from: classes.dex */
public class CropRequest {
    private CropImageView cropImageView;
    private int outputHeight;
    private int outputMaxHeight;
    private int outputMaxWidth;
    private int outputWidth;
    private Uri sourceUri;

    public CropRequest(CropImageView cropImageView, Uri uri) {
        this.cropImageView = cropImageView;
        this.sourceUri = uri;
    }

    public CropRequest outputWidth(int i) {
        this.outputWidth = i;
        this.outputHeight = 0;
        return this;
    }

    public CropRequest outputHeight(int i) {
        this.outputHeight = i;
        this.outputWidth = 0;
        return this;
    }

    public CropRequest outputMaxWidth(int i) {
        this.outputMaxWidth = i;
        return this;
    }

    public CropRequest outputMaxHeight(int i) {
        this.outputMaxHeight = i;
        return this;
    }

    private void build() {
        int i = this.outputWidth;
        if (i > 0) {
            this.cropImageView.setOutputWidth(i);
        }
        int i2 = this.outputHeight;
        if (i2 > 0) {
            this.cropImageView.setOutputHeight(i2);
        }
        this.cropImageView.setOutputMaxSize(this.outputMaxWidth, this.outputMaxHeight);
    }

    public void execute(CropCallback cropCallback) {
        build();
        this.cropImageView.cropAsync(this.sourceUri, cropCallback);
    }

    public Single<Bitmap> executeAsSingle() {
        build();
        return this.cropImageView.cropAsSingle(this.sourceUri);
    }
}
