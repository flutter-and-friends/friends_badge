package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallClipRotateIndicator extends Indicator {
    float degrees;
    float scaleFloat = 1.0f;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.translate(width, height);
        float f = this.scaleFloat;
        canvas.scale(f, f);
        canvas.rotate(this.degrees);
        canvas.drawArc(new RectF((-width) + 12.0f, (-height) + 12.0f, (width + 0.0f) - 12.0f, (height + 0.0f) - 12.0f), -45.0f, 270.0f, false, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.6f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(750L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotateIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateIndicator.this.scaleFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateIndicator.this.postInvalidate();
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        valueAnimatorOfFloat2.setDuration(750L);
        valueAnimatorOfFloat2.setRepeatCount(-1);
        addUpdateListener(valueAnimatorOfFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotateIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateIndicator.this.postInvalidate();
            }
        });
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(valueAnimatorOfFloat2);
        return arrayList;
    }
}
