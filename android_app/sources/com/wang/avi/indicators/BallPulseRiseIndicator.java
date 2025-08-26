package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallPulseRiseIndicator extends Indicator {
    private float degress;
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.degress);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate(-centerX(), -centerY());
        this.mMatrix.postTranslate(centerX(), centerY());
        canvas.concat(this.mMatrix);
        float width = getWidth() / 10;
        float f = 2.0f * width;
        canvas.drawCircle(getWidth() / 4, f, width, paint);
        canvas.drawCircle((getWidth() * 3) / 4, f, width, paint);
        canvas.drawCircle(width, getHeight() - f, width, paint);
        canvas.drawCircle(getWidth() / 2, getHeight() - f, width, paint);
        canvas.drawCircle(getWidth() - width, getHeight() - f, width, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallPulseRiseIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallPulseRiseIndicator.this.degress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallPulseRiseIndicator.this.postInvalidate();
            }
        });
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setDuration(1500L);
        arrayList.add(valueAnimatorOfFloat);
        return arrayList;
    }
}
