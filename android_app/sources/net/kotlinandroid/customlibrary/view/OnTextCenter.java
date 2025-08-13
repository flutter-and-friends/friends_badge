package net.kotlinandroid.customlibrary.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import net.kotlinandroid.customlibrary.view.ArcProgress;

/* loaded from: classes2.dex */
public class OnTextCenter implements ArcProgress.OnCenterDraw {
    private int textColor;
    private int textSize;

    public OnTextCenter(int i, int i2) {
        this.textColor = -7829368;
        this.textSize = 50;
        this.textColor = i;
        this.textSize = i2;
    }

    public OnTextCenter() {
        this.textColor = -7829368;
        this.textSize = 50;
    }

    @Override // net.kotlinandroid.customlibrary.view.ArcProgress.OnCenterDraw
    public void draw(Canvas canvas, RectF rectF, float f, float f2, float f3, int i) {
        Paint paint = new Paint(1);
        paint.setStrokeWidth(35.0f);
        paint.setTextSize(this.textSize);
        paint.setColor(this.textColor);
        String strValueOf = String.valueOf(i);
        canvas.drawText(strValueOf, f - (paint.measureText(strValueOf) / 2.0f), f2 - ((paint.descent() + paint.ascent()) / 2.0f), paint);
    }
}
