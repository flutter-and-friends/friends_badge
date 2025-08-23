package cn.highlight.lib_doodle;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public interface IDoodleListener {
    void onReady(IDoodle iDoodle);

    void onSaved(IDoodle iDoodle, Bitmap bitmap, Runnable runnable);
}
