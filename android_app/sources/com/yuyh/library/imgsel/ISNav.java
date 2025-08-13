package com.yuyh.library.imgsel;

import android.app.Activity;
import android.content.Context;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.yuyh.library.imgsel.common.ImageLoader;
import com.yuyh.library.imgsel.config.ISCameraConfig;
import com.yuyh.library.imgsel.config.ISListConfig;
import com.yuyh.library.imgsel.p017ui.ISCameraActivity;
import com.yuyh.library.imgsel.p017ui.ISListActivity;

/* loaded from: classes2.dex */
public class ISNav {
    private static ISNav instance;
    private ImageLoader loader;

    public static ISNav getInstance() {
        if (instance == null) {
            synchronized (ISNav.class) {
                if (instance == null) {
                    instance = new ISNav();
                }
            }
        }
        return instance;
    }

    public void init(ImageLoader imageLoader) {
        this.loader = imageLoader;
    }

    public void displayImage(Context context, String str, ImageView imageView) {
        ImageLoader imageLoader = this.loader;
        if (imageLoader != null) {
            imageLoader.displayImage(context, str, imageView);
        }
    }

    public void toListActivity(Object obj, ISListConfig iSListConfig, int i) {
        if (obj instanceof Activity) {
            ISListActivity.startForResult((Activity) obj, iSListConfig, i);
        } else if (obj instanceof Fragment) {
            ISListActivity.startForResult((Fragment) obj, iSListConfig, i);
        } else if (obj instanceof android.app.Fragment) {
            ISListActivity.startForResult((android.app.Fragment) obj, iSListConfig, i);
        }
    }

    public void toCameraActivity(Object obj, ISCameraConfig iSCameraConfig, int i) {
        if (obj instanceof Activity) {
            ISCameraActivity.startForResult((Activity) obj, iSCameraConfig, i);
        } else if (obj instanceof Fragment) {
            ISCameraActivity.startForResult((Fragment) obj, iSCameraConfig, i);
        } else if (obj instanceof android.app.Fragment) {
            ISCameraActivity.startForResult((android.app.Fragment) obj, iSCameraConfig, i);
        }
    }
}
