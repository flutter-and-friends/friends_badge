package net.kotlinandroid.customlibrary.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Looper;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import net.kotlinandroid.customlibrary.C1657R;

/* loaded from: classes2.dex */
public class LineProgressBar extends View {
    private int DEFAULT_BORDER_COLOR;
    private int DEFAULT_BORDER_WIDTH;
    private boolean DEFAULT_ISSHOWDESC;
    private int DEFAULT_MAX;
    private int DEFAULT_PROGRESS;
    private int DEFAULT_PROGRESS_COLOR;
    private int DEFAULT_PROGRESS_DESC_COLOR;
    private int DEFAULT_RADIUS;
    private int mBorderWidth;
    private int mHeight;
    private boolean mIsShowDesc;
    private int mMax;
    private OnAnimationEndListener mOnAnimationEndListener;
    private OnFinishedListener mOnFinishedListener;
    private Paint mPaint;
    private int mProgress;
    private int mProgressColor;
    private String mProgressDesc;
    private int mProgressDescColor;
    private int mRadius;
    private Rect mTextBounds;
    private TextPaint mTextPaint;
    private int mWidth;

    public interface OnAnimationEndListener {
        void onAnimationEnd();
    }

    public interface OnFinishedListener {
        void onFinish();
    }

    public void setOnFinishedListener(OnFinishedListener onFinishedListener) {
        this.mOnFinishedListener = onFinishedListener;
    }

    public void setOnAnimationEndListener(OnAnimationEndListener onAnimationEndListener) {
        this.mOnAnimationEndListener = onAnimationEndListener;
    }

    public LineProgressBar(Context context) {
        this(context, null);
    }

