package org.devio.takephoto.permission;

import android.app.Activity;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.yanzhenjie.permission.runtime.Permission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.devio.takephoto.C1727R;
import org.devio.takephoto.app.TakePhoto;
import org.devio.takephoto.model.InvokeParam;
import org.devio.takephoto.model.TContextWrap;

/* loaded from: classes2.dex */
public class PermissionManager {
    private static final String[] methodNames = {"onPickFromCapture", "onPickFromCaptureWithCrop", "onPickMultiple", "onPickMultipleWithCrop", "onPickFromDocuments", "onPickFromDocumentsWithCrop", "onPickFromGallery", "onPickFromGalleryWithCrop", "onCrop"};

    public enum TPermission {
        STORAGE(Permission.WRITE_EXTERNAL_STORAGE),
        CAMERA(Permission.CAMERA);

        String stringValue;

        TPermission(String str) {
            this.stringValue = str;
        }

        public String stringValue() {
            return this.stringValue;
        }
    }

    public enum TPermissionType {
        GRANTED("已授权"),
        DENIED("未授权"),
        WAIT("等待授权"),
        NOT_NEED("无需授权"),
        ONLY_CAMERA_DENIED("没有拍照权限"),
        ONLY_STORAGE_DENIED("没有读写SD卡权限");

        String stringValue;

        TPermissionType(String str) {
            this.stringValue = str;
        }

        public String stringValue() {
            return this.stringValue;
        }
    }

    public static TPermissionType checkPermission(TContextWrap tContextWrap, Method method) {
        boolean z;
        String name = method.getName();
        int length = methodNames.length;
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (TextUtils.equals(name, methodNames[i])) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return TPermissionType.NOT_NEED;
        }
        boolean z3 = ContextCompat.checkSelfPermission(tContextWrap.getActivity(), TPermission.STORAGE.stringValue()) == 0;
        boolean z4 = !(TextUtils.equals(name, "onPickFromCapture") || TextUtils.equals(name, "onPickFromCaptureWithCrop")) || ContextCompat.checkSelfPermission(tContextWrap.getActivity(), TPermission.CAMERA.stringValue()) == 0;
        if (z3 && z4) {
            z2 = true;
        }
        if (!z2) {
            ArrayList arrayList = new ArrayList();
            if (!z3) {
                arrayList.add(TPermission.STORAGE.stringValue());
            }
            if (!z4) {
                arrayList.add(TPermission.CAMERA.stringValue());
            }
            requestPermission(tContextWrap, (String[]) arrayList.toArray(new String[arrayList.size()]));
        }
        return z2 ? TPermissionType.GRANTED : TPermissionType.WAIT;
    }

    public static void requestPermission(TContextWrap tContextWrap, String[] strArr) {
        if (tContextWrap.getFragment() != null) {
            tContextWrap.getFragment().requestPermissions(strArr, 2000);
        } else {
            ActivityCompat.requestPermissions(tContextWrap.getActivity(), strArr, 2000);
        }
    }

    public static TPermissionType onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 2000) {
            int length = strArr.length;
            boolean z = true;
            boolean z2 = true;
            for (int i2 = 0; i2 < length; i2++) {
                if (iArr[i2] != 0) {
                    if (TextUtils.equals(TPermission.STORAGE.stringValue(), strArr[i2])) {
                        z2 = false;
                    } else if (TextUtils.equals(TPermission.CAMERA.stringValue(), strArr[i2])) {
                        z = false;
                    }
                }
            }
            if (z && z2) {
                return TPermissionType.GRANTED;
            }
            if (!z && z2) {
                return TPermissionType.ONLY_CAMERA_DENIED;
            }
            if (!z2 && z) {
                return TPermissionType.ONLY_STORAGE_DENIED;
            }
            if (!z2 && !z) {
                return TPermissionType.DENIED;
            }
        }
        return TPermissionType.WAIT;
    }

    /* renamed from: org.devio.takephoto.permission.PermissionManager$1 */
    static /* synthetic */ class C17381 {

        /* renamed from: $SwitchMap$org$devio$takephoto$permission$PermissionManager$TPermissionType */
        static final /* synthetic */ int[] f1187x815f4904 = new int[TPermissionType.values().length];

        static {
            try {
                f1187x815f4904[TPermissionType.DENIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1187x815f4904[TPermissionType.ONLY_CAMERA_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1187x815f4904[TPermissionType.ONLY_STORAGE_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1187x815f4904[TPermissionType.GRANTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void handlePermissionsResult(Activity activity, TPermissionType tPermissionType, InvokeParam invokeParam, TakePhoto.TakeResultListener takeResultListener) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        String string;
        int i = C17381.f1187x815f4904[tPermissionType.ordinal()];
        if (i == 1) {
            string = activity.getResources().getString(C1727R.string.tip_permission_camera_storage);
            takeResultListener.takeFail(null, string);
        } else if (i == 2) {
            string = activity.getResources().getString(C1727R.string.tip_permission_camera);
            takeResultListener.takeFail(null, string);
        } else if (i == 3) {
            string = activity.getResources().getString(C1727R.string.tip_permission_storage);
            takeResultListener.takeFail(null, string);
        } else if (i != 4) {
            string = null;
        } else {
            try {
                invokeParam.getMethod().invoke(invokeParam.getProxy(), invokeParam.getArgs());
                string = null;
            } catch (Exception e) {
                e.printStackTrace();
                string = activity.getResources().getString(C1727R.string.tip_permission_camera_storage);
                takeResultListener.takeFail(null, string);
            }
        }
        if (string != null) {
            Toast.makeText(activity, string, 1).show();
        }
    }
}
