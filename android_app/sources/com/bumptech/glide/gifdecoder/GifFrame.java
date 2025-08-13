package com.bumptech.glide.gifdecoder;

/* loaded from: classes.dex */
class GifFrame {
    static final int DISPOSAL_BACKGROUND = 2;
    static final int DISPOSAL_NONE = 1;
    static final int DISPOSAL_PREVIOUS = 3;
    static final int DISPOSAL_UNSPECIFIED = 0;
    int bufferFrameStart;
    int delay;
    int dispose;

    /* renamed from: ih */
    int f321ih;
    boolean interlace;

    /* renamed from: iw */
    int f322iw;

    /* renamed from: ix */
    int f323ix;

    /* renamed from: iy */
    int f324iy;
    int[] lct;
    int transIndex;
    boolean transparency;

    GifFrame() {
    }
}
