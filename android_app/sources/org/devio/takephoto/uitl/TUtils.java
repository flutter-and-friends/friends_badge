package org.devio.takephoto.uitl;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.darsh.multipleimageselect.models.Image;
import com.soundcloud.android.crop.Crop;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.devio.takephoto.C1727R;
import org.devio.takephoto.model.CropOptions;
import org.devio.takephoto.model.TContextWrap;
import org.devio.takephoto.model.TException;
import org.devio.takephoto.model.TExceptionType;
import org.devio.takephoto.model.TImage;
import org.devio.takephoto.model.TIntentWap;

/* loaded from: classes2.dex */
public class TUtils {
    private static final String TAG = IntentUtils.class.getName();

    public static ArrayList<Uri> convertImageToUri(Context context, ArrayList<Image> arrayList) throws TException {
        ArrayList<Uri> arrayList2 = new ArrayList<>();
        Iterator<Image> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(FileProvider.getUriForFile(context, TConstant.getFileProviderName(context), new File(it.next().path)));
        }
        return arrayList2;
    }

    public static ArrayList<TImage> getTImagesWithImages(ArrayList<Image> arrayList, TImage.FromType fromType) {
        ArrayList<TImage> arrayList2 = new ArrayList<>();
        Iterator<Image> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(TImage.m883of(it.next().path, fromType));
        }
        return arrayList2;
    }

    public static ArrayList<TImage> getTImagesWithUris(ArrayList<Uri> arrayList, TImage.FromType fromType) {
        ArrayList<TImage> arrayList2 = new ArrayList<>();
        Iterator<Uri> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(TImage.m881of(it.next(), fromType));
        }
        return arrayList2;
    }

    public static void startActivityForResult(TContextWrap tContextWrap, TIntentWap tIntentWap) {
        if (tContextWrap.getFragment() != null) {
            tContextWrap.getFragment().startActivityForResult(tIntentWap.getIntent(), tIntentWap.getRequestCode());
        } else {
            tContextWrap.getActivity().startActivityForResult(tIntentWap.getIntent(), tIntentWap.getRequestCode());
        }
    }

    public static void sendIntentBySafely(TContextWrap tContextWrap, List<TIntentWap> list, int i, boolean z) throws TException {
        int i2 = i + 1;
        if (i2 > list.size()) {
            throw new TException(z ? TExceptionType.TYPE_NO_MATCH_PICK_INTENT : TExceptionType.TYPE_NO_MATCH_CROP_INTENT);
        }
        TIntentWap tIntentWap = list.get(i);
        if (tContextWrap.getActivity().getPackageManager().queryIntentActivities(tIntentWap.getIntent(), 131072).isEmpty()) {
            sendIntentBySafely(tContextWrap, list, i2, z);
        } else {
            startActivityForResult(tContextWrap, tIntentWap);
        }
    }

    public static void captureBySafely(TContextWrap tContextWrap, TIntentWap tIntentWap) throws TException {
        if (tContextWrap.getActivity().getPackageManager().queryIntentActivities(tIntentWap.getIntent(), 131072).isEmpty()) {
            Toast.makeText(tContextWrap.getActivity(), tContextWrap.getActivity().getResources().getText(C1727R.string.tip_no_camera), 0).show();
            throw new TException(TExceptionType.TYPE_NO_CAMERA);
        }
        startActivityForResult(tContextWrap, tIntentWap);
    }

    public static void cropWithOtherAppBySafely(TContextWrap tContextWrap, Uri uri, Uri uri2, CropOptions cropOptions) {
        if (tContextWrap.getActivity().getPackageManager().queryIntentActivities(IntentUtils.getCropIntentWithOtherApp(uri, uri2, cropOptions), 131072).isEmpty()) {
            cropWithOwnApp(tContextWrap, uri, uri2, cropOptions);
        } else {
            startActivityForResult(tContextWrap, new TIntentWap(IntentUtils.getCropIntentWithOtherApp(uri, uri2, cropOptions), 1001));
        }
    }

    public static void cropWithOwnApp(TContextWrap tContextWrap, Uri uri, Uri uri2, CropOptions cropOptions) {
        if (cropOptions.getAspectX() * cropOptions.getAspectY() > 0) {
            if (tContextWrap.getFragment() != null) {
                Crop.m314of(uri, uri2).withAspect(cropOptions.getAspectX(), cropOptions.getAspectY()).start(tContextWrap.getActivity(), tContextWrap.getFragment());
                return;
            } else {
                Crop.m314of(uri, uri2).withAspect(cropOptions.getAspectX(), cropOptions.getAspectY()).start(tContextWrap.getActivity());
                return;
            }
        }
        if (cropOptions.getOutputX() * cropOptions.getOutputY() > 0) {
            if (tContextWrap.getFragment() != null) {
                Crop.m314of(uri, uri2).withMaxSize(cropOptions.getOutputX(), cropOptions.getOutputY()).start(tContextWrap.getActivity(), tContextWrap.getFragment());
                return;
            } else {
                Crop.m314of(uri, uri2).withMaxSize(cropOptions.getOutputX(), cropOptions.getOutputY()).start(tContextWrap.getActivity());
                return;
            }
        }
        if (tContextWrap.getFragment() != null) {
            Crop.m314of(uri, uri2).asSquare().start(tContextWrap.getActivity(), tContextWrap.getFragment());
        } else {
            Crop.m314of(uri, uri2).asSquare().start(tContextWrap.getActivity());
        }
    }

    public static boolean isReturnData() {
        String str = Build.VERSION.RELEASE;
        int i = Build.VERSION.SDK_INT;
        Log.i(TAG, "release:" + str + "sdk:" + i);
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toLowerCase().contains("lenovo");
    }

    public static ProgressDialog showProgressDialog(Activity activity, String... strArr) throws Resources.NotFoundException {
        if (activity == null || activity.isFinishing()) {
            return null;
        }
        String string = activity.getResources().getString(C1727R.string.tip_tips);
        if (strArr != null && strArr.length > 0) {
            string = strArr[0];
        }
        ProgressDialog progressDialog = new ProgressDialog(activity);
        progressDialog.setTitle(string);
        progressDialog.setCancelable(false);
        progressDialog.show();
        return progressDialog;
    }
}
