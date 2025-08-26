package me.shaohui.advancedluban;

import android.graphics.Bitmap;
import java.io.File;

/* loaded from: classes2.dex */
class LubanBuilder {
    File cacheDir;
    Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
    int gear = 3;
    int maxHeight;
    int maxSize;
    int maxWidth;

    LubanBuilder(File file) {
        this.cacheDir = file;
    }
}
