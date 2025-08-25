package cn.highlight.work_card_write.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class SlideSwitchView extends View {
    private Bitmap closeImage;
    private int imageHeight;
    private int imageWidth;
    private boolean isChecked;
    private Bitmap openImage;

    public SlideSwitchView(Context context) {
        super(context);
        this.isChecked = false;
    }

    public SlideSwitchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isChecked = false;
    }

    public void setSwitchImage(Bitmap bitmap, Bitmap bitmap2) {
        this.openImage = bitmap;
        this.closeImage = bitmap2;
        invalidate();
    }

    public void setSwitchImageSize(int i, int i2) {
        this.imageWidth = i;
        this.imageHeight = i2;
        invalidate();
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
        invalidate();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        int i;
        super.onDraw(canvas);
        Bitmap bitmapCreateScaledBitmap = this.openImage;
        if (bitmapCreateScaledBitmap == null || (bitmap = this.closeImage) == null) {
            return;
        }
        if (!this.isChecked) {
            bitmapCreateScaledBitmap = bitmap;
        }
        int i2 = this.imageWidth;
        if (i2 != 0 && (i = this.imageHeight) != 0) {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, i2, i, false);
        }
        canvas.drawBitmap(bitmapCreateScaledBitmap, 0.0f, 0.0f, (Paint) null);
    }
}
