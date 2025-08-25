package cn.highlight.lib_doodle;

import android.graphics.Rect;

/* loaded from: classes.dex */
public interface IDoodleSelectableItem extends IDoodleItem {
    boolean contains(float f, float f2);

    Rect getBounds();

    boolean isSelected();

    void setSelected(boolean z);
}
