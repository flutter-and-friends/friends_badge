package cn.highlight.core.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class CameraConfigurationManager {
    static final double MAX_ASPECT_DISTORTION = 0.15d;
    static final int MIN_PREVIEW_PIXELS = 153600;
    static final String TAG = "CameraConfiguration";
    Point cameraResolution;
    final Context context;
    Point screenResolution;

    public CameraConfigurationManager(Context context) {
        this.context = context;
    }

    public void initFromCameraParameters(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Display defaultDisplay = ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay();
        new Point();
        this.screenResolution = getDisplaySize(defaultDisplay);
        Log.i(TAG, "Screen resolution: " + this.screenResolution);
        Point point = new Point();
        point.x = this.screenResolution.x;
        point.y = this.screenResolution.y;
        if (this.screenResolution.x < this.screenResolution.y) {
            point.x = this.screenResolution.y;
            point.y = this.screenResolution.x;
        }
        this.cameraResolution = findBestPreviewSizeValue(parameters, point);
        Log.i(TAG, "Camera resolution x: " + this.cameraResolution.x);
        Log.i(TAG, "Camera resolution y: " + this.cameraResolution.y);
    }

    Point getDisplaySize(Display display) {
        Point point = new Point();
        try {
            display.getSize(point);
        } catch (NoSuchMethodError unused) {
            point.x = display.getWidth();
            point.y = display.getHeight();
        }
        return point;
    }

    public void setDesiredCameraParameters(Camera camera, boolean z) {
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            Log.w(TAG, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i(TAG, "Initial camera parameters: " + parameters.flatten());
        if (z) {
            Log.w(TAG, "In camera config safe mode -- most settings will not be honored");
        }
        parameters.setPreviewSize(this.cameraResolution.x, this.cameraResolution.y);
        camera.setParameters(parameters);
        Camera.Size previewSize = camera.getParameters().getPreviewSize();
        if (previewSize != null && (this.cameraResolution.x != previewSize.width || this.cameraResolution.y != previewSize.height)) {
            Log.w(TAG, "Camera said it supported preview size " + this.cameraResolution.x + 'x' + this.cameraResolution.y + ", but after setting it, preview size is " + previewSize.width + 'x' + previewSize.height);
            this.cameraResolution.x = previewSize.width;
            this.cameraResolution.y = previewSize.height;
        }
        camera.setDisplayOrientation(90);
    }

    public Point getCameraResolution() {
        return this.cameraResolution;
    }

    public Point getScreenResolution() {
        return this.screenResolution;
    }

    Point findBestPreviewSizeValue(Camera.Parameters parameters, Point point) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes == null) {
            Log.w(TAG, "Device returned no supported preview sizes; using default");
            Camera.Size previewSize = parameters.getPreviewSize();
            return new Point(previewSize.width, previewSize.height);
        }
        ArrayList<Camera.Size> arrayList = new ArrayList(supportedPreviewSizes);
        Collections.sort(arrayList, new Comparator<Camera.Size>() { // from class: cn.highlight.core.zxing.camera.CameraConfigurationManager.1
            @Override // java.util.Comparator
            public int compare(Camera.Size size, Camera.Size size2) {
                int i = size.height * size.width;
                int i2 = size2.height * size2.width;
                if (i2 < i) {
                    return -1;
                }
                return i2 > i ? 1 : 0;
            }
        });
        if (Log.isLoggable(TAG, 4)) {
            StringBuilder sb = new StringBuilder();
            for (Camera.Size size : arrayList) {
                sb.append(size.width);
                sb.append('x');
                sb.append(size.height);
                sb.append(' ');
            }
            Log.i(TAG, "Supported preview sizes: " + ((Object) sb));
        }
        double d = point.x / point.y;
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                Camera.Size size2 = (Camera.Size) it.next();
                int i = size2.width;
                int i2 = size2.height;
                if (i * i2 < MIN_PREVIEW_PIXELS) {
                    it.remove();
                } else {
                    boolean z = i < i2;
                    int i3 = z ? i2 : i;
                    int i4 = z ? i : i2;
                    if (Math.abs((i3 / i4) - d) > MAX_ASPECT_DISTORTION) {
                        it.remove();
                    } else if (i3 == point.x && i4 == point.y) {
                        Point point2 = new Point(i, i2);
                        Log.i(TAG, "Found preview size exactly matching screen size: " + point2);
                        return point2;
                    }
                }
            } else {
                if (!arrayList.isEmpty()) {
                    Camera.Size size3 = (Camera.Size) arrayList.get(0);
                    Point point3 = new Point(size3.width, size3.height);
                    Log.i(TAG, "Using largest suitable preview size: " + point3);
                    return point3;
                }
                Camera.Size previewSize2 = parameters.getPreviewSize();
                Point point4 = new Point(previewSize2.width, previewSize2.height);
                Log.i(TAG, "No suitable preview sizes, using default: " + point4);
                return point4;
            }
        }
    }
}
