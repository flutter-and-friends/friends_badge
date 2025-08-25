package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DoodleItemBase implements IDoodleItem, IDoodleItemListener {
    public static final float MAX_SCALE = 2.4f;
    public static final float MAX_SCALE_IMAGE = 5.2f;
    public static final float MAX_SCALE_TEXT = 8.5f;
    public static final float MIN_SCALE = 0.5f;
    public static final float MIN_SCALE_IMAGE = 0.25f;
    public static final float MIN_SCALE_TEXT = 0.5f;
    private IDoodleColor mColor;
    private IDoodle mDoodle;
    private boolean mHasAdded;
    private boolean mIsDrawOptimize;
    private boolean mIsNeedClipOutside;
    private List<IDoodleItemListener> mItemListeners;
    private float mItemRotate;
    private PointF mLocation;
    private float mMaxScale;
    private float mMinScale;
    private IDoodlePen mPen;
    private float mPivotX;
    private float mPivotY;
    private float mScale;
    private IDoodleShape mShape;
    private float mSize;

    protected abstract void doDraw(Canvas canvas);

    protected void drawAfter(Canvas canvas) {
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void drawAtTheTop(Canvas canvas) {
    }

    protected void drawBefore(Canvas canvas) {
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public boolean isDoodleEditable() {
        return false;
    }

    public DoodleItemBase(IDoodle iDoodle) {
        this(iDoodle, null);
    }

    public DoodleItemBase(IDoodle iDoodle, DoodlePaintAttrs doodlePaintAttrs) {
        this.mLocation = new PointF();
        this.mIsDrawOptimize = false;
        this.mIsNeedClipOutside = true;
        this.mMinScale = 0.5f;
        this.mMaxScale = 2.4f;
        this.mScale = 1.0f;
        this.mHasAdded = false;
        this.mItemListeners = new ArrayList();
        setDoodle(iDoodle);
        if (doodlePaintAttrs != null) {
            this.mPen = doodlePaintAttrs.pen();
            this.mShape = doodlePaintAttrs.shape();
            this.mSize = doodlePaintAttrs.size();
            this.mColor = doodlePaintAttrs.color();
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setDoodle(IDoodle iDoodle) {
        if (iDoodle != null && this.mDoodle != null) {
            throw new RuntimeException("item's doodle object is not null");
        }
        this.mDoodle = iDoodle;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public IDoodle getDoodle() {
        return this.mDoodle;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setPivotX(float f) {
        this.mPivotX = f;
        onPropertyChanged(3);
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public float getPivotX() {
        return this.mPivotX;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setPivotY(float f) {
        this.mPivotY = f;
        onPropertyChanged(4);
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public float getPivotY() {
        return this.mPivotY;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setItemRotate(float f) {
        this.mItemRotate = f;
        onPropertyChanged(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public float getItemRotate() {
        return this.mItemRotate;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setLocation(float f, float f2) {
        setLocation(f, f2, true);
    }

    public void setLocation(float f, float f2, boolean z) {
        float f3 = f - this.mLocation.x;
        float f4 = f2 - this.mLocation.y;
        PointF pointF = this.mLocation;
        pointF.x = f;
        pointF.y = f2;
        onPropertyChanged(7);
        if (z) {
            this.mPivotX += f3;
            this.mPivotY += f4;
            onPropertyChanged(3);
            onPropertyChanged(4);
        }
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public PointF getLocation() {
        return this.mLocation;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public IDoodlePen getPen() {
        return this.mPen;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setPen(IDoodlePen iDoodlePen) {
        this.mPen = iDoodlePen;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public IDoodleShape getShape() {
        return this.mShape;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setShape(IDoodleShape iDoodleShape) {
        this.mShape = iDoodleShape;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public float getSize() {
        return this.mSize;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setSize(float f) {
        this.mSize = f;
        onPropertyChanged(5);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public IDoodleColor getColor() {
        return this.mColor;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setColor(IDoodleColor iDoodleColor) {
        this.mColor = iDoodleColor;
        onPropertyChanged(6);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void draw(Canvas canvas) {
        drawBefore(canvas);
        int iSave = canvas.save();
        this.mLocation = getLocation();
        canvas.translate(this.mLocation.x, this.mLocation.y);
        float f = this.mPivotX - this.mLocation.x;
        float f2 = this.mPivotY - this.mLocation.y;
        canvas.rotate(this.mItemRotate, f, f2);
        float f3 = this.mScale;
        canvas.scale(f3, f3, f, f2);
        doDraw(canvas);
        canvas.restoreToCount(iSave);
        drawAfter(canvas);
    }

    public void setDrawOptimize(boolean z) {
        if (z == this.mIsDrawOptimize) {
            return;
        }
        this.mIsDrawOptimize = z;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public boolean isNeedClipOutside() {
        return this.mIsNeedClipOutside;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setNeedClipOutside(boolean z) {
        this.mIsNeedClipOutside = z;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void onAdd() {
        this.mHasAdded = true;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void onRemove() {
        this.mHasAdded = false;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void refresh() {
        IDoodle iDoodle;
        if (!this.mHasAdded || (iDoodle = this.mDoodle) == null) {
            return;
        }
        iDoodle.refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void setScale(float f) {
        if (this.mPen == DoodlePen.TEXT) {
            this.mMinScale = 0.5f;
            this.mMaxScale = 8.5f;
        } else if (this.mPen == DoodlePen.BITMAP) {
            this.mMinScale = 0.25f;
            this.mMaxScale = 5.2f;
        } else {
            this.mMinScale = 0.5f;
            this.mMaxScale = 2.4f;
        }
        float f2 = this.mMinScale;
        if (f > f2) {
            f2 = this.mMaxScale;
            if (f <= f2) {
                f2 = f;
            }
        }
        this.mScale = f2;
        onPropertyChanged(1);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public float getScale() {
        return this.mScale;
    }

    public void setMinScale(float f) {
        if (this.mMinScale <= 0.0f) {
            f = 0.5f;
        } else {
            float f2 = this.mMaxScale;
            if (f > f2) {
                f = f2;
            }
        }
        this.mMinScale = f;
        setScale(getScale());
    }

    public float getMinScale() {
        return this.mMinScale;
    }

    public void setMaxScale(float f) {
        if (f <= 0.0f) {
            f = 0.5f;
        } else {
            float f2 = this.mMinScale;
            if (f < f2) {
                f = f2;
            }
        }
        this.mMaxScale = f;
        setScale(getScale());
    }

    public float getMaxScale() {
        return this.mMaxScale;
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void addItemListener(IDoodleItemListener iDoodleItemListener) {
        if (iDoodleItemListener == null || this.mItemListeners.contains(iDoodleItemListener)) {
            return;
        }
        this.mItemListeners.add(iDoodleItemListener);
    }

    @Override // cn.highlight.lib_doodle.IDoodleItem
    public void removeItemListener(IDoodleItemListener iDoodleItemListener) {
        this.mItemListeners.remove(iDoodleItemListener);
    }

    @Override // cn.highlight.lib_doodle.IDoodleItemListener
    public void onPropertyChanged(int i) {
        for (int i2 = 0; i2 < this.mItemListeners.size(); i2++) {
            this.mItemListeners.get(i2).onPropertyChanged(i);
        }
    }
}
