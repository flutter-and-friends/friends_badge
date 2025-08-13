package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;

/* loaded from: classes.dex */
public class CopyLocation {
    private float mCopyStartX;
    private float mCopyStartY;
    private float mTouchStartX;
    private float mTouchStartY;

    /* renamed from: mX */
    private float f81mX;

    /* renamed from: mY */
    private float f82mY;
    private boolean mIsRelocating = true;
    private boolean mIsCopying = false;
    private PointF mTemp = new PointF();
    private Paint mPaint = new Paint();

    public CopyLocation() {
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
    }

    public float getTouchStartX() {
        return this.mTouchStartX;
    }

    public float getTouchStartY() {
        return this.mTouchStartY;
    }

    public float getCopyStartX() {
        return this.mCopyStartX;
    }

    public float getCopyStartY() {
        return this.mCopyStartY;
    }

    public float getX() {
        return this.f81mX;
    }

    public float getY() {
        return this.f82mY;
    }

    public boolean isCopying() {
        return this.mIsCopying;
    }

    public boolean isRelocating() {
        return this.mIsRelocating;
    }

    public void setCopying(boolean z) {
        this.mIsCopying = z;
    }

    public void setRelocating(boolean z) {
        this.mIsRelocating = z;
    }

    public void updateLocation(float f, float f2) {
        this.f81mX = f;
        this.f82mY = f2;
    }

    public void setStartPosition(float f, float f2) {
        setStartPosition(f, f2, this.f81mX, this.f82mY);
    }

    public void setStartPosition(float f, float f2, float f3, float f4) {
        this.mCopyStartX = f3;
        this.mCopyStartY = f4;
        this.mTouchStartX = f;
        this.mTouchStartY = f2;
    }

    public void drawItSelf(Canvas canvas, float f) {
        this.mPaint.setStrokeWidth(f / 4.0f);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setColor(-1436129690);
        float f2 = f / 2.0f;
        DrawUtil.drawCircle(canvas, this.f81mX, this.f82mY, (f / 8.0f) + f2, this.mPaint);
        this.mPaint.setStrokeWidth(f / 16.0f);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setColor(-1426063361);
        DrawUtil.drawCircle(canvas, this.f81mX, this.f82mY, (f / 32.0f) + f2, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        if (!this.mIsCopying) {
            this.mPaint.setColor(1157562368);
            DrawUtil.drawCircle(canvas, this.f81mX, this.f82mY, f2, this.mPaint);
        } else {
            this.mPaint.setColor(1140850824);
            DrawUtil.drawCircle(canvas, this.f81mX, this.f82mY, f2, this.mPaint);
        }
    }

    public boolean contains(float f, float f2, float f3) {
        float f4 = this.f81mX;
        float f5 = (f4 - f) * (f4 - f);
        float f6 = this.f82mY;
        return f5 + ((f6 - f2) * (f6 - f2)) <= f3 * f3;
    }

    public CopyLocation copy() {
        CopyLocation copyLocation = new CopyLocation();
        copyLocation.mCopyStartX = this.mCopyStartX;
        copyLocation.mCopyStartY = this.mCopyStartY;
        copyLocation.mTouchStartX = this.mTouchStartX;
        copyLocation.mTouchStartY = this.mTouchStartY;
        copyLocation.f81mX = this.f81mX;
        copyLocation.f82mY = this.f82mY;
        return copyLocation;
    }

    public void reset() {
        this.f82mY = 0.0f;
        this.f81mX = 0.0f;
        this.mTouchStartY = 0.0f;
        this.mTouchStartX = 0.0f;
        this.mCopyStartY = 0.0f;
        this.mCopyStartX = 0.0f;
        this.mIsRelocating = true;
        this.mIsCopying = false;
    }
}
