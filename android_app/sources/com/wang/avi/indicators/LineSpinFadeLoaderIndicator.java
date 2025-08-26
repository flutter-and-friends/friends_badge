package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.indicators.BallSpinFadeLoaderIndicator;

/* loaded from: classes.dex */
public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override // com.wang.avi.indicators.BallSpinFadeLoaderIndicator, com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i = 0; i < 8; i++) {
            canvas.save();
            BallSpinFadeLoaderIndicator.Point pointCircleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - width, 0.7853981633974483d * i);
            canvas.translate(pointCircleAt.f1115x, pointCircleAt.f1116y);
            canvas.scale(this.scaleFloats[i], this.scaleFloats[i]);
            canvas.rotate(i * 45);
            paint.setAlpha(this.alphas[i]);
            float f = -width;
            canvas.drawRoundRect(new RectF(f, f / 1.5f, width * 1.5f, width / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
