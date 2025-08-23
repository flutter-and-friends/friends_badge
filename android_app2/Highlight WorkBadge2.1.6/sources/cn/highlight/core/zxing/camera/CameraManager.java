package cn.highlight.core.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import cn.highlight.core.zxing.camera.open.OpenCameraInterface;
import java.io.IOException;

/* loaded from: classes.dex */
public class CameraManager {
    static final String TAG = CameraManager.class.getSimpleName();
    AutoFocusManager autoFocusManager;
    Camera camera;
    final CameraConfigurationManager configManager;
    final Context context;
    boolean initialized;
    final PreviewCallback previewCallback;
    boolean previewing;
    int requestedCameraId = -1;

    public CameraManager(Context context) {
        this.context = context;
        this.configManager = new CameraConfigurationManager(context);
        this.previewCallback = new PreviewCallback(this.configManager);
    }

    public synchronized void openDriver(SurfaceHolder surfaceHolder) throws IOException {
        Camera cameraOpen = this.camera;
        if (cameraOpen == null) {
            if (this.requestedCameraId >= 0) {
                cameraOpen = OpenCameraInterface.open(this.requestedCameraId);
            } else {
                cameraOpen = OpenCameraInterface.open();
            }
            if (cameraOpen == null) {
                throw new IOException();
            }
            this.camera = cameraOpen;
        }
        cameraOpen.setPreviewDisplay(surfaceHolder);
        if (!this.initialized) {
            this.initialized = true;
            this.configManager.initFromCameraParameters(cameraOpen);
        }
        Camera.Parameters parameters = cameraOpen.getParameters();
        String strFlatten = parameters == null ? null : parameters.flatten();
        try {
            this.configManager.setDesiredCameraParameters(cameraOpen, false);
        } catch (RuntimeException unused) {
            Log.w(TAG, "Camera rejected parameters. Setting only minimal safe-mode parameters");
            Log.i(TAG, "Resetting to saved camera params: " + strFlatten);
            if (strFlatten != null) {
                Camera.Parameters parameters2 = cameraOpen.getParameters();
                parameters2.unflatten(strFlatten);
                try {
                    cameraOpen.setParameters(parameters2);
                    this.configManager.setDesiredCameraParameters(cameraOpen, true);
                } catch (RuntimeException unused2) {
                    Log.w(TAG, "Camera rejected even safe-mode parameters! No configuration");
                }
            }
        }
    }

    public synchronized boolean isOpen() {
        return this.camera != null;
    }

    public synchronized void closeDriver() {
        if (this.camera != null) {
            this.camera.release();
            this.camera = null;
        }
    }

    public synchronized void startPreview() {
        Camera camera = this.camera;
        if (camera != null && !this.previewing) {
            camera.startPreview();
            this.previewing = true;
            this.autoFocusManager = new AutoFocusManager(this.context, this.camera);
        }
    }

    public synchronized void stopPreview() {
        if (this.autoFocusManager != null) {
            this.autoFocusManager.stop();
            this.autoFocusManager = null;
        }
        if (this.camera != null && this.previewing) {
            this.camera.stopPreview();
            this.previewCallback.setHandler(null, 0);
            this.previewing = false;
        }
    }

    public synchronized void requestPreviewFrame(Handler handler, int i) {
        Camera camera = this.camera;
        if (camera != null && this.previewing) {
            this.previewCallback.setHandler(handler, i);
            camera.setOneShotPreviewCallback(this.previewCallback);
        }
    }

    public synchronized void setManualCameraId(int i) {
        this.requestedCameraId = i;
    }

    public Point getCameraResolution() {
        return this.configManager.getCameraResolution();
    }

    public Camera.Size getPreviewSize() {
        Camera camera = this.camera;
        if (camera != null) {
            return camera.getParameters().getPreviewSize();
        }
        return null;
    }

    public void openLight() {
        Camera camera = this.camera;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode("torch");
            this.camera.setParameters(parameters);
        }
    }

    public void offLight() {
        Camera camera = this.camera;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode("off");
            this.camera.setParameters(parameters);
        }
    }
}
