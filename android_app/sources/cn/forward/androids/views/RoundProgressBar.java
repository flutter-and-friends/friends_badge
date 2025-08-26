package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import cn.forward.androids.C0428R;

/* loaded from: classes.dex */
public class RoundProgressBar extends View {
    private int mBackground;
    private int mBgWidth;
    private int mColor;
    private RoundProgressBarListener mListener;
    private float mMaxProgress;
    private Paint mPaint;
    private float mProgress;
    private RectF mRect;
    private int mWidth;

    public interface RoundProgressBarListener {
        void onProgressChanged(float f);
    }

    public RoundProgressBar(Context context) {
        this(context, null, 0);
    }

    public RoundProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mProgress = 0.0f;
        this.mMaxProgress = 100.0f;
        this.mColor = -5538;
        this.mWidth = 20;
        this.mBgWidth = 20;
        this.mBackground = 0;
        init(attributeSet);
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setAntiAlias(true);
        this.mRect = new RectF();
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0428R.styleable.RoundProgressBar);
        this.mWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0428R.styleable.RoundProgressBar_rpb_width, this.mWidth);
        this.mColor = typedArrayObtainStyledAttributes.getColor(C0428R.styleable.RoundProgressBar_rpb_color, this.mColor);
        this.mBackground = typedArrayObtainStyledAttributes.getColor(C0428R.styleable.RoundProgressBar_rpb_background, this.mBackground);
        this.mProgress = typedArrayObtainStyledAttributes.getFloat(C0428R.styleable.RoundProgressBar_rpb_progress, this.mProgress);
        this.mMaxProgress = typedArrayObtainStyledAttributes.getFloat(C0428R.styleable.RoundProgressBar_rpb_max_progress, this.mMaxProgress);
        this.mBgWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0428R.styleable.RoundProgressBar_rpb_background_width, this.mBgWidth);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setProgress(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.mProgress = f;
        RoundProgressBarListener roundProgressBarListener = this.mListener;
        if (roundProgressBarListener != null) {
            roundProgressBarListener.onProgressChanged(this.mProgress);
        }
        invalidate();
    }

    public float getProgress() {
        return this.mProgress;
    }

    public void setMaxProgress(float f) {
        this.mMaxProgress = f < 0.0f ? 100.0f : this.mMaxProgress;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mRect.left = getPaddingLeft() + (this.mWidth / 2);
        this.mRect.top = getPaddingTop() + (this.mWidth / 2);
        this.mRect.right = (i - getPaddingRight()) - (this.mWidth / 2);
        this.mRect.bottom = (i2 - getPaddingBottom()) - (this.mWidth / 2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = (this.mProgress * 360.0f) / this.mMaxProgress;
        this.mPaint.setStrokeWidth(this.mBgWidth);
        this.mPaint.setColor(this.mBackground);
        canvas.drawArc(this.mRect, 0.0f, 360.0f, false, this.mPaint);
        this.mPaint.setStrokeWidth(this.mWidth);
        this.mPaint.setColor(this.mColor);
        canvas.drawArc(this.mRect, -90.0f, f <= 0.0f ? 1.0f : f, false, this.mPaint);
    }

    public void setProgressBarListener(RoundProgressBarListener roundProgressBarListener) {
        this.mListener = roundProgressBarListener;
    }

    public RoundProgressBarListener getProgressBarListener() {
        return this.mListener;
    }

    public float getMaxProgress() {
        return this.mMaxProgress;
    }

    public void setBgCircleColor(int i) {
        this.mBackground = i;
    }

    public void setBgCircleWidth(int i) {
        this.mBgWidth = i;
    }

    public void setCircleColor(int i) {
        this.mColor = i;
    }

    public void setCircleWidth(int i) {
        this.mWidth = i;
    }

    public int getBgCircleColor() {
        return this.mBackground;
    }

    public int getBgCircleWidth() {
        return this.mBgWidth;
    }

    public int getCircleColor() {
        return this.mColor;
    }

    public int getCirlceWidth() {
        return this.mWidth;
    }
}
