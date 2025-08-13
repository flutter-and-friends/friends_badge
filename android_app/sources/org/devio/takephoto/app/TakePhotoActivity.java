package org.devio.takephoto.app;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
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
public class TakePhotoActivity extends Activity implements TakePhoto.TakeResultListener, InvokeListener {
    private static final String TAG = TakePhotoActivity.class.getName();
    private InvokeParam invokeParam;
    private TakePhoto takePhoto;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        getTakePhoto().onCreate(bundle);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        getTakePhoto().onSaveInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        getTakePhoto().onActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionManager.handlePermissionsResult(this, PermissionManager.onRequestPermissionsResult(i, strArr, iArr), this.invokeParam, this);
    }

    public TakePhoto getTakePhoto() {
        if (this.takePhoto == null) {
            this.takePhoto = (TakePhoto) TakePhotoInvocationHandler.m886of(this).bind(new TakePhotoImpl(this, this));
        }
        return this.takePhoto;
    }

    public void takeSuccess(TResult tResult) {
        Log.i(TAG, "takeSuccess：" + tResult.getImage().getCompressPath());
    }

    public void takeFail(TResult tResult, String str) {
        Log.i(TAG, "takeFail:" + str);
    }

    public void takeCancel() {
        Log.i(TAG, getResources().getString(C1727R.string.msg_operation_canceled));
    }

    @Override // org.devio.takephoto.permission.InvokeListener
    public PermissionManager.TPermissionType invoke(InvokeParam invokeParam) {
        PermissionManager.TPermissionType tPermissionTypeCheckPermission = PermissionManager.checkPermission(TContextWrap.m879of(this), invokeParam.getMethod());
        if (PermissionManager.TPermissionType.WAIT.equals(tPermissionTypeCheckPermission)) {
            this.invokeParam = invokeParam;
        }
        return tPermissionTypeCheckPermission;
    }
}
