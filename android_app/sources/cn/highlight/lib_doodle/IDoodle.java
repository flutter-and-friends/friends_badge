package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import java.util.List;

/* loaded from: classes.dex */
public interface IDoodle {
    void addItem(IDoodleItem iDoodleItem);

    void addItemRecord(IDoodleItem iDoodleItem, int i);

    void bottomItem(IDoodleItem iDoodleItem);

    void clear();

    void clearRedoRecord();

    void downItem(IDoodleItem iDoodleItem);

    List<IDoodleItem> getAllItem();

    List<IDoodleItem> getAllItem(boolean z);

    List<IDoodleItem> getAllRedoItem();

    List<IDoodleItem> getAllRedoItem(boolean z);

    Bitmap getBitmap();

    IDoodleColor getColor();

    Bitmap getDoodleBitmap();

    float getDoodleMaxScale();

    float getDoodleMinScale();

    int getDoodleRotation();

    float getDoodleScale();

    float getDoodleTranslationX();

    float getDoodleTranslationY();

    int getItemCount();

    List<DoodleRecord> getItemRecord();

    List<DoodleRecord> getItemRedoRecord();

    IDoodlePen getPen();

    int getRedoItemCount();

    IDoodleShape getShape();

    float getSize();

    float getUnitSize();

    float getZoomerScale();

    boolean isDown(IDoodleItem iDoodleItem);

    boolean isDrawableOutside();

    boolean isShowOriginal();

    boolean isUp(IDoodleItem iDoodleItem);

    boolean redo(int i);

    void redoRecord();

    void refresh();

    void removeItem(IDoodleItem iDoodleItem);

    void save();

    void setColor(IDoodleColor iDoodleColor);

    void setDoodleMaxScale(float f);

    void setDoodleMinScale(float f);

    void setDoodleRotation(int i);

    void setDoodleScale(float f, float f2, float f3);

    void setDoodleTranslation(float f, float f2);

    void setDoodleTranslationX(float f);

    void setDoodleTranslationY(float f);

    void setIsDrawableOutside(boolean z);

    void setPen(IDoodlePen iDoodlePen);

    void setShape(IDoodleShape iDoodleShape);

    void setShowOriginal(boolean z);

    void setSize(float f);

    void setZoomerScale(float f);

    void topItem(IDoodleItem iDoodleItem);

    boolean undo();

    boolean undo(int i);

    void undoRecord(int i);

    void upItem(IDoodleItem iDoodleItem);
}
