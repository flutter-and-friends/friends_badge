package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.PointF;

/* loaded from: classes.dex */
public interface IDoodleItem {
    void addItemListener(IDoodleItemListener iDoodleItemListener);

    void draw(Canvas canvas);

    void drawAtTheTop(Canvas canvas);

    IDoodleColor getColor();

    IDoodle getDoodle();

    float getItemRotate();

    PointF getLocation();

    IDoodlePen getPen();

    float getPivotX();

    float getPivotY();

    float getScale();

    IDoodleShape getShape();

    float getSize();

    boolean isDoodleEditable();

    boolean isNeedClipOutside();

    void onAdd();

    void onRemove();

    void refresh();

    void removeItemListener(IDoodleItemListener iDoodleItemListener);

    void setColor(IDoodleColor iDoodleColor);

    void setDoodle(IDoodle iDoodle);

    void setItemRotate(float f);

    void setLocation(float f, float f2);

    void setNeedClipOutside(boolean z);

    void setPen(IDoodlePen iDoodlePen);

    void setPivotX(float f);

    void setPivotY(float f);

    void setScale(float f);

    void setShape(IDoodleShape iDoodleShape);

    void setSize(float f);
}
