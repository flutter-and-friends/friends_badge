package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;

/* loaded from: classes.dex */
public abstract class DoodleSelectableItemBase extends DoodleItemBase implements IDoodleSelectableItem {
    public static final int ITEM_CAN_ROTATE_BOUND = 35;
    public static final int ITEM_PADDING = 3;
    private boolean mIsSelected;
    private Paint mPaint;
    private Rect mRect;
    private Rect mRectTemp;
    private PointF mTemp;

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void drawAfter(Canvas canvas) {
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void drawBefore(Canvas canvas) {
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public boolean isDoodleEditable() {
        return true;
    }

    protected abstract void resetBounds(Rect rect);

    public DoodleSelectableItemBase(IDoodle iDoodle, int i, float f, float f2) {
        this(iDoodle, null, i, f, f2);
    }

    public DoodleSelectableItemBase(IDoodle iDoodle, DoodlePaintAttrs doodlePaintAttrs, int i, float f, float f2) {
        super(iDoodle, doodlePaintAttrs);
        this.mRect = new Rect();
        this.mRectTemp = new Rect();
        this.mPaint = new Paint();
        this.mTemp = new PointF();
        this.mIsSelected = false;
        setLocation(f, f2);
        setItemRotate(i);
        resetBoundsScaled(this.mRect);
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setScale(float f) {
        super.setScale(f);
        resetBoundsScaled(this.mRect);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodleSelectableItem
    public Rect getBounds() {
        return this.mRect;
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setSize(float f) {
        super.setSize(f);
        resetBounds(getBounds());
        setLocation(getPivotX() - (getBounds().width() / 2), getPivotY() - (getBounds().height() / 2), false);
        resetBoundsScaled(getBounds());
    }

    @Override // cn.highlight.lib_doodle.IDoodleSelectableItem
    public boolean contains(float f, float f2) {
        resetBoundsScaled(this.mRect);
        PointF location = getLocation();
        this.mTemp = DrawUtil.rotatePoint(this.mTemp, (int) (-getItemRotate()), f - location.x, f2 - location.y, getPivotX() - getLocation().x, getPivotY() - getLocation().y);
        this.mRectTemp.set(this.mRect);
        float unitSize = getDoodle().getUnitSize();
        float f3 = unitSize * 3.0f;
        this.mRectTemp.left = (int) (r10.left - f3);
        this.mRectTemp.top = (int) (r10.top - f3);
        this.mRectTemp.right = (int) (r10.right + f3);
        this.mRectTemp.bottom = (int) (r10.bottom + f3);
        return this.mRectTemp.contains((int) this.mTemp.x, (int) this.mTemp.y);
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void drawAtTheTop(Canvas canvas) {
        if (getDoodle().getPen() != DoodlePen.BG) {
            int iSave = canvas.save();
            PointF location = getLocation();
            canvas.translate(location.x, location.y);
            canvas.rotate(getItemRotate(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
            doDrawAtTheTop(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    public void doDrawAtTheTop(Canvas canvas) {
        if (isSelected()) {
            canvas.save();
            canvas.scale(1.0f / getDoodle().getDoodleScale(), 1.0f / getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
            this.mRectTemp.set(getBounds());
            DrawUtil.scaleRect(this.mRectTemp, getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
            float unitSize = getDoodle().getUnitSize();
            float f = 3.0f * unitSize;
            this.mRectTemp.left = (int) (r2.left - f);
            this.mRectTemp.top = (int) (r2.top - f);
            this.mRectTemp.right = (int) (r2.right + f);
            this.mRectTemp.bottom = (int) (r2.bottom + f);
            this.mPaint.setShader(null);
            this.mPaint.setColor(8947848);
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setStrokeWidth(1.0f);
            canvas.drawRect(this.mRectTemp, this.mPaint);
            this.mPaint.setColor(-1996488705);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(2.0f * unitSize);
            canvas.drawRect(this.mRectTemp, this.mPaint);
            this.mPaint.setColor(1149798536);
            this.mPaint.setStrokeWidth(unitSize * 0.8f);
            canvas.drawRect(this.mRectTemp, this.mPaint);
            canvas.restore();
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodleSelectableItem
    public boolean isSelected() {
        return this.mIsSelected;
    }

    @Override // cn.highlight.lib_doodle.IDoodleSelectableItem
    public void setSelected(boolean z) {
        this.mIsSelected = z;
        setNeedClipOutside(!z);
        refresh();
    }

    protected void resetBoundsScaled(Rect rect) {
        resetBounds(rect);
        DrawUtil.scaleRect(rect, getScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
    }
}
