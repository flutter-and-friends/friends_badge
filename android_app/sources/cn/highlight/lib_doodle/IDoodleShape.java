package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public interface IDoodleShape {
    void config(IDoodleItem iDoodleItem, Paint paint);

    IDoodleShape copy();

    void drawHelpers(Canvas canvas, IDoodle iDoodle);
}
