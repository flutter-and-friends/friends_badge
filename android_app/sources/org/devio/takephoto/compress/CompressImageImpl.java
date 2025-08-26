package org.devio.takephoto.compress;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import org.devio.takephoto.compress.CompressImage;
import org.devio.takephoto.compress.CompressImageUtil;
import org.devio.takephoto.model.TImage;

/* loaded from: classes2.dex */
public class CompressImageImpl implements CompressImage {
    private CompressImageUtil compressImageUtil;
    private ArrayList<TImage> images;
    private CompressImage.CompressListener listener;

    /* renamed from: of */
    public static CompressImage m876of(Context context, CompressConfig compressConfig, ArrayList<TImage> arrayList, CompressImage.CompressListener compressListener) {
        if (compressConfig.getLubanOptions() != null) {
            return new CompressWithLuBan(context, compressConfig, arrayList, compressListener);
        }
        return new CompressImageImpl(context, compressConfig, arrayList, compressListener);
    }

    private CompressImageImpl(Context context, CompressConfig compressConfig, ArrayList<TImage> arrayList, CompressImage.CompressListener compressListener) {
        this.compressImageUtil = new CompressImageUtil(context, compressConfig);
        this.images = arrayList;
        this.listener = compressListener;
    }

    @Override // org.devio.takephoto.compress.CompressImage
    public void compress() {
        ArrayList<TImage> arrayList = this.images;
        if (arrayList == null || arrayList.isEmpty()) {
            this.listener.onCompressFailed(this.images, " images is null");
        }
        Iterator<TImage> it = this.images.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                this.listener.onCompressFailed(this.images, " There are pictures of compress  is null.");
                return;
            }
        }
        compress(this.images.get(0));
    }

    private void compress(final TImage tImage) {
        if (TextUtils.isEmpty(tImage.getOriginalPath())) {
            continueCompress(tImage, false, new String[0]);
            return;
        }
        File file = new File(tImage.getOriginalPath());
        if (!file.exists() || !file.isFile()) {
            continueCompress(tImage, false, new String[0]);
        } else {
            this.compressImageUtil.compress(tImage.getOriginalPath(), new CompressImageUtil.CompressListener() { // from class: org.devio.takephoto.compress.CompressImageImpl.1
                @Override // org.devio.takephoto.compress.CompressImageUtil.CompressListener
                public void onCompressSuccess(String str) {
                    tImage.setCompressPath(str);
                    CompressImageImpl.this.continueCompress(tImage, true, new String[0]);
                }

                @Override // org.devio.takephoto.compress.CompressImageUtil.CompressListener
                public void onCompressFailed(String str, String str2) {
                    CompressImageImpl.this.continueCompress(tImage, false, str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueCompress(TImage tImage, boolean z, String... strArr) {
        tImage.setCompressed(z);
        int iIndexOf = this.images.indexOf(tImage);
        if (iIndexOf == this.images.size() - 1) {
            handleCompressCallBack(strArr);
        } else {
            compress(this.images.get(iIndexOf + 1));
        }
    }

    private void handleCompressCallBack(String... strArr) {
        if (strArr.length > 0) {
            this.listener.onCompressFailed(this.images, strArr[0]);
            return;
        }
        Iterator<TImage> it = this.images.iterator();
        while (it.hasNext()) {
            TImage next = it.next();
            if (!next.isCompressed()) {
                this.listener.onCompressFailed(this.images, next.getCompressPath() + " is compress failures");
                return;
            }
        }
        this.listener.onCompressSuccess(this.images);
    }
}
