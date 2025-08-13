package com.yuyh.library.imgsel.config;

import android.os.Environment;
import com.yuyh.library.imgsel.utils.FileUtils;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class ISCameraConfig implements Serializable {
    public int aspectX;
    public int aspectY;
    public String filePath;
    public boolean needCrop;
    public int outputX;
    public int outputY;

    public ISCameraConfig(Builder builder) {
        this.aspectX = 1;
        this.aspectY = 1;
        this.outputX = 500;
        this.outputY = 500;
        this.needCrop = builder.needCrop;
        this.filePath = builder.filePath;
        this.aspectX = builder.aspectX;
        this.aspectY = builder.aspectY;
        this.outputX = builder.outputX;
        this.outputY = builder.outputY;
    }

    public static class Builder implements Serializable {
        private String filePath;
        private boolean needCrop = false;
        private int aspectX = 1;
        private int aspectY = 1;
        private int outputX = 400;
        private int outputY = 400;

        public Builder() {
            if (FileUtils.isSdCardAvailable()) {
                this.filePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Camera";
            } else {
                this.filePath = Environment.getRootDirectory().getAbsolutePath() + "/Camera";
            }
            FileUtils.createDir(this.filePath);
        }

        public Builder needCrop(boolean z) {
            this.needCrop = z;
            return this;
        }

        private Builder filePath(String str) {
            this.filePath = str;
            return this;
        }

        public Builder cropSize(int i, int i2, int i3, int i4) {
            this.aspectX = i;
            this.aspectY = i2;
            this.outputX = i3;
            this.outputY = i4;
            return this;
        }

        public ISCameraConfig build() {
            return new ISCameraConfig(this);
        }
    }
}
