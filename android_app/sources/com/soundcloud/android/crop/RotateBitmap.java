package com.soundcloud.android.crop;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* loaded from: classes.dex */
class RotateBitmap {
    private Bitmap bitmap;
    private int rotation;

    public RotateBitmap(Bitmap bitmap, int i) {
        this.bitmap = bitmap;
        this.rotation = i % 360;
    }

    public void setRotation(int i) {
        this.rotation = i;
    }

    public int getRotation() {
        return this.rotation;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public void setBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public Matrix getRotateMatrix() {
        Matrix matrix = new Matrix();
        if (this.bitmap != null && this.rotation != 0) {
            matrix.preTranslate(-(r1.getWidth() / 2), -(this.bitmap.getHeight() / 2));
            matrix.postRotate(this.rotation);
            matrix.postTranslate(getWidth() / 2, getHeight() / 2);
        }
        return matrix;
    }

    public boolean isOrientationChanged() {
        return (this.rotation / 90) % 2 != 0;
    }

    public int getHeight() {
        if (this.bitmap == null) {
            return 0;
        }
        if (isOrientationChanged()) {
            return this.bitmap.getWidth();
        }
        return this.bitmap.getHeight();
    }

    public int getWidth() {
        if (this.bitmap == null) {
            return 0;
        }
        if (isOrientationChanged()) {
            return this.bitmap.getHeight();
        }
        return this.bitmap.getWidth();
    }

    public void recycle() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.bitmap = null;
        }
    }
}
