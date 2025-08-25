package cn.highlight.work_card_write.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import cn.highlight.work_card_write.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ImageUtils {
    public static File convertBmpToPngAndReturnUri(Context context, Uri uri) throws IOException {
        String path;
        Bitmap bitmapLoadBitmapFromUri = loadBitmapFromUri(context, uri);
        if (bitmapLoadBitmapFromUri == null || (path = uri.getPath()) == null || !path.toLowerCase().endsWith(".bmp")) {
            return null;
        }
        return saveBitmapAsPng(context, bitmapLoadBitmapFromUri);
    }

    private static Bitmap loadBitmapFromUri(Context context, Uri uri) throws IOException {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                return bitmapDecodeStream;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static File saveBitmapAsPng(Context context, Bitmap bitmap) throws IOException {
        File file = new File(Constants.savePath);
        File file2 = new File(file, "converted_image" + System.currentTimeMillis() + ".png");
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
                return file2;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
