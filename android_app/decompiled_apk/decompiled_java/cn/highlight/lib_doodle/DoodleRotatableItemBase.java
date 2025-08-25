package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;

/* loaded from: classes.dex */
public abstract class DoodleRotatableItemBase extends DoodleSelectableItemBase {
    private boolean mIsRotating;
    private Paint mPaint;
    private Rect mRectTemp;
    private PointF mTemp;

    public DoodleRotatableItemBase(IDoodle iDoodle, int i, float f, float f2) {
        super(iDoodle, i, f, f2);
        this.mTemp = new PointF();
        this.mRectTemp = new Rect();
        this.mIsRotating = false;
        this.mPaint = new Paint();
    }

    public DoodleRotatableItemBase(IDoodle iDoodle, DoodlePaintAttrs doodlePaintAttrs, int i, float f, float f2) {
        super(iDoodle, doodlePaintAttrs, i, f, f2);
        this.mTemp = new PointF();
        this.mRectTemp = new Rect();
        this.mIsRotating = false;
        this.mPaint = new Paint();
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    public void doDrawAtTheTop(Canvas canvas) {
        if (isSelected()) {
            if (getDoodle().getPen() == DoodlePen.QRCODE || getDoodle().getPen() == DoodlePen.BARCODE) {
                int iSave = canvas.save();
                canvas.scale(1.0f / getDoodle().getDoodleScale(), 1.0f / getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
                this.mRectTemp.set(getBounds());
                DrawUtil.scaleRect(this.mRectTemp, getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
                float unitSize = getDoodle().getUnitSize();
                float f = 3.0f * unitSize;
                this.mRectTemp.left = (int) (r1.left - f);
                this.mRectTemp.top = (int) (r1.top - f);
                this.mRectTemp.right = (int) (r1.right + f);
                this.mRectTemp.bottom = (int) (r1.bottom + f);
                this.mPaint.setShader(null);
                this.mPaint.setColor(8947848);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setStrokeWidth(1.0f);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                if (isRotating()) {
                    this.mPaint.setColor(-1996499200);
                } else {
                    this.mPaint.setColor(-1996488705);
                }
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setStrokeWidth(2.0f * unitSize);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                this.mPaint.setColor(1149798536);
                this.mPaint.setStrokeWidth(unitSize * 0.8f);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                this.mPaint.setColor(-1);
                float f2 = 1.0f * unitSize;
                this.mPaint.setStrokeWidth(f2);
                this.mPaint.setStyle(Paint.Style.STROKE);
                float f3 = 3 * unitSize;
                canvas.drawLine((getPivotX() - getLocation().x) - f3, getPivotY() - getLocation().y, (getPivotX() - getLocation().x) + f3, getPivotY() - getLocation().y, this.mPaint);
                canvas.drawLine(getPivotX() - getLocation().x, (getPivotY() - getLocation().y) - f3, getPivotX() - getLocation().x, (getPivotY() - getLocation().y) + f3, this.mPaint);
                this.mPaint.setStrokeWidth(0.5f * unitSize);
                this.mPaint.setColor(-7829368);
                canvas.drawLine((getPivotX() - getLocation().x) - f3, getPivotY() - getLocation().y, (getPivotX() - getLocation().x) + f3, getPivotY() - getLocation().y, this.mPaint);
                canvas.drawLine(getPivotX() - getLocation().x, (getPivotY() - getLocation().y) - f3, getPivotX() - getLocation().x, (getPivotY() - getLocation().y) + f3, this.mPaint);
                this.mPaint.setStrokeWidth(f2);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setColor(-1);
                canvas.drawCircle(getPivotX() - getLocation().x, getPivotY() - getLocation().y, unitSize, this.mPaint);
                canvas.restoreToCount(iSave);
                return;
            }
            if (getDoodle().getPen() != DoodlePen.BG) {
                int iSave2 = canvas.save();
                canvas.scale(1.0f / getDoodle().getDoodleScale(), 1.0f / getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
                this.mRectTemp.set(getBounds());
                DrawUtil.scaleRect(this.mRectTemp, getDoodle().getDoodleScale(), getPivotX() - getLocation().x, getPivotY() - getLocation().y);
                float unitSize2 = getDoodle().getUnitSize();
                float f4 = 3.0f * unitSize2;
                this.mRectTemp.left = (int) (r1.left - f4);
                this.mRectTemp.top = (int) (r1.top - f4);
                this.mRectTemp.right = (int) (r1.right + f4);
                this.mRectTemp.bottom = (int) (r1.bottom + f4);
                this.mPaint.setShader(null);
                this.mPaint.setColor(8947848);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setStrokeWidth(1.0f);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                if (isRotating()) {
                    this.mPaint.setColor(-1996499200);
                } else {
                    this.mPaint.setColor(-1996488705);
                }
                this.mPaint.setStyle(Paint.Style.STROKE);
                float f5 = 2.0f * unitSize2;
                this.mPaint.setStrokeWidth(f5);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                this.mPaint.setColor(1149798536);
                float f6 = unitSize2 * 0.8f;
                this.mPaint.setStrokeWidth(f6);
                canvas.drawRect(this.mRectTemp, this.mPaint);
                if (isRotating()) {
                    this.mPaint.setColor(-1996499200);
                } else {
                    this.mPaint.setColor(-1996488705);
                }
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setStrokeWidth(f5);
                float f7 = unitSize2 * 19.0f;
                canvas.drawLine(this.mRectTemp.right, this.mRectTemp.top + (this.mRectTemp.height() / 2), this.mRectTemp.right + f7, this.mRectTemp.top + (this.mRectTemp.height() / 2), this.mPaint);
                float f8 = unitSize2 * 27.0f;
                float f9 = unitSize2 * 8.0f;
                canvas.drawCircle(this.mRectTemp.right + f8, this.mRectTemp.top + (this.mRectTemp.height() / 2), f9, this.mPaint);
                this.mPaint.setColor(1149798536);
                this.mPaint.setStrokeWidth(f6);
                canvas.drawLine(this.mRectTemp.right, this.mRectTemp.top + (this.mRectTemp.height() / 2), this.mRectTemp.right + f7, this.mRectTemp.top + (this.mRectTemp.height() / 2), this.mPaint);
                canvas.drawCircle(this.mRectTemp.right + f8, this.mRectTemp.top + (this.mRectTemp.height() / 2), f9, this.mPaint);
                this.mPaint.setColor(-1);
                float f10 = 1.0f * unitSize2;
                this.mPaint.setStrokeWidth(f10);
                this.mPaint.setStyle(Paint.Style.STROKE);
                float f11 = 3 * unitSize2;
                canvas.drawLine((getPivotX() - getLocation().x) - f11, getPivotY() - getLocation().y, (getPivotX() - getLocation().x) + f11, getPivotY() - getLocation().y, this.mPaint);
                canvas.drawLine(getPivotX() - getLocation().x, (getPivotY() - getLocation().y) - f11, getPivotX() - getLocation().x, (getPivotY() - getLocation().y) + f11, this.mPaint);
                this.mPaint.setStrokeWidth(0.5f * unitSize2);
                this.mPaint.setColor(-7829368);
                canvas.drawLine((getPivotX() - getLocation().x) - f11, getPivotY() - getLocation().y, (getPivotX() - getLocation().x) + f11, getPivotY() - getLocation().y, this.mPaint);
                canvas.drawLine(getPivotX() - getLocation().x, (getPivotY() - getLocation().y) - f11, getPivotX() - getLocation().x, (getPivotY() - getLocation().y) + f11, this.mPaint);
                this.mPaint.setStrokeWidth(f10);
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setColor(-1);
                canvas.drawCircle(getPivotX() - getLocation().x, getPivotY() - getLocation().y, unitSize2, this.mPaint);
                canvas.restoreToCount(iSave2);
            }
        }
    }

    public boolean canRotate(float f, float f2) {
        IDoodle doodle = getDoodle();
        PointF location = getLocation();
        PointF pointFRotatePoint = DrawUtil.rotatePoint(this.mTemp, (int) (-getItemRotate()), f - location.x, f2 - location.y, getPivotX() - getLocation().x, getPivotY() - getLocation().y);
        this.mRectTemp.set(getBounds());
        float unitSize = (getDoodle().getUnitSize() * 13.0f) / getDoodle().getDoodleScale();
        this.mRectTemp.top = (int) (r1.top - unitSize);
        this.mRectTemp.right = (int) (r1.right + unitSize);
        this.mRectTemp.bottom = (int) (r1.bottom + unitSize);
        return pointFRotatePoint.x >= ((float) this.mRectTemp.right) && pointFRotatePoint.x <= ((float) this.mRectTemp.right) + ((doodle.getUnitSize() * 35.0f) / getDoodle().getDoodleScale()) && pointFRotatePoint.y >= ((float) this.mRectTemp.top) && pointFRotatePoint.y <= ((float) this.mRectTemp.bottom);
    }

    public boolean isRotating() {
        return this.mIsRotating;
    }

    public void setIsRotating(boolean z) {
        this.mIsRotating = z;
    }
}
