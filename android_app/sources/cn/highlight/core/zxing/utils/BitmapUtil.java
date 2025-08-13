package cn.highlight.core.zxing.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

/* loaded from: classes.dex */
public class BitmapUtil {
    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int iRound;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        while (i2 * i * 4 > ((AppliationUtil.FREE_MEMORY * 1048576) / 4) * 3) {
            i2 -= 50;
            i -= 50;
        }
        if (i3 > i2 || i4 > i) {
            int iRound2 = Math.round(i3 / i2);
            iRound = Math.round(i4 / i);
            if (iRound2 < iRound) {
                iRound = iRound2;
            }
        } else {
            iRound = 1;
        }
        if (iRound == 0) {
            return 1;
        }
        return iRound;
    }

    public static Bitmap decodeBitmapFromPath(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }
}
