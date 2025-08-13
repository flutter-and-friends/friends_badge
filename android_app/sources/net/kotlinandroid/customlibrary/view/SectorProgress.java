package net.kotlinandroid.customlibrary.view;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import androidx.core.view.ViewCompat;
import net.kotlinandroid.customlibrary.C1657R;

/* loaded from: classes2.dex */
public class SectorProgress extends View {
    private float angle;
    private long duration;
    private float indexFinalH;
    private float indexSize;
    private boolean isFirst;
    private boolean isRestart;
    private float lineWidth;
    private Matrix mMatrix;
    private Paint mPaint;
    private Rect mRect;
    private Shader mShader;
    private float maxValue;
    private float minValue;
    private float oldAngle;
    private int percentColor;
    private RectF rectF;
    private int[] shaderColor;
    private float strokeWidth;
    private float symbolSize;
    private TimeInterpolator timeValue;
    private int underColor;

    public SectorProgress(Context context) {
        super(context);
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
        this.rectF = new RectF();
        this.mRect = new Rect();
        this.duration = 1800L;
        this.isFirst = true;
        init(null, 0);
    }

    public SectorProgress(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
        this.rectF = new RectF();
        this.mRect = new Rect();
        this.duration = 1800L;
        this.isFirst = true;
        init(attributeSet, 0);
    }

    public SectorProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
        this.rectF = new RectF();
        this.mRect = new Rect();
        this.duration = 1800L;
        this.isFirst = true;
        init(attributeSet, i);
    }

    private void init(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1657R.styleable.ProgressView, i, 0);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.ProgressView_circleWidth, dip2px(20.0f));
        this.underColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.ProgressView_underColor, -7829368);
        this.percentColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.ProgressView_percentTextColor, ViewCompat.MEASURED_STATE_MASK);
        this.indexSize = typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.ProgressView_percentTextSize, sp2px(30.0f));
        this.isRestart = typedArrayObtainStyledAttributes.getBoolean(C1657R.styleable.ProgressView_isRestartProgress, false);
        this.lineWidth = typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.ProgressView_lineWidth, 0.0f);
        this.symbolSize = typedArrayObtainStyledAttributes.getDimension(C1657R.styleable.ProgressView_symbolSize, sp2px(16.0f));
        float f = this.lineWidth;
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.lineWidth = f;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        this.mPaint.setAntiAlias(true);
        RectF rectF = this.rectF;
        float f = this.strokeWidth;
        float f2 = width;
        rectF.set(f / 2.0f, f / 2.0f, f2 - (f / 2.0f), f2 - (f / 2.0f));
        this.mPaint.setStrokeWidth(this.strokeWidth);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setColor(this.underColor);
        canvas.drawArc(this.rectF, 0.0f, 360.0f, false, this.mPaint);
        this.mPaint.setShader(this.mShader);
        this.mPaint.setStrokeWidth(this.strokeWidth - this.lineWidth);
        canvas.drawArc(this.rectF, 270.0f, this.angle, false, this.mPaint);
        this.mPaint.setShader(null);
        this.mPaint.setTextSize(this.indexSize);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(this.percentColor);
        int i = (int) ((this.angle * 100.0f) / 360.0f);
        if (i < 0) {
            i = 0;
        }
        if (i > 100) {
            i = 100;
        }
        String strValueOf = String.valueOf(i);
        float fMeasureText = this.mPaint.measureText(strValueOf);
        this.mPaint.getTextBounds(strValueOf, 0, 1, this.mRect);
        float fHeight = this.mRect.height();
        if (this.isFirst) {
            this.indexFinalH = fHeight;
            this.isFirst = false;
        }
        float f3 = height;
        canvas.drawText(strValueOf, (f2 - fMeasureText) / 2.0f, (this.indexFinalH + f3) / 2.0f, this.mPaint);
        this.mPaint.setTextSize(this.symbolSize);
        canvas.drawText("%", (f2 + fMeasureText) / 2.0f, (f3 + this.indexFinalH) / 2.0f, this.mPaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int[] iArr = {Color.parseColor("#FFBF80"), Color.parseColor("#FF8080")};
        int[] iArr2 = this.shaderColor;
        if (iArr2 != null) {
            iArr = iArr2;
        }
        this.mMatrix.setRotate(-90.0f, getWidth() / 2, getHeight() / 2);
        this.mShader = new SweepGradient(getWidth() / 2, getHeight() / 2, iArr, (float[]) null);
        this.mShader.setLocalMatrix(this.mMatrix);
    }

    private void updateProgress(float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        long jAbs = (long) (this.duration * (Math.abs(f2 - f) / 360.0f));
        if (jAbs < 600) {
            jAbs = 600;
        }
        valueAnimatorOfFloat.setDuration(jAbs);
        TimeInterpolator overshootInterpolator = this.timeValue;
        if (overshootInterpolator == null) {
            overshootInterpolator = new OvershootInterpolator(0.8f);
        }
        this.timeValue = overshootInterpolator;
        valueAnimatorOfFloat.setInterpolator(this.timeValue);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.kotlinandroid.customlibrary.view.SectorProgress.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SectorProgress.this.angle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SectorProgress.this.invalidate();
            }
        });
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = (int) dip2px(120.0f);
        }
        if (mode2 != 1073741824) {
            size2 = size;
        }
        setMeasuredDimension(size, size2);
    }

    private float sp2px(float f) {
        return (f * getContext().getResources().getDisplayMetrics().scaledDensity) + 0.5f;
    }

    private float dip2px(float f) {
        return (f * getContext().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public void setProgress(float f) {
        float f2 = this.maxValue;
        if (f2 > 0.0f) {
            float f3 = this.minValue;
            float f4 = ((f - f3) * 360.0f) / (f2 - f3);
            this.angle = f4;
            updateProgress(this.oldAngle, this.angle);
            if (this.isRestart) {
                f4 = 0.0f;
            }
            this.oldAngle = f4;
            return;
        }
        throw new RuntimeException("setMinMaxValue(float minValue, float maxValue) method must be called firstly!");
    }

    public float getProgress() {
        return this.angle / 360.0f;
    }

    public void setAnimateDuration(long j) {
        this.duration = j;
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        this.timeValue = timeInterpolator;
    }

    public void setShaderColor(int[] iArr) {
        this.shaderColor = iArr;
    }

    public void setPercent(float f) {
        this.angle = f * 360.0f;
        updateProgress(this.oldAngle, this.angle);
        this.oldAngle = this.isRestart ? 0.0f : this.angle;
    }

    public void setIsDrawRestart(boolean z) {
        this.isRestart = z;
    }

    public void setMinMaxValue(float f, float f2) {
        this.maxValue = f2;
        if (f2 < f) {
            f = f2;
        }
        this.minValue = f;
    }
}
