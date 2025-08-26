package org.devio.takephoto.compress;

import java.util.ArrayList;
import org.devio.takephoto.model.TImage;

/* loaded from: classes2.dex */
public interface CompressImage {

    public interface CompressListener {
        void onCompressFailed(ArrayList<TImage> arrayList, String str);

        void onCompressSuccess(ArrayList<TImage> arrayList);
    }

    void compress();
}
