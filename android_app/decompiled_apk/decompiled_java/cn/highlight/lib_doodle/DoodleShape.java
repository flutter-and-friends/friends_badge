package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public enum DoodleShape implements IDoodleShape {
    HAND_WRITE,
    ARROW,
    LINE,
    FILL_CIRCLE,
    HOLLOW_CIRCLE,
    FILL_RECT,
    HOLLOW_RECT,
    FILL_TRIANGLE;

    @Override // cn.highlight.lib_doodle.IDoodleShape
    public IDoodleShape copy() {
        return this;
    }

    @Override // cn.highlight.lib_doodle.IDoodleShape
    public void drawHelpers(Canvas canvas, IDoodle iDoodle) {
    }

    @Override // cn.highlight.lib_doodle.IDoodleShape
    public void config(IDoodleItem iDoodleItem, Paint paint) {
        if (iDoodleItem.getShape() == ARROW || iDoodleItem.getShape() == FILL_CIRCLE || iDoodleItem.getShape() == FILL_RECT) {
            paint.setStyle(Paint.Style.FILL);
        } else {
            paint.setStyle(Paint.Style.STROKE);
        }
    }
}
