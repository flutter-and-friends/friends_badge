package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.ValueAnimator;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;

/* loaded from: classes.dex */
public class RoundProgressView extends View {
    private int cir_x;
    private int endAngle;
    private Paint mPantR;
    private Paint mPath;
    private int num;
    private int outCir_value;
    private RectF oval;
    private RectF oval2;

    /* renamed from: r */
    private float f417r;
    private int stratAngle;

    /* renamed from: va */
    ValueAnimator f418va;

    public void setCir_x(int i) {
        this.cir_x = i;
    }

    public RoundProgressView(Context context) {
        this(context, null, 0);
    }

    public RoundProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f417r = 40.0f;
        this.num = 7;
        this.stratAngle = PropertyID.CHARACTER_DATA_DELAY;
        this.endAngle = 0;
        this.outCir_value = 15;
        init();
    }

    private void init() {
        this.mPath = new Paint();
        this.mPantR = new Paint();
        this.mPantR.setColor(-1);
        this.mPantR.setAntiAlias(true);
        this.mPath.setAntiAlias(true);
        this.mPath.setColor(Color.rgb(114, 114, 114));
        this.f418va = ValueAnimator.ofInt(0, 360);
        this.f418va.setDuration(720L);
        this.f418va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.header.bezierlayout.RoundProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RoundProgressView.this.endAngle = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RoundProgressView.this.postInvalidate();
            }
        });
        this.f418va.setRepeatCount(-1);
        this.f418va.setInterpolator(new AccelerateDecelerateInterpolator());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth() / this.num;
        this.mPath.setStyle(Paint.Style.FILL);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f417r, this.mPath);
        canvas.save();
        this.mPath.setStyle(Paint.Style.STROKE);
        this.mPath.setStrokeWidth(6.0f);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f417r + 15.0f, this.mPath);
        canvas.restore();
        this.mPantR.setStyle(Paint.Style.FILL);
        if (this.oval == null) {
            this.oval = new RectF();
        }
        this.oval.set((getMeasuredWidth() / 2) - this.f417r, (getMeasuredHeight() / 2) - this.f417r, (getMeasuredWidth() / 2) + this.f417r, (getMeasuredHeight() / 2) + this.f417r);
        canvas.drawArc(this.oval, this.stratAngle, this.endAngle, true, this.mPantR);
        canvas.save();
        this.mPantR.setStrokeWidth(6.0f);
        this.mPantR.setStyle(Paint.Style.STROKE);
        if (this.oval2 == null) {
            this.oval2 = new RectF();
        }
        this.oval2.set(((getMeasuredWidth() / 2) - this.f417r) - this.outCir_value, ((getMeasuredHeight() / 2) - this.f417r) - this.outCir_value, (getMeasuredWidth() / 2) + this.f417r + this.outCir_value, (getMeasuredHeight() / 2) + this.f417r + this.outCir_value);
        canvas.drawArc(this.oval2, this.stratAngle, this.endAngle, false, this.mPantR);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f418va;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void startAnim() {
        ValueAnimator valueAnimator = this.f418va;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void stopAnim() {
        ValueAnimator valueAnimator = this.f418va;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f418va.cancel();
    }
}
