package org.devio.takephoto.model;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class CropOptions implements Serializable {
    private int aspectX;
    private int aspectY;
    private int outputX;
    private int outputY;
    private boolean withOwnCrop;

    private CropOptions() {
    }

    public int getAspectX() {
        return this.aspectX;
    }

    public void setAspectX(int i) {
        this.aspectX = i;
    }

    public int getAspectY() {
        return this.aspectY;
    }

    public void setAspectY(int i) {
        this.aspectY = i;
    }

    public int getOutputX() {
        return this.outputX;
    }

    public void setOutputX(int i) {
        this.outputX = i;
    }

    public int getOutputY() {
        return this.outputY;
    }

    public void setOutputY(int i) {
        this.outputY = i;
    }

    public boolean isWithOwnCrop() {
        return this.withOwnCrop;
    }

    public void setWithOwnCrop(boolean z) {
        this.withOwnCrop = z;
    }

    public static class Builder {
        private CropOptions options = new CropOptions();

        public Builder setAspectX(int i) {
            this.options.setAspectX(i);
            return this;
        }

        public Builder setAspectY(int i) {
            this.options.setAspectY(i);
            return this;
        }

        public Builder setOutputX(int i) {
            this.options.setOutputX(i);
            return this;
        }

        public Builder setOutputY(int i) {
            this.options.setOutputY(i);
            return this;
        }

        public Builder setWithOwnCrop(boolean z) {
            this.options.setWithOwnCrop(z);
            return this;
        }

        public CropOptions create() {
            return this.options;
        }
    }
}
