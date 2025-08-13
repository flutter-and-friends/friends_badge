package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.hardware.Camera;

/* loaded from: classes.dex */
class CameraTest implements PermissionTest {
    private static final Camera.PreviewCallback PREVIEW_CALLBACK = new Camera.PreviewCallback() { // from class: com.yanzhenjie.permission.checker.CameraTest.1
        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
        }
    };
    private Context mContext;

    CameraTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        Camera cameraOpen;
        try {
            cameraOpen = Camera.open();
            try {
                cameraOpen.setParameters(cameraOpen.getParameters());
                cameraOpen.setPreviewCallback(PREVIEW_CALLBACK);
                cameraOpen.startPreview();
                return true;
            } catch (Throwable unused) {
                try {
                    boolean zHasSystemFeature = true ^ this.mContext.getPackageManager().hasSystemFeature("android.hardware.camera");
                    if (cameraOpen != null) {
                        cameraOpen.stopPreview();
                        cameraOpen.setPreviewCallback(null);
                        cameraOpen.release();
                    }
                    return zHasSystemFeature;
                } finally {
                    if (cameraOpen != null) {
                        cameraOpen.stopPreview();
                        cameraOpen.setPreviewCallback(null);
                        cameraOpen.release();
                    }
                }
            }
        } catch (Throwable unused2) {
            cameraOpen = null;
        }
    }
}
