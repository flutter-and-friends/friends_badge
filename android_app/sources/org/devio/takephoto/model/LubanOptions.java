package org.devio.takephoto.model;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class LubanOptions implements Serializable {
    private int maxHeight;
    private int maxSize;
    private int maxWidth;

    private LubanOptions() {
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    public void setMaxSize(int i) {
        this.maxSize = i;
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    public static class Builder {
        private LubanOptions options = new LubanOptions();

        public Builder setMaxSize(int i) {
            this.options.setMaxSize(i);
            return this;
        }

        public Builder setMaxHeight(int i) {
            this.options.setMaxHeight(i);
            return this;
        }

        public Builder setMaxWidth(int i) {
            this.options.setMaxWidth(i);
            return this;
        }

        public LubanOptions create() {
            return this.options;
        }
    }
}
