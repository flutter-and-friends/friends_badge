package org.devio.takephoto.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import org.devio.takephoto.compress.CompressConfig;
import org.devio.takephoto.model.CropOptions;
import org.devio.takephoto.model.MultipleCrop;
import org.devio.takephoto.model.TException;
import org.devio.takephoto.model.TResult;
import org.devio.takephoto.model.TakePhotoOptions;
import org.devio.takephoto.permission.PermissionManager;

/* loaded from: classes2.dex */
public interface TakePhoto {

    public interface TakeResultListener {
        void takeCancel();

        void takeFail(TResult tResult, String str);

        void takeSuccess(TResult tResult);
    }

    void onActivityResult(int i, int i2, Intent intent);

    void onCreate(Bundle bundle);

    void onCrop(Uri uri, Uri uri2, CropOptions cropOptions) throws TException;

    void onCrop(MultipleCrop multipleCrop, CropOptions cropOptions) throws TException;

    void onEnableCompress(CompressConfig compressConfig, boolean z);

    void onPickFromCapture(Uri uri);

    void onPickFromCaptureWithCrop(Uri uri, CropOptions cropOptions);

    void onPickFromDocuments();

    void onPickFromDocumentsWithCrop(Uri uri, CropOptions cropOptions);

    void onPickFromGallery();

    void onPickFromGalleryWithCrop(Uri uri, CropOptions cropOptions);

    void onPickMultiple(int i);

    void onPickMultipleWithCrop(int i, CropOptions cropOptions);

    void onSaveInstanceState(Bundle bundle);

    void permissionNotify(PermissionManager.TPermissionType tPermissionType);

    void setTakePhotoOptions(TakePhotoOptions takePhotoOptions);
}
