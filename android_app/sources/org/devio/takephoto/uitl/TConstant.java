package org.devio.takephoto.uitl;

import android.content.Context;

/* loaded from: classes2.dex */
public class TConstant {
    public static final int PERMISSION_REQUEST_TAKE_PHOTO = 2000;
    public static final int RC_CROP = 1001;
    public static final int RC_PICK_MULTIPLE = 1008;
    public static final int RC_PICK_PICTURE_FROM_CAPTURE = 1003;
    public static final int RC_PICK_PICTURE_FROM_CAPTURE_CROP = 1002;
    public static final int RC_PICK_PICTURE_FROM_DOCUMENTS_CROP = 1005;
    public static final int RC_PICK_PICTURE_FROM_DOCUMENTS_ORIGINAL = 1004;
    public static final int RC_PICK_PICTURE_FROM_GALLERY_CROP = 1007;
    public static final int RC_PICK_PICTURE_FROM_GALLERY_ORIGINAL = 1006;

    public static final String getFileProviderName(Context context) {
        return context.getPackageName() + ".fileprovider";
    }
}
