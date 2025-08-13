package com.isseiaoki.simplecropview;

import android.graphics.RectF;
import android.net.Uri;
import com.isseiaoki.simplecropview.callback.LoadCallback;
import io.reactivex.Completable;

/* loaded from: classes.dex */
public class LoadRequest {
    private CropImageView cropImageView;
    private RectF initialFrameRect;
    private float initialFrameScale;
    private Uri sourceUri;
    private boolean useThumbnail;

    public LoadRequest(CropImageView cropImageView, Uri uri) {
        this.cropImageView = cropImageView;
        this.sourceUri = uri;
    }

    public LoadRequest initialFrameScale(float f) {
        this.initialFrameScale = f;
        return this;
    }

    public LoadRequest initialFrameRect(RectF rectF) {
        this.initialFrameRect = rectF;
        return this;
    }

    public LoadRequest useThumbnail(boolean z) {
        this.useThumbnail = z;
        return this;
    }

    public void execute(LoadCallback loadCallback) {
        if (this.initialFrameRect == null) {
            this.cropImageView.setInitialFrameScale(this.initialFrameScale);
        }
        this.cropImageView.loadAsync(this.sourceUri, this.useThumbnail, this.initialFrameRect, loadCallback);
    }

    public Completable executeAsCompletable() {
        if (this.initialFrameRect == null) {
            this.cropImageView.setInitialFrameScale(this.initialFrameScale);
        }
        return this.cropImageView.loadAsCompletable(this.sourceUri, this.useThumbnail, this.initialFrameRect);
    }
}
