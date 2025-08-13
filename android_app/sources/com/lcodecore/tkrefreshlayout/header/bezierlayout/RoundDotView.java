package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class RoundDotView extends View {
    private int cir_x;
    private Paint mPath;
    private int num;

    /* renamed from: r */
    private float f416r;

    public void setCir_x(int i) {
        this.cir_x = i;
    }

    public RoundDotView(Context context) {
        this(context, null, 0);
    }

    public RoundDotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundDotView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f416r = 15.0f;
        this.num = 7;
        init();
    }

    private void init() {
        this.mPath = new Paint();
        this.mPath.setAntiAlias(true);
        this.mPath.setColor(Color.rgb(114, 114, 114));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = (getMeasuredWidth() / this.num) - 10;
        for (int i = 0; i < this.num; i++) {
            switch (i) {
                case 0:
                    this.mPath.setAlpha(35);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.cir_x * 3)) - (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 1:
                    this.mPath.setAlpha(105);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.cir_x * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 2:
                    this.mPath.setAlpha(145);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.cir_x * 1)) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 3:
                    this.mPath.setAlpha(255);
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 4:
                    this.mPath.setAlpha(145);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.cir_x * 1) + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 5:
                    this.mPath.setAlpha(105);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.cir_x * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
                case 6:
                    this.mPath.setAlpha(35);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.cir_x * 3) + (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f416r, this.mPath);
                    break;
            }
        }
    }
}
