package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PacmanIndicator extends Indicator {
    private int alpha;
    private float degrees1;
    private float degrees2;
    private float translateX;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        drawPacman(canvas, paint);
        drawCircle(canvas, paint);
    }

    private void drawPacman(Canvas canvas, Paint paint) {
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.save();
        canvas.translate(width, height);
        canvas.rotate(this.degrees1);
        paint.setAlpha(255);
        float f = (-width) / 1.7f;
        float f2 = (-height) / 1.7f;
        float f3 = width / 1.7f;
        float f4 = height / 1.7f;
        canvas.drawArc(new RectF(f, f2, f3, f4), 0.0f, 270.0f, true, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(width, height);
        canvas.rotate(this.degrees2);
        paint.setAlpha(255);
        canvas.drawArc(new RectF(f, f2, f3, f4), 90.0f, 270.0f, true, paint);
        canvas.restore();
    }

    private void drawCircle(Canvas canvas, Paint paint) {
        float width = getWidth() / 11;
        paint.setAlpha(this.alpha);
        canvas.drawCircle(this.translateX, getHeight() / 2, width, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getWidth() - (getWidth() / 11), getWidth() / 2);
        valueAnimatorOfFloat.setDuration(650L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.translateX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 122);
        valueAnimatorOfInt.setDuration(650L);
        valueAnimatorOfInt.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.alpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 45.0f, 0.0f);
        valueAnimatorOfFloat2.setDuration(650L);
        valueAnimatorOfFloat2.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.degrees1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, -45.0f, 0.0f);
        valueAnimatorOfFloat3.setDuration(650L);
        valueAnimatorOfFloat3.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfFloat3, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.degrees2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(valueAnimatorOfInt);
        arrayList.add(valueAnimatorOfFloat2);
        arrayList.add(valueAnimatorOfFloat3);
        return arrayList;
    }
}
