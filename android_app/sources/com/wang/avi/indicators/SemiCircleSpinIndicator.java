package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SemiCircleSpinIndicator extends Indicator {
    private float degress;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        canvas.rotate(this.degress, centerX(), centerY());
        canvas.drawArc(new RectF(0.0f, 0.0f, getWidth(), getHeight()), -60.0f, 120.0f, false, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.SemiCircleSpinIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SemiCircleSpinIndicator.this.degress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SemiCircleSpinIndicator.this.postInvalidate();
            }
        });
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        arrayList.add(valueAnimatorOfFloat);
        return arrayList;
    }
}
