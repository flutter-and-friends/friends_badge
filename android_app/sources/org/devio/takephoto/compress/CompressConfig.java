package org.devio.takephoto.compress;

import java.io.Serializable;
import org.devio.takephoto.model.LubanOptions;

/* loaded from: classes2.dex */
public class CompressConfig implements Serializable {
    private boolean enablePixelCompress;
    private boolean enableQualityCompress;
    private boolean enableReserveRaw;
    private LubanOptions lubanOptions;
    private int maxPixel;
    private int maxSize;

    public static CompressConfig ofDefaultConfig() {
        return new CompressConfig();
    }

    public static CompressConfig ofLuban(LubanOptions lubanOptions) {
        return new CompressConfig(lubanOptions);
    }

    private CompressConfig() {
        this.maxPixel = 1200;
        this.maxSize = 102400;
        this.enablePixelCompress = true;
        this.enableQualityCompress = true;
        this.enableReserveRaw = true;
    }

    private CompressConfig(LubanOptions lubanOptions) {
        this.maxPixel = 1200;
        this.maxSize = 102400;
        this.enablePixelCompress = true;
        this.enableQualityCompress = true;
        this.enableReserveRaw = true;
        this.lubanOptions = lubanOptions;
    }

    public LubanOptions getLubanOptions() {
        return this.lubanOptions;
    }

    public int getMaxPixel() {
        return this.maxPixel;
    }

    public CompressConfig setMaxPixel(int i) {
        this.maxPixel = i;
        return this;
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    public void setMaxSize(int i) {
        this.maxSize = i;
    }

    public boolean isEnablePixelCompress() {
        return this.enablePixelCompress;
    }

    public void enablePixelCompress(boolean z) {
        this.enablePixelCompress = z;
    }

    public boolean isEnableQualityCompress() {
        return this.enableQualityCompress;
    }

    public void enableQualityCompress(boolean z) {
        this.enableQualityCompress = z;
    }

    public boolean isEnableReserveRaw() {
        return this.enableReserveRaw;
    }

    public void enableReserveRaw(boolean z) {
        this.enableReserveRaw = z;
    }

    public static class Builder {
        private CompressConfig config = new CompressConfig();

        public Builder setMaxSize(int i) {
            this.config.setMaxSize(i);
            return this;
        }

        public Builder setMaxPixel(int i) {
            this.config.setMaxPixel(i);
            return this;
        }

        public Builder enablePixelCompress(boolean z) {
            this.config.enablePixelCompress(z);
            return this;
        }

        public Builder enableQualityCompress(boolean z) {
            this.config.enableQualityCompress(z);
            return this;
        }

        public Builder enableReserveRaw(boolean z) {
            this.config.enableReserveRaw(z);
            return this;
        }

        public CompressConfig create() {
            return this.config;
        }
    }
}
