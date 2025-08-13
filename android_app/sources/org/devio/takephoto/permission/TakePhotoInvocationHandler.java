package org.devio.takephoto.permission;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.devio.takephoto.app.TakePhoto;
import org.devio.takephoto.model.InvokeParam;
import org.devio.takephoto.permission.PermissionManager;

/* loaded from: classes2.dex */
public class TakePhotoInvocationHandler implements InvocationHandler {
    private TakePhoto delegate;
    private InvokeListener listener;

    /* renamed from: of */
    public static TakePhotoInvocationHandler m886of(InvokeListener invokeListener) {
        return new TakePhotoInvocationHandler(invokeListener);
    }

    private TakePhotoInvocationHandler(InvokeListener invokeListener) {
        this.listener = invokeListener;
    }

    public Object bind(TakePhoto takePhoto) {
        this.delegate = takePhoto;
        return Proxy.newProxyInstance(takePhoto.getClass().getClassLoader(), takePhoto.getClass().getInterfaces(), this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        PermissionManager.TPermissionType tPermissionTypeInvoke = this.listener.invoke(new InvokeParam(obj, method, objArr));
        if ((obj instanceof TakePhoto) && !PermissionManager.TPermissionType.NOT_NEED.equals(tPermissionTypeInvoke)) {
            ((TakePhoto) obj).permissionNotify(tPermissionTypeInvoke);
        }
        return method.invoke(this.delegate, objArr);
    }
}
