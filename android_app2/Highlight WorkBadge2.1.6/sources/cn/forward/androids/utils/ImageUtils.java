package cn.forward.androids.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.media.ExifInterface;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import cn.forward.androids.Image.ImageCache;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageUtils {
    private static final int COLORDRAWABLE_DIMENSION = 2;
    private static final Bitmap.Config BITMAP_CONFIG = Bitmap.Config.ARGB_8888;
    private static final Uri STORAGE_URI = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

    public static Uri addImage(ContentResolver contentResolver, String str) {
        File file = new File(str);
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(".");
        String strSubstring = name.substring(0, iLastIndexOf);
        return addImage(contentResolver, strSubstring, System.currentTimeMillis(), null, file.getParent(), strSubstring + name.substring(iLastIndexOf), new int[1]);
    }

    private static Uri addImage(ContentResolver contentResolver, String str, long j, Location location, String str2, String str3, int[] iArr) {
        File file = new File(str2, str3);
        long length = file.length();
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str3);
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(iArr[0]));
        contentValues.put("_data", file.getAbsolutePath());
        contentValues.put("_size", Long.valueOf(length));
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentResolver.insert(STORAGE_URI, contentValues);
    }

    public static Uri addVideo(ContentResolver contentResolver, String str, long j, Location location, String str2, String str3) {
        String str4 = str2 + "/" + str3;
        try {
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            new File(str2, str3);
        } catch (Exception e) {
            e.printStackTrace();
        }
        long length = new File(str2, str3).length();
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str3);
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "video/3gpp");
        contentValues.put("_data", str4);
        contentValues.put("_size", Long.valueOf(length));
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentResolver.insert(STORAGE_URI, contentValues);
    }

    public static Bitmap rotate(Bitmap bitmap, int i, boolean z) {
        Matrix matrix = new Matrix();
        matrix.setRotate(i, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (z) {
                bitmap.recycle();
            }
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int getBitmapExifRotate(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
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

    public static Bitmap rotateBitmapByExif(Bitmap bitmap, String str, boolean z) {
        int bitmapExifRotate = getBitmapExifRotate(str);
        return bitmapExifRotate != 0 ? rotate(bitmap, bitmapExifRotate, z) : bitmap;
    }

    public static final Bitmap createBitmapFromPath(String str, Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return createBitmapFromPath(str, defaultDisplay.getWidth(), defaultDisplay.getHeight());
    }

    public static final Bitmap createBitmapFromPath(String str, int i, int i2) {
        BitmapFactory.Options options;
        if (str.endsWith(".3gp")) {
            return ThumbnailUtils.createVideoThumbnail(str, 1);
        }
        try {
            try {
                options = new BitmapFactory.Options();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } catch (OutOfMemoryError unused) {
            options = null;
        }
        try {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = computeBitmapSimple(options.outWidth * options.outHeight, i * i2 * 2);
            options.inPurgeable = true;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inDither = false;
            options.inJustDecodeBounds = false;
            return rotateBitmapByExif(BitmapFactory.decodeFile(str, options), str, true);
        } catch (OutOfMemoryError unused2) {
            options.inSampleSize *= 2;
            return rotateBitmapByExif(BitmapFactory.decodeFile(str, options), str, true);
        }
    }

    public static final Bitmap createBitmapFromPath(byte[] bArr, int i, int i2) {
        BitmapFactory.Options options;
        try {
            try {
                options = new BitmapFactory.Options();
                try {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    options.inSampleSize = computeBitmapSimple(options.outWidth * options.outHeight, i * i2 * 2);
                    options.inPurgeable = true;
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    options.inDither = false;
                    options.inJustDecodeBounds = false;
                    return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                    return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } catch (OutOfMemoryError unused2) {
            options = null;
        }
    }

    public static int computeBitmapSimple(int i, int i2) {
        if (i2 <= 0 || i <= i2) {
            return 1;
        }
        int i3 = 2;
        while (i / (i3 * i3) > i2) {
            try {
                i3 *= 2;
            } catch (Exception unused) {
                return 1;
            }
        }
        return i3;
    }

    public static Bitmap getBitmapFromDrawable(Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            if (drawable instanceof ColorDrawable) {
                bitmapCreateBitmap = Bitmap.createBitmap(2, 2, BITMAP_CONFIG);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), BITMAP_CONFIG);
            }
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int[] optimizeMaxSizeByView(View view, int i, int i2) {
        Object value;
        int iIntValue;
        Object value2;
        int iIntValue2;
        if (i > 0 && i2 > 0) {
            return new int[]{i, i2};
        }
        if (view != null) {
            if (i <= 0) {
                i = view.getWidth();
            }
            if (i2 <= 0) {
                i2 = view.getHeight();
            }
            if (i > 0 && i2 > 0) {
                return new int[]{i, i2};
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width > 0) {
                    i = layoutParams.width;
                }
                if (layoutParams.height > 0) {
                    i2 = layoutParams.height;
                }
            }
            if (view instanceof ImageView) {
                if (i <= 0 && (value2 = ReflectUtil.getValue(view, "mMaxWidth")) != null && (iIntValue2 = ((Integer) value2).intValue()) > 0 && iIntValue2 < Integer.MAX_VALUE) {
                    i = iIntValue2;
                }
                if (i2 <= 0 && (value = ReflectUtil.getValue(view, "mMaxHeight")) != null && (iIntValue = ((Integer) value).intValue()) > 0 && iIntValue < Integer.MAX_VALUE) {
                    i2 = iIntValue;
                }
            }
        }
        if (i <= 0) {
            i = Util.getScreenWidth(view.getContext());
        }
        if (i2 <= 0) {
            i2 = Util.getScreenHeight(view.getContext());
        }
        return new int[]{i, i2};
    }

    public static Bitmap getVideoThumbnail(String str, int i, int i2, int i3, ImageCache imageCache) {
        Bitmap bitmap;
        String str2 = str + i + i2;
        if (imageCache != null && (bitmap = imageCache.getBitmap(str2)) != null) {
            return bitmap;
        }
        Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(str, i3);
        if (bitmapCreateVideoThumbnail == null) {
            return null;
        }
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmapCreateVideoThumbnail, i, i2, 2);
        if (imageCache != null && bitmapExtractThumbnail != null) {
            imageCache.save(bitmapExtractThumbnail, str2, Bitmap.CompressFormat.JPEG);
        }
        return bitmapExtractThumbnail;
    }
}
