package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallTrianglePathIndicator extends Indicator {
    float[] translateX = new float[3];
    float[] translateY = new float[3];

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            canvas.translate(this.translateX[i], this.translateY[i]);
            canvas.drawCircle(0.0f, 0.0f, getWidth() / 10, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 5;
        float width2 = getWidth() / 5;
        for (final int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getWidth() / 2, getWidth() - width, width, getWidth() / 2);
            if (i == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(getWidth() - width, width, getWidth() / 2, getWidth() - width);
            } else if (i == 2) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(width, getWidth() / 2, getWidth() - width, width);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(width2, getHeight() - width2, getHeight() - width2, width2);
            if (i == 1) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(getHeight() - width2, getHeight() - width2, width2, getHeight() - width2);
            } else if (i == 2) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(getHeight() - width2, width2, getHeight() - width2, getHeight() - width2);
            }
            valueAnimatorOfFloat.setDuration(2000L);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.setRepeatCount(-1);
            addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateX[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            valueAnimatorOfFloat2.setDuration(2000L);
            valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat2.setRepeatCount(-1);
            addUpdateListener(valueAnimatorOfFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateY[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfFloat2);
        }
        return arrayList;
    }
}
