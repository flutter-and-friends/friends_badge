package cn.highlight.lib_doodle;

import android.graphics.Paint;

/* loaded from: classes.dex */
public interface IDoodleColor {
    void config(IDoodleItem iDoodleItem, Paint paint);

    IDoodleColor copy();
}
