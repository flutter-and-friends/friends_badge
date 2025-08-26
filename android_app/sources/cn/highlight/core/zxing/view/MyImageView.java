package cn.highlight.core.zxing.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes.dex */
public class MyImageView extends AppCompatImageView {
    private Context context;

    public MyImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
    }

    public MyImageView(Context context) {
        super(context);
        this.context = context;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        Paint paint = new Paint();
        paint.setColor(Color.rgb(9, 187, 7));
        paint.setAntiAlias(true);
        paint.setStrokeWidth(m39t(5.0f));
        canvas.drawLine(0.0f, 0.0f, 0.0f, m39t(18.0f), paint);
        canvas.drawLine(0.0f, 0.0f, m39t(18.0f), 0.0f, paint);
        float f = height;
        canvas.drawLine(0.0f, height - m39t(18.0f), 0.0f, f, paint);
        canvas.drawLine(0.0f, f, m39t(18.0f), f, paint);
        float f2 = width;
        canvas.drawLine(width - m39t(18.0f), 0.0f, f2, 0.0f, paint);
        canvas.drawLine(f2, 0.0f, f2, m39t(18.0f), paint);
        canvas.drawLine(f2, height - m39t(18.0f), f2, f, paint);
        canvas.drawLine(width - m39t(18.0f), f, f2, f, paint);
    }

    public int dp2px(float f) {
        return (int) TypedValue.applyDimension(1, f, this.context.getResources().getDisplayMetrics());
    }

    /* renamed from: t */
    public int m39t(float f) {
        return dp2px(f);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
