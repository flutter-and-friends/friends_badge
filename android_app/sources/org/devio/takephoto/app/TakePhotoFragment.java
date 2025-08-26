package org.devio.takephoto.app;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
import org.devio.takephoto.C1727R;
import org.devio.takephoto.app.TakePhoto;
import org.devio.takephoto.model.InvokeParam;
import org.devio.takephoto.model.TContextWrap;
import org.devio.takephoto.model.TResult;
import org.devio.takephoto.permission.InvokeListener;
import org.devio.takephoto.permission.PermissionManager;
import org.devio.takephoto.permission.TakePhotoInvocationHandler;

/* loaded from: classes2.dex */
public class TakePhotoFragment extends Fragment implements TakePhoto.TakeResultListener, InvokeListener {
    private static final String TAG = TakePhotoFragment.class.getName();
    private InvokeParam invokeParam;
    private TakePhoto takePhoto;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        getTakePhoto().onCreate(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        getTakePhoto().onSaveInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        getTakePhoto().onActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionManager.handlePermissionsResult(getActivity(), PermissionManager.onRequestPermissionsResult(i, strArr, iArr), this.invokeParam, this);
    }

    public TakePhoto getTakePhoto() {
        if (this.takePhoto == null) {
            this.takePhoto = (TakePhoto) TakePhotoInvocationHandler.m886of(this).bind(new TakePhotoImpl(getActivity(), this));
        }
        return this.takePhoto;
    }

    @Override // org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeSuccess(TResult tResult) {
        Log.i(TAG, "takeSuccess：" + tResult.getImage().getCompressPath());
    }

    @Override // org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeFail(TResult tResult, String str) {
        Log.i(TAG, "takeFail:" + str);
    }

    @Override // org.devio.takephoto.app.TakePhoto.TakeResultListener
    public void takeCancel() {
        Log.i(TAG, getResources().getString(C1727R.string.msg_operation_canceled));
    }

    @Override // org.devio.takephoto.permission.InvokeListener
    public PermissionManager.TPermissionType invoke(InvokeParam invokeParam) {
        PermissionManager.TPermissionType tPermissionTypeCheckPermission = PermissionManager.checkPermission(TContextWrap.m879of(getActivity()), invokeParam.getMethod());
        if (PermissionManager.TPermissionType.WAIT.equals(tPermissionTypeCheckPermission)) {
            this.invokeParam = invokeParam;
        }
        return tPermissionTypeCheckPermission;
    }
}
