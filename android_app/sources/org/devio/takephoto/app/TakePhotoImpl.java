package org.devio.takephoto.app;

import android.app.Activity;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import com.darsh.multipleimageselect.helpers.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.devio.takephoto.C1727R;
import org.devio.takephoto.app.TakePhoto;
import org.devio.takephoto.compress.CompressConfig;
import org.devio.takephoto.compress.CompressImage;
import org.devio.takephoto.compress.CompressImageImpl;
import org.devio.takephoto.model.CropOptions;
import org.devio.takephoto.model.MultipleCrop;
import org.devio.takephoto.model.TContextWrap;
import org.devio.takephoto.model.TException;
import org.devio.takephoto.model.TExceptionType;
import org.devio.takephoto.model.TImage;
import org.devio.takephoto.model.TIntentWap;
import org.devio.takephoto.model.TResult;
import org.devio.takephoto.model.TakePhotoOptions;
import org.devio.takephoto.permission.PermissionManager;
import org.devio.takephoto.uitl.ImageRotateUtil;
import org.devio.takephoto.uitl.IntentUtils;
import org.devio.takephoto.uitl.TConstant;
import org.devio.takephoto.uitl.TFileUtils;
import org.devio.takephoto.uitl.TImageFiles;
import org.devio.takephoto.uitl.TUriParse;
import org.devio.takephoto.uitl.TUtils;

/* loaded from: classes2.dex */
public class TakePhotoImpl implements TakePhoto {
    private static final String TAG = IntentUtils.class.getName();
    private CompressConfig compressConfig;
    private TContextWrap contextWrap;
    private CropOptions cropOptions;
    private TImage.FromType fromType;
    private TakePhoto.TakeResultListener listener;
    private MultipleCrop multipleCrop;
    private Uri outPutUri;
    private PermissionManager.TPermissionType permissionType;
    private boolean showCompressDialog;
    private TakePhotoOptions takePhotoOptions;
    private Uri tempUri;
    private ProgressDialog wailLoadDialog;

    public TakePhotoImpl(Activity activity, TakePhoto.TakeResultListener takeResultListener) {
        this.contextWrap = TContextWrap.m879of(activity);
        this.listener = takeResultListener;
    }

