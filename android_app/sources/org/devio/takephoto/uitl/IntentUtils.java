package org.devio.takephoto.uitl;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.darsh.multipleimageselect.activities.AlbumSelectActivity;
import com.darsh.multipleimageselect.helpers.Constants;
import com.tencent.bugly.Bugly;
import org.devio.takephoto.model.CropOptions;
import org.devio.takephoto.model.TContextWrap;

/* loaded from: classes2.dex */
public class IntentUtils {
    private static final String TAG = IntentUtils.class.getName();

    public static Intent getPickMultipleIntent(TContextWrap tContextWrap, int i) {
        Intent intent = new Intent(tContextWrap.getActivity(), (Class<?>) AlbumSelectActivity.class);
        if (i <= 0) {
            i = 1;
        }
        intent.putExtra(Constants.INTENT_EXTRA_LIMIT, i);
        return intent;
    }

    public static Intent getCropIntentWithOtherApp(Uri uri, Uri uri2, CropOptions cropOptions) {
        boolean zIsReturnData = TUtils.isReturnData();
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("getCaptureIntentWithCrop:isReturnData:");
        sb.append(zIsReturnData ? "true" : Bugly.SDK_IS_DEV);
        Log.w(str, sb.toString());
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.addFlags(1);
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        if (cropOptions.getAspectX() * cropOptions.getAspectY() > 0) {
            intent.putExtra("aspectX", cropOptions.getAspectX());
            intent.putExtra("aspectY", cropOptions.getAspectY());
        }
        if (cropOptions.getOutputX() * cropOptions.getOutputY() > 0) {
            intent.putExtra("outputX", cropOptions.getOutputX());
            intent.putExtra("outputY", cropOptions.getOutputY());
        }
        intent.putExtra("scale", true);
        intent.putExtra("output", uri2);
        intent.putExtra("return-data", zIsReturnData);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        return intent;
    }

    public static Intent getCaptureIntent(Uri uri) {
        Intent intent = new Intent();
        intent.addFlags(1);
        intent.setAction("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        return intent;
    }

    public static Intent getPickIntentWithGallery() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.PICK");
        intent.setType("image/*");
        return intent;
    }

    public static Intent getPickIntentWithDocuments() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        return intent;
    }
}
