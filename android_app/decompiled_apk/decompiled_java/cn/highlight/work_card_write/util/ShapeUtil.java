package cn.highlight.work_card_write.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import cn.highlight.lib_doodle.DoodleShape;

/* loaded from: classes.dex */
public class ShapeUtil {
    public static Bitmap generateGraph(int i, int i2, int i3, int i4, int i5) {
        int i6 = i3 * 50;
        int i7 = i4 * 50;
        int i8 = i5 * 50;
        if (i2 == DoodleShape.LINE.ordinal()) {
            return generateLine(i, i6, i7, i8);
        }
        if (i2 == DoodleShape.FILL_TRIANGLE.ordinal()) {
            return generateTriangles(i, i6, i7);
        }
        if (i2 == DoodleShape.FILL_CIRCLE.ordinal()) {
            return generateOval(i, i6, i7);
        }
        if (i2 == DoodleShape.FILL_RECT.ordinal()) {
            return generateRectangle(i, i6, i7);
        }
        return null;
    }

    public static Bitmap generateTriangles(int i, int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStyle(Paint.Style.FILL);
        Path path = new Path();
        float f = i2;
        float f2 = i3;
        path.moveTo(0.0f, f2);
        path.lineTo(f / 2.0f, 0.0f);
        path.lineTo(f, f2);
        path.close();
        canvas.drawPath(path, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap generateOval(int i, int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawOval(new RectF(0.0f, 0.0f, i2, i3), paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap generateRectangle(int i, int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRect(0.0f, 0.0f, i2, i3, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap generateLine(int i, int i2, int i3, int i4) {
        int i5 = i3 / 50;
        int i6 = i5 * 5;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i6, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStrokeWidth(i6);
        float f = i4 * 0.25f;
        paint.setPathEffect(new DashPathEffect(new float[]{f, f}, 0.0f));
        float f2 = i5 * 2.5f;
        canvas.drawLine(0.0f, f2, i2, f2, paint);
        return bitmapCreateBitmap;
    }
}
