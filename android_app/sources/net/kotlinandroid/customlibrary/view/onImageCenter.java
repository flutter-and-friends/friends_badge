package net.kotlinandroid.customlibrary.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import net.kotlinandroid.customlibrary.view.ArcProgress;

/* loaded from: classes2.dex */
public class onImageCenter implements ArcProgress.OnCenterDraw {
    private Context context;
    private Bitmap mBmp;
    private Bitmap mTarget;
    private int rid;

    public onImageCenter(Context context, int i) {
        this.context = context;
        this.rid = i;
        this.mBmp = BitmapFactory.decodeResource(context.getResources(), i);
    }

    @Override // net.kotlinandroid.customlibrary.view.ArcProgress.OnCenterDraw
    public void draw(Canvas canvas, RectF rectF, float f, float f2, float f3, int i) {
        if (this.mTarget == null) {
            float f4 = f3 * 2.0f;
            this.mTarget = Bitmap.createScaledBitmap(this.mBmp, (int) (rectF.right - f4), (int) (rectF.right - f4), false);
        }
        Bitmap bitmap = this.mTarget;
        Paint paint = new Paint(1);
        canvas.drawCircle(f, f2, (rectF.right - (f3 * 2.0f)) / 2.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.mTarget.getHeight()), f - (r11.getWidth() / 2), f2 - (r11.getHeight() / 2), paint);
    }
}
