package cn.highlight.work_card_write.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public class ScaleBitmapUtils {
    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMin = Math.min(i / width, i2 / height);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (width * fMin), (int) (height * fMin), false);
        if (bitmapCreateScaledBitmap.getWidth() == i && bitmapCreateScaledBitmap.getHeight() == i2) {
            return bitmapCreateScaledBitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, bitmap.getConfig());
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateScaledBitmap, (i - bitmapCreateScaledBitmap.getWidth()) / 2, (i2 - bitmapCreateScaledBitmap.getHeight()) / 2, (Paint) null);
        bitmapCreateScaledBitmap.recycle();
        return bitmapCreateBitmap;
    }

    public static boolean isBitmapPureColor(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return false;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        for (int i2 = 0; i2 < width; i2++) {
            for (int i3 = 0; i3 < height; i3++) {
                if (bitmap.getPixel(i2, i3) != i) {
                    return false;
                }
            }
        }
        return true;
    }
}