    public LineProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LineProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.DEFAULT_MAX = 10;
        this.DEFAULT_PROGRESS = 0;
        this.DEFAULT_RADIUS = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.DEFAULT_BORDER_COLOR = Color.parseColor("#FE78A6");
        this.DEFAULT_PROGRESS_COLOR = Color.parseColor("#FE78A6");
        this.DEFAULT_PROGRESS_DESC_COLOR = Color.parseColor("#B4B4B4");
        this.DEFAULT_BORDER_WIDTH = (int) TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics());
        this.DEFAULT_ISSHOWDESC = true;
        this.mProgressDesc = "";
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1657R.styleable.LineProgressBar);
        try {
            this.mMax = typedArrayObtainStyledAttributes.getInt(C1657R.styleable.LineProgressBar_max, this.DEFAULT_MAX);
            this.mProgress = typedArrayObtainStyledAttributes.getInt(C1657R.styleable.LineProgressBar_progress, this.DEFAULT_PROGRESS);
            this.mRadius = (int) typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.LineProgressBar_progressRadius, this.DEFAULT_RADIUS);
            this.mProgressColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.LineProgressBar_lineprogressColor, this.DEFAULT_PROGRESS_COLOR);
            this.mProgressDescColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.LineProgressBar_progressDescColor, this.DEFAULT_PROGRESS_DESC_COLOR);
            this.mBorderWidth = (int) typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.LineProgressBar_lineborderWidth, this.DEFAULT_BORDER_WIDTH);
            this.mProgressDesc = typedArrayObtainStyledAttributes.getString(C1657R.styleable.LineProgressBar_progressDesc);
            this.mIsShowDesc = typedArrayObtainStyledAttributes.getBoolean(C1657R.styleable.LineProgressBar_isShowDesc, this.DEFAULT_ISSHOWDESC);
            typedArrayObtainStyledAttributes.recycle();
            init();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mTextBounds = new Rect();
        this.mTextPaint = new TextPaint(1);
        this.mTextPaint.setTextSize(TypedValue.applyDimension(2, 14.0f, getResources().getDisplayMetrics()));
        this.mTextPaint.setColor(this.mProgressDescColor);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = i;
        this.mHeight = i2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        drawBorder(canvas);
        drawProgress(canvas);
        if (this.mIsShowDesc) {
            drawProgressDesc(canvas);
        }
    }

    private void drawBorder(Canvas canvas) {
        this.mPaint.reset();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeJoin(Paint.Join.MITER);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mProgressColor);
        this.mPaint.setStrokeWidth(this.mBorderWidth);
        int i = this.mBorderWidth;
        int i2 = i / 2;
        int i3 = i / 2;
        int i4 = this.mWidth - (i / 2);
        int i5 = this.mHeight - (i / 2);
        Path path = new Path();
        float f = i3;
        path.moveTo(this.mRadius + i2, f);
        path.lineTo(i4 - this.mRadius, f);
        int i6 = this.mRadius;
        float f2 = i4;
        path.arcTo(new RectF(i4 - (i6 * 2), f, f2, (i6 * 2) + i3), -90.0f, 90.0f);
        path.lineTo(f2, i5 - this.mRadius);
        int i7 = this.mRadius;
        float f3 = i5;
        path.arcTo(new RectF(i4 - (i7 * 2), i5 - (i7 * 2), f2, f3), 0.0f, 90.0f);
        path.lineTo(this.mRadius + i2, f3);
        float f4 = i2;
        int i8 = this.mRadius;
        path.arcTo(new RectF(f4, i5 - (i8 * 2), (i8 * 2) + i2, f3), 90.0f, 90.0f);
        path.lineTo(f4, this.mRadius + i3);
        int i9 = this.mRadius;
        path.arcTo(new RectF(f4, f, i2 + (i9 * 2), i3 + (i9 * 2)), 180.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.mPaint);
    }

    private void drawProgress(Canvas canvas) {
        this.mPaint.reset();
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mProgressColor);
        this.mPaint.setStrokeWidth(this.mBorderWidth);
        int i = this.mBorderWidth;
        float f = i * 0.5f;
        float f2 = i * 0.5f;
        float f3 = this.mWidth - (i * 0.5f);
        float f4 = this.mHeight - (i * 0.5f);
        Path path = new Path();
        path.moveTo(f, this.mRadius + f2);
        int i2 = this.mProgress;
        int i3 = this.mMax;
        int i4 = this.mRadius;
        float f5 = f3 - f;
        float f6 = ((i2 * 1.0f) / i3) / ((i4 * 1.0f) / f5);
        float f7 = ((i2 * 1.0f) / i3) / (((f3 - i4) * 1.0f) / f5);
        if (f6 <= 1.0f) {
            double dAcos = Math.acos((i4 - r8) / i4);
            int i5 = this.mRadius;
            RectF rectF = new RectF(f, f2, (i5 * 2) + f, (i5 * 2) + f2);
            float f8 = (float) ((dAcos * 180.0d) / 3.141592653589793d);
            path.arcTo(rectF, 180.0f, f8);
            path.lineTo((f6 * i4) + f, (float) ((Math.pow(Math.pow(this.mRadius, 2.0d) - Math.pow(r8 - this.mRadius, 2.0d), 0.5d) + f4) - this.mRadius));
            int i6 = this.mRadius;
            path.arcTo(new RectF(f, f4 - (i6 * 2), (i6 * 2) + f, f4), 180.0f - f8, f8);
            path.close();
            canvas.drawPath(path, this.mPaint);
            return;
        }
        if (f7 <= 1.0f) {
            path.arcTo(new RectF(f, f2, (i4 * 2) + f, (i4 * 2) + f2), 180.0f, 90.0f);
            path.lineTo((((this.mProgress * 1.0f) / this.mMax) * f5) + f, f2);
            path.lineTo((((this.mProgress * 1.0f) / this.mMax) * f5) + f, f4);
            path.lineTo(this.mRadius + f, f4);
            int i7 = this.mRadius;
            path.arcTo(new RectF(f, f4 - (i7 * 2), (i7 * 2) + f, f4), 90.0f, 90.0f);
            path.close();
            canvas.drawPath(path, this.mPaint);
            return;
        }
        float f9 = (((i2 * 1.0f) / i3) * f5) - (f3 - i4);
        double dAsin = Math.asin(f9 / i4);
        int i8 = this.mRadius;
        path.arcTo(new RectF(f, f2, (i8 * 2) + f, (i8 * 2) + f2), 180.0f, 90.0f);
        path.lineTo(f3 - this.mRadius, f2);
        int i9 = this.mRadius;
        double d = (dAsin * 180.0d) / 3.141592653589793d;
        float f10 = (float) d;
        path.arcTo(new RectF(f3 - (i9 * 2), f2, f3, (i9 * 2) + f2), -90.0f, f10);
        double dPow = Math.pow(Math.pow(this.mRadius, 2.0d) - Math.pow(f9, 2.0d), 0.5d) + f2;
        int i10 = this.mRadius;
        path.lineTo((f3 - i10) + f9, (float) (dPow + i10));
        int i11 = this.mRadius;
        path.arcTo(new RectF(f3 - (i11 * 2), f4 - (i11 * 2), f3, f4), (float) (90.0d - d), f10);
        path.lineTo(this.mRadius + f, f4);
        int i12 = this.mRadius;
        path.arcTo(new RectF(f, f4 - (i12 * 2), (i12 * 2) + f, f4), 90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.mPaint);
    }

    private void drawProgressDesc(Canvas canvas) {
        String str = this.mProgressDesc + " " + this.mProgress + "/" + this.mMax;
        this.mTextPaint.getTextBounds(str, 0, str.length(), this.mTextBounds);
        canvas.drawText(str, (int) ((this.mWidth / 2.0d) - (this.mTextBounds.width() / 2.0d)), (int) ((this.mHeight / 2.0d) - ((this.mTextPaint.ascent() + this.mTextPaint.descent()) / 2.0f)), this.mTextPaint);
    }

    public void setMaxProgress(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mMax = i;
        invalidateView();
    }

    private void setProgress(int i) {
        OnFinishedListener onFinishedListener;
        int i2 = this.mMax;
        if (i > i2) {
            i = i2;
        }
        this.mProgress = i;
        invalidateView();
        if (this.mProgress < this.mMax || (onFinishedListener = this.mOnFinishedListener) == null) {
            return;
        }
        onFinishedListener.onFinish();
    }

    public int getMax() {
        return this.mMax;
    }

    public final int getProgress() {
        return this.mProgress;
    }

    public void setProgressDesc(String str) {
        this.mProgressDesc = str;
        invalidateView();
    }

    public void setCurProgress(int i) {
        ObjectAnimator duration = ObjectAnimator.ofInt(this, "progress", i).setDuration(1500L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: net.kotlinandroid.customlibrary.view.LineProgressBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (LineProgressBar.this.mOnAnimationEndListener != null) {
                    LineProgressBar.this.mOnAnimationEndListener.onAnimationEnd();
                }
            }
        });
        duration.start();
    }

    public void setCurProgress(int i, long j) {
        ObjectAnimator duration = ObjectAnimator.ofInt(this, "progress", i).setDuration(j);
        duration.addListener(new AnimatorListenerAdapter() { // from class: net.kotlinandroid.customlibrary.view.LineProgressBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (LineProgressBar.this.mOnAnimationEndListener != null) {
                    LineProgressBar.this.mOnAnimationEndListener.onAnimationEnd();
                }
            }
        });
        duration.start();
    }

    public void setProgressColor(int i) {
        this.mProgressColor = i;
        invalidateView();
    }

    public void setIsShowDesc(boolean z) {
        this.mIsShowDesc = z;
        invalidateView();
    }

    private void invalidateView() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }
}