    public TakePhotoImpl(Fragment fragment, TakePhoto.TakeResultListener takeResultListener) {
        this.contextWrap = TContextWrap.m880of(fragment);
        this.listener = takeResultListener;
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.cropOptions = (CropOptions) bundle.getSerializable("cropOptions");
            this.takePhotoOptions = (TakePhotoOptions) bundle.getSerializable("takePhotoOptions");
            this.showCompressDialog = bundle.getBoolean("showCompressDialog");
            this.outPutUri = (Uri) bundle.getParcelable("outPutUri");
            this.tempUri = (Uri) bundle.getParcelable("tempUri");
            this.compressConfig = (CompressConfig) bundle.getSerializable("compressConfig");
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable("cropOptions", this.cropOptions);
        bundle.putSerializable("takePhotoOptions", this.takePhotoOptions);
        bundle.putBoolean("showCompressDialog", this.showCompressDialog);
        bundle.putParcelable("outPutUri", this.outPutUri);
        bundle.putParcelable("tempUri", this.tempUri);
        bundle.putSerializable("compressConfig", this.compressConfig);
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        TImage tImageM883of;
        Log.e("TakePhotoImpl", i + "");
        if (i != 6709) {
            switch (i) {
                case 1002:
                    if (i2 == -1) {
                        TakePhotoOptions takePhotoOptions = this.takePhotoOptions;
                        if (takePhotoOptions != null && takePhotoOptions.isCorrectImage()) {
                            ImageRotateUtil.m887of().correctImage(this.contextWrap.getActivity(), this.tempUri);
                        }
                        try {
                            onCrop(this.tempUri, Uri.fromFile(new File(TUriParse.parseOwnUri(this.contextWrap.getActivity(), this.outPutUri))), this.cropOptions);
                            break;
                        } catch (TException e) {
                            takeResult(TResult.m885of(TImage.m881of(this.outPutUri, this.fromType)), e.getDetailMessage());
                            e.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                    break;
                case 1003:
                    if (i2 == -1) {
                        TakePhotoOptions takePhotoOptions2 = this.takePhotoOptions;
                        if (takePhotoOptions2 != null && takePhotoOptions2.isCorrectImage()) {
                            ImageRotateUtil.m887of().correctImage(this.contextWrap.getActivity(), this.outPutUri);
                        }
                        try {
                            takeResult(TResult.m885of(TImage.m883of(TUriParse.getFilePathWithUri(this.outPutUri, this.contextWrap.getActivity()), this.fromType)), new String[0]);
                            break;
                        } catch (TException e2) {
                            takeResult(TResult.m885of(TImage.m881of(this.outPutUri, this.fromType)), e2.getDetailMessage());
                            e2.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                    break;
                case 1004:
                    if (i2 == -1) {
                        try {
                            takeResult(TResult.m885of(TImage.m883of(TUriParse.getFilePathWithDocumentsUri(intent.getData(), this.contextWrap.getActivity()), this.fromType)), new String[0]);
                            break;
                        } catch (TException e3) {
                            takeResult(TResult.m885of(TImage.m881of(this.outPutUri, this.fromType)), e3.getDetailMessage());
                            e3.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                case TConstant.RC_PICK_PICTURE_FROM_DOCUMENTS_CROP /* 1005 */:
                    if (i2 == -1) {
                        try {
                            onCrop(intent.getData(), this.outPutUri, this.cropOptions);
                            break;
                        } catch (TException e4) {
                            takeResult(TResult.m885of(TImage.m881of(this.outPutUri, this.fromType)), e4.getDetailMessage());
                            e4.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                case 1006:
                    if (i2 == -1) {
                        try {
                            takeResult(TResult.m885of(TImage.m883of(TUriParse.getFilePathWithUri(intent.getData(), this.contextWrap.getActivity()), this.fromType)), new String[0]);
                            break;
                        } catch (TException e5) {
                            takeResult(TResult.m885of(TImage.m881of(intent.getData(), this.fromType)), e5.getDetailMessage());
                            e5.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                case 1007:
                    if (i2 == -1 && intent != null) {
                        try {
                            onCrop(intent.getData(), this.outPutUri, this.cropOptions);
                            break;
                        } catch (TException e6) {
                            takeResult(TResult.m885of(TImage.m881of(this.outPutUri, this.fromType)), e6.getDetailMessage());
                            e6.printStackTrace();
                            return;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
                case 1008:
                    if (i2 == -1 && intent != null) {
                        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(Constants.INTENT_EXTRA_IMAGES);
                        if (this.cropOptions != null) {
                            try {
                                onCrop(MultipleCrop.m877of(TUtils.convertImageToUri(this.contextWrap.getActivity(), parcelableArrayListExtra), this.contextWrap.getActivity(), this.fromType), this.cropOptions);
                                break;
                            } catch (TException e7) {
                                cropContinue(false);
                                e7.printStackTrace();
                                return;
                            }
                        } else {
                            takeResult(TResult.m884of(TUtils.getTImagesWithImages(parcelableArrayListExtra, this.fromType)), new String[0]);
                            break;
                        }
                    } else {
                        this.listener.takeCancel();
                        break;
                    }
            }
        }
        if (i2 == -1) {
            if (this.multipleCrop != null) {
                cropContinue(true);
                return;
            }
            try {
                if (this.tempUri != null) {
                    tImageM883of = TImage.m882of(TUriParse.getFilePathWithUri(this.tempUri, this.contextWrap.getActivity()), TUriParse.getFilePathWithUri(this.outPutUri, this.contextWrap.getActivity()), this.fromType);
                } else {
                    tImageM883of = TImage.m883of(TUriParse.getFilePathWithUri(this.outPutUri, this.contextWrap.getActivity()), this.fromType);
                }
                tImageM883of.setCropped(true);
                takeResult(TResult.m885of(tImageM883of), new String[0]);
                return;
            } catch (TException e8) {
                takeResult(TResult.m885of(TImage.m883of(this.outPutUri.getPath(), this.fromType)), e8.getDetailMessage());
                e8.printStackTrace();
                return;
            }
        }
        if (i2 == 0) {
            if (this.multipleCrop != null) {
                if (intent != null) {
                    TImageFiles.writeToFile((Bitmap) intent.getParcelableExtra("data"), this.outPutUri);
                    cropContinue(true);
                    return;
                } else {
                    cropContinue(false);
                    return;
                }
            }
            if (intent != null) {
                TImageFiles.writeToFile((Bitmap) intent.getParcelableExtra("data"), this.outPutUri);
                TImage tImageM883of2 = TImage.m883of(this.outPutUri.getPath(), this.fromType);
                tImageM883of2.setCropped(true);
                takeResult(TResult.m885of(tImageM883of2), new String[0]);
                return;
            }
            this.listener.takeCancel();
            return;
        }
        if (this.multipleCrop != null) {
            cropContinue(false);
        } else {
            this.listener.takeCancel();
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickMultiple(int i) {
        if (PermissionManager.TPermissionType.WAIT.equals(this.permissionType)) {
            return;
        }
        TContextWrap tContextWrap = this.contextWrap;
        TUtils.startActivityForResult(tContextWrap, new TIntentWap(IntentUtils.getPickMultipleIntent(tContextWrap, i), 1008));
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickMultipleWithCrop(int i, CropOptions cropOptions) {
        this.fromType = TImage.FromType.OTHER;
        onPickMultiple(i);
        this.cropOptions = cropOptions;
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onCrop(Uri uri, Uri uri2, CropOptions cropOptions) throws TException {
        if (PermissionManager.TPermissionType.WAIT.equals(this.permissionType)) {
            return;
        }
        this.outPutUri = uri2;
        if (!TImageFiles.checkMimeType(this.contextWrap.getActivity(), TImageFiles.getMimeType(this.contextWrap.getActivity(), uri))) {
            Toast.makeText(this.contextWrap.getActivity(), this.contextWrap.getActivity().getResources().getText(C1727R.string.tip_type_not_image), 0).show();
            throw new TException(TExceptionType.TYPE_NOT_IMAGE);
        }
        cropWithNonException(uri, uri2, cropOptions);
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onCrop(MultipleCrop multipleCrop, CropOptions cropOptions) throws TException {
        this.multipleCrop = multipleCrop;
        onCrop(multipleCrop.getUris().get(0), multipleCrop.getOutUris().get(0), cropOptions);
    }

    private void cropWithNonException(Uri uri, Uri uri2, CropOptions cropOptions) {
        this.outPutUri = uri2;
        if (cropOptions.isWithOwnCrop()) {
            TUtils.cropWithOwnApp(this.contextWrap, uri, uri2, cropOptions);
        } else {
            TUtils.cropWithOtherAppBySafely(this.contextWrap, uri, uri2, cropOptions);
        }
    }

    private void cropContinue(boolean z) {
        Map cropWithUri = this.multipleCrop.setCropWithUri(this.outPutUri, z);
        int iIntValue = ((Integer) cropWithUri.get("index")).intValue();
        if (!((Boolean) cropWithUri.get("isLast")).booleanValue()) {
            int i = iIntValue + 1;
            cropWithNonException(this.multipleCrop.getUris().get(i), this.multipleCrop.getOutUris().get(i), this.cropOptions);
        } else {
            if (z) {
                takeResult(TResult.m884of(this.multipleCrop.gettImages()), new String[0]);
                return;
            }
            takeResult(TResult.m884of(this.multipleCrop.gettImages()), this.outPutUri.getPath() + this.contextWrap.getActivity().getResources().getString(C1727R.string.msg_crop_canceled));
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromDocuments() {
        selectPicture(0, false);
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromGallery() {
        selectPicture(1, false);
    }

    private void selectPicture(int i, boolean z) {
        this.fromType = TImage.FromType.OTHER;
        TakePhotoOptions takePhotoOptions = this.takePhotoOptions;
        if (takePhotoOptions != null && takePhotoOptions.isWithOwnGallery()) {
            onPickMultiple(1);
            return;
        }
        if (PermissionManager.TPermissionType.WAIT.equals(this.permissionType)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TIntentWap(IntentUtils.getPickIntentWithDocuments(), z ? TConstant.RC_PICK_PICTURE_FROM_DOCUMENTS_CROP : 1004));
        arrayList.add(new TIntentWap(IntentUtils.getPickIntentWithGallery(), z ? 1007 : 1006));
        try {
            TUtils.sendIntentBySafely(this.contextWrap, arrayList, i, z);
        } catch (TException e) {
            takeResult(TResult.m885of(TImage.m883of("", this.fromType)), e.getDetailMessage());
            e.printStackTrace();
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromGalleryWithCrop(Uri uri, CropOptions cropOptions) {
        this.cropOptions = cropOptions;
        this.outPutUri = uri;
        selectPicture(1, true);
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromDocumentsWithCrop(Uri uri, CropOptions cropOptions) {
        this.cropOptions = cropOptions;
        this.outPutUri = uri;
        selectPicture(0, true);
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromCapture(Uri uri) {
        this.fromType = TImage.FromType.CAMERA;
        if (PermissionManager.TPermissionType.WAIT.equals(this.permissionType)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            this.outPutUri = TUriParse.convertFileUriToFileProviderUri(this.contextWrap.getActivity(), uri);
        } else {
            this.outPutUri = uri;
        }
        try {
            TUtils.captureBySafely(this.contextWrap, new TIntentWap(IntentUtils.getCaptureIntent(this.outPutUri), 1003));
        } catch (TException e) {
            takeResult(TResult.m885of(TImage.m883of("", this.fromType)), e.getDetailMessage());
            e.printStackTrace();
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onPickFromCaptureWithCrop(Uri uri, CropOptions cropOptions) {
        this.fromType = TImage.FromType.CAMERA;
        if (PermissionManager.TPermissionType.WAIT.equals(this.permissionType)) {
            return;
        }
        this.cropOptions = cropOptions;
        this.outPutUri = uri;
        if (Build.VERSION.SDK_INT >= 23) {
            this.tempUri = TUriParse.getTempUri(this.contextWrap.getActivity());
        } else {
            this.tempUri = uri;
        }
        try {
            TUtils.captureBySafely(this.contextWrap, new TIntentWap(IntentUtils.getCaptureIntent(this.tempUri), 1002));
        } catch (TException e) {
            takeResult(TResult.m885of(TImage.m883of("", this.fromType)), e.getDetailMessage());
            e.printStackTrace();
        }
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void onEnableCompress(CompressConfig compressConfig, boolean z) {
        this.compressConfig = compressConfig;
        this.showCompressDialog = z;
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void setTakePhotoOptions(TakePhotoOptions takePhotoOptions) {
        this.takePhotoOptions = takePhotoOptions;
    }

    @Override // org.devio.takephoto.app.TakePhoto
    public void permissionNotify(PermissionManager.TPermissionType tPermissionType) {
        this.permissionType = tPermissionType;
    }

    private void takeResult(final TResult tResult, final String... strArr) {
        if (this.compressConfig == null) {
            handleTakeCallBack(tResult, strArr);
            return;
        }
        if (this.showCompressDialog) {
            this.wailLoadDialog = TUtils.showProgressDialog(this.contextWrap.getActivity(), this.contextWrap.getActivity().getResources().getString(C1727R.string.tip_compress));
        }
        CompressImageImpl.m876of(this.contextWrap.getActivity(), this.compressConfig, tResult.getImages(), new CompressImage.CompressListener() { // from class: org.devio.takephoto.app.TakePhotoImpl.1
            @Override // org.devio.takephoto.compress.CompressImage.CompressListener
            public void onCompressSuccess(ArrayList<TImage> arrayList) {
                if (!TakePhotoImpl.this.compressConfig.isEnableReserveRaw()) {
                    TakePhotoImpl.this.deleteRawFile(arrayList);
                }
                TakePhotoImpl.this.handleTakeCallBack(tResult, new String[0]);
                if (TakePhotoImpl.this.wailLoadDialog == null || TakePhotoImpl.this.contextWrap.getActivity().isFinishing()) {
                    return;
                }
                TakePhotoImpl.this.wailLoadDialog.dismiss();
            }

            @Override // org.devio.takephoto.compress.CompressImage.CompressListener
            public void onCompressFailed(ArrayList<TImage> arrayList, String str) throws Resources.NotFoundException {
                if (!TakePhotoImpl.this.compressConfig.isEnableReserveRaw()) {
                    TakePhotoImpl.this.deleteRawFile(arrayList);
                }
                TakePhotoImpl takePhotoImpl = TakePhotoImpl.this;
                TResult tResultM884of = TResult.m884of(arrayList);
                String[] strArr2 = new String[1];
                String string = TakePhotoImpl.this.contextWrap.getActivity().getResources().getString(C1727R.string.tip_compress_failed);
                Object[] objArr = new Object[3];
                String[] strArr3 = strArr;
                objArr[0] = strArr3.length > 0 ? strArr3[0] : "";
                objArr[1] = str;
                objArr[2] = tResult.getImage().getCompressPath();
                strArr2[0] = String.format(string, objArr);
                takePhotoImpl.handleTakeCallBack(tResultM884of, strArr2);
                if (TakePhotoImpl.this.wailLoadDialog == null || TakePhotoImpl.this.contextWrap.getActivity().isFinishing()) {
                    return;
                }
                TakePhotoImpl.this.wailLoadDialog.dismiss();
            }
        }).compress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteRawFile(ArrayList<TImage> arrayList) {
        Iterator<TImage> it = arrayList.iterator();
        while (it.hasNext()) {
            TImage next = it.next();
            if (TImage.FromType.CAMERA == this.fromType) {
                TFileUtils.delete(next.getOriginalPath());
                next.setOriginalPath("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTakeCallBack(TResult tResult, String... strArr) {
        boolean z = false;
        if (strArr.length > 0) {
            this.listener.takeFail(tResult, strArr[0]);
        } else {
            MultipleCrop multipleCrop = this.multipleCrop;
            if (multipleCrop != null && multipleCrop.hasFailed) {
                this.listener.takeFail(tResult, this.contextWrap.getActivity().getResources().getString(C1727R.string.msg_crop_failed));
            } else if (this.compressConfig != null) {
                Iterator<TImage> it = tResult.getImages().iterator();
                while (it.hasNext()) {
                    TImage next = it.next();
                    if (next == null || !next.isCompressed()) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.listener.takeFail(tResult, this.contextWrap.getActivity().getString(C1727R.string.msg_compress_failed));
                } else {
                    this.listener.takeSuccess(tResult);
                }
            } else {
                this.listener.takeSuccess(tResult);
            }
        }
        clearParams();
    }

    private void clearParams() {
        this.compressConfig = null;
        this.takePhotoOptions = null;
        this.cropOptions = null;
        this.multipleCrop = null;
    }
}
