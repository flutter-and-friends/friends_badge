package com.yuyh.library.imgsel.config;

import android.graphics.Color;
import android.os.Environment;
import com.yuyh.library.imgsel.utils.FileUtils;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class ISListConfig implements Serializable {
    public String allImagesText;
    public int aspectX;
    public int aspectY;
    public int backResId;
    public int btnBgColor;
    public String btnText;
    public int btnTextColor;
    public String filePath;
    public boolean isDark;
    public int maxNum;
    public boolean multiSelect;
    public boolean needCamera;
    public boolean needCrop;
    public int outputX;
    public int outputY;
    public boolean rememberSelected;
    public int statusBarColor;
    public String title;
    public int titleBgColor;
    public int titleColor;

    public ISListConfig(Builder builder) {
        this.multiSelect = false;
        this.rememberSelected = true;
        this.maxNum = 9;
        this.statusBarColor = -1;
        this.isDark = false;
        this.backResId = -1;
        this.aspectX = 1;
        this.aspectY = 1;
        this.outputX = 500;
        this.outputY = 500;
        this.needCrop = builder.needCrop;
        this.multiSelect = builder.multiSelect;
        this.rememberSelected = builder.rememberSelected;
        this.maxNum = builder.maxNum;
        this.needCamera = builder.needCamera;
        this.statusBarColor = builder.statusBarColor;
        this.isDark = builder.isDark;
        this.backResId = builder.backResId;
        this.title = builder.title;
        this.titleBgColor = builder.titleBgColor;
        this.titleColor = builder.titleColor;
        this.btnText = builder.btnText;
        this.btnBgColor = builder.btnBgColor;
        this.btnTextColor = builder.btnTextColor;
        this.allImagesText = builder.allImagesText;
        this.filePath = builder.filePath;
        this.aspectX = builder.aspectX;
        this.aspectY = builder.aspectY;
        this.outputX = builder.outputX;
        this.outputY = builder.outputY;
    }

    public static class Builder implements Serializable {
        private String allImagesText;
        private int btnBgColor;
        private String btnText;
        private int btnTextColor;
        private String filePath;
        private String title;
        private int titleBgColor;
        private int titleColor;
        private boolean needCrop = false;
        private boolean multiSelect = true;
        private boolean rememberSelected = true;
        private int maxNum = 9;
        private boolean needCamera = true;
        public int statusBarColor = -1;
        private boolean isDark = true;
        private int backResId = -1;
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
            this.title = "照片";
            this.titleBgColor = Color.parseColor("#3F51B5");
            this.titleColor = -1;
            this.btnText = "确定";
            this.btnBgColor = 0;
            this.btnTextColor = -1;
            this.allImagesText = "所有图片";
            FileUtils.createDir(this.filePath);
        }

        public Builder needCrop(boolean z) {
            this.needCrop = z;
            return this;
        }

        public Builder multiSelect(boolean z) {
            this.multiSelect = z;
            return this;
        }

        public Builder rememberSelected(boolean z) {
            this.rememberSelected = z;
            return this;
        }

        public Builder maxNum(int i) {
            this.maxNum = i;
            return this;
        }

        public Builder needCamera(boolean z) {
            this.needCamera = z;
            return this;
        }

        public Builder statusBarColor(int i) {
            this.statusBarColor = i;
            return this;
        }

        public Builder isDarkStatusStyle(boolean z) {
            this.isDark = z;
            return this;
        }

        public Builder backResId(int i) {
            this.backResId = i;
            return this;
        }

        public Builder title(String str) {
            this.title = str;
            return this;
        }

        public Builder titleColor(int i) {
            this.titleColor = i;
            return this;
        }

        public Builder titleBgColor(int i) {
            this.titleBgColor = i;
            return this;
        }

        public Builder btnText(String str) {
            this.btnText = str;
            return this;
        }

        public Builder btnTextColor(int i) {
            this.btnTextColor = i;
            return this;
        }

        public Builder btnBgColor(int i) {
            this.btnBgColor = i;
            return this;
        }

        public Builder allImagesText(String str) {
            this.allImagesText = str;
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

        public ISListConfig build() {
            return new ISListConfig(this);
        }
    }
}
