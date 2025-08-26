package org.devio.takephoto.uitl;

import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ImageRotateUtil {
    /* renamed from: of */
    public static ImageRotateUtil m887of() {
        return new ImageRotateUtil();
    }

    private ImageRotateUtil() {
    }

    public void correctImage(Context context, Uri uri) {
        Bitmap bitmapDecodeFile;
        Bitmap bitmapRotateBitmapByDegree;
        String ownUri = TUriParse.parseOwnUri(context, uri);
        int bitmapDegree = getBitmapDegree(ownUri);
        if (bitmapDegree == 0 || (bitmapDecodeFile = BitmapFactory.decodeFile(ownUri)) == null || (bitmapRotateBitmapByDegree = rotateBitmapByDegree(bitmapDecodeFile, bitmapDegree)) == null) {
            return;
        }
        try {
            bitmapRotateBitmapByDegree.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(new File(ownUri)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
    }

    private int getBitmapDegree(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return PropertyID.CHARACTER_DATA_DELAY;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private Bitmap rotateBitmapByDegree(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap;
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError unused) {
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = bitmap;
        }
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }
}
