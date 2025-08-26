package org.devio.takephoto.model;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class TakePhotoOptions implements Serializable {
    private boolean correctImage;
    private boolean withOwnGallery;

    private TakePhotoOptions() {
    }

    public boolean isWithOwnGallery() {
        return this.withOwnGallery;
    }

    public void setWithOwnGallery(boolean z) {
        this.withOwnGallery = z;
    }

    public boolean isCorrectImage() {
        return this.correctImage;
    }

    public void setCorrectImage(boolean z) {
        this.correctImage = z;
    }

    public static class Builder {
        private TakePhotoOptions options = new TakePhotoOptions();

        public Builder setWithOwnGallery(boolean z) {
            this.options.setWithOwnGallery(z);
            return this;
        }

        public Builder setCorrectImage(boolean z) {
            this.options.setCorrectImage(z);
            return this;
        }

        public TakePhotoOptions create() {
            return this.options;
        }
    }
}
