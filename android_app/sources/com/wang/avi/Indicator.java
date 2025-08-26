package com.wang.avi;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class Indicator extends Drawable implements Animatable {
    private static final Rect ZERO_BOUNDS_RECT = new Rect();
    private ArrayList<ValueAnimator> mAnimators;
    private boolean mHasAnimators;
    private HashMap<ValueAnimator, ValueAnimator.AnimatorUpdateListener> mUpdateListeners = new HashMap<>();
    private int alpha = 255;
    protected Rect drawBounds = ZERO_BOUNDS_RECT;
    private Paint mPaint = new Paint();

    public abstract void draw(Canvas canvas, Paint paint);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    public abstract ArrayList<ValueAnimator> onCreateAnimators();

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public Indicator() {
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setAntiAlias(true);
    }

    public int getColor() {
        return this.mPaint.getColor();
    }

    public void setColor(int i) {
        this.mPaint.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        draw(canvas, this.mPaint);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        ensureAnimators();
        if (this.mAnimators == null || isStarted()) {
            return;
        }
        startAnimators();
        invalidateSelf();
    }

    private void startAnimators() {
        for (int i = 0; i < this.mAnimators.size(); i++) {
            ValueAnimator valueAnimator = this.mAnimators.get(i);
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.mUpdateListeners.get(valueAnimator);
            if (animatorUpdateListener != null) {
                valueAnimator.addUpdateListener(animatorUpdateListener);
            }
            valueAnimator.start();
        }
    }

    private void stopAnimators() {
        ArrayList<ValueAnimator> arrayList = this.mAnimators;
        if (arrayList != null) {
            Iterator<ValueAnimator> it = arrayList.iterator();
            while (it.hasNext()) {
                ValueAnimator next = it.next();
                if (next != null && next.isStarted()) {
                    next.removeAllUpdateListeners();
                    next.end();
                }
            }
        }
    }

    private void ensureAnimators() {
        if (this.mHasAnimators) {
            return;
        }
        this.mAnimators = onCreateAnimators();
        this.mHasAnimators = true;
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        stopAnimators();
    }

    private boolean isStarted() {
        Iterator<ValueAnimator> it = this.mAnimators.iterator();
        if (it.hasNext()) {
            return it.next().isStarted();
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Iterator<ValueAnimator> it = this.mAnimators.iterator();
        if (it.hasNext()) {
            return it.next().isRunning();
        }
        return false;
    }

    public void addUpdateListener(ValueAnimator valueAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.mUpdateListeners.put(valueAnimator, animatorUpdateListener);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setDrawBounds(rect);
    }

    public void setDrawBounds(Rect rect) {
        setDrawBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setDrawBounds(int i, int i2, int i3, int i4) {
        this.drawBounds = new Rect(i, i2, i3, i4);
    }

    public void postInvalidate() {
        invalidateSelf();
    }

    public Rect getDrawBounds() {
        return this.drawBounds;
    }

    public int getWidth() {
        return this.drawBounds.width();
    }

    public int getHeight() {
        return this.drawBounds.height();
    }

    public int centerX() {
        return this.drawBounds.centerX();
    }

    public int centerY() {
        return this.drawBounds.centerY();
    }

    public float exactCenterX() {
        return this.drawBounds.exactCenterX();
    }

    public float exactCenterY() {
        return this.drawBounds.exactCenterY();
    }
}
