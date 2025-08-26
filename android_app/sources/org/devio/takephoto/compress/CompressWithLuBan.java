package org.devio.takephoto.compress;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import me.shaohui.advancedluban.Luban;
import me.shaohui.advancedluban.OnCompressListener;
import me.shaohui.advancedluban.OnMultiCompressListener;
import org.devio.takephoto.compress.CompressImage;
import org.devio.takephoto.model.LubanOptions;
import org.devio.takephoto.model.TImage;

/* loaded from: classes2.dex */
public class CompressWithLuBan implements CompressImage {
    private Context context;
    private ArrayList<File> files = new ArrayList<>();
    private ArrayList<TImage> images;
    private CompressImage.CompressListener listener;
    private LubanOptions options;

    public CompressWithLuBan(Context context, CompressConfig compressConfig, ArrayList<TImage> arrayList, CompressImage.CompressListener compressListener) {
        this.options = compressConfig.getLubanOptions();
        this.images = arrayList;
        this.listener = compressListener;
        this.context = context;
    }

    @Override // org.devio.takephoto.compress.CompressImage
    public void compress() {
        ArrayList<TImage> arrayList = this.images;
        if (arrayList == null || arrayList.isEmpty()) {
            this.listener.onCompressFailed(this.images, " images is null");
            return;
        }
        Iterator<TImage> it = this.images.iterator();
        while (it.hasNext()) {
            TImage next = it.next();
            if (next == null) {
                this.listener.onCompressFailed(this.images, " There are pictures of compress  is null.");
                return;
            }
            this.files.add(new File(next.getOriginalPath()));
        }
        if (this.images.size() == 1) {
            compressOne();
        } else {
            compressMulti();
        }
    }

    private void compressOne() {
        Luban.compress(this.context, this.files.get(0)).putGear(4).setMaxHeight(this.options.getMaxHeight()).setMaxWidth(this.options.getMaxWidth()).setMaxSize(this.options.getMaxSize() / 1000).launch(new OnCompressListener() { // from class: org.devio.takephoto.compress.CompressWithLuBan.1
            @Override // me.shaohui.advancedluban.OnCompressListener
            public void onStart() {
            }

            @Override // me.shaohui.advancedluban.OnCompressListener
            public void onSuccess(File file) {
                TImage tImage = (TImage) CompressWithLuBan.this.images.get(0);
                tImage.setCompressPath(file.getPath());
                tImage.setCompressed(true);
                CompressWithLuBan.this.listener.onCompressSuccess(CompressWithLuBan.this.images);
            }

            @Override // me.shaohui.advancedluban.OnCompressListener
            public void onError(Throwable th) {
                CompressWithLuBan.this.listener.onCompressFailed(CompressWithLuBan.this.images, th.getMessage() + " is compress failures");
            }
        });
    }

    private void compressMulti() {
        Luban.compress(this.context, this.files).putGear(4).setMaxSize(this.options.getMaxSize() / 1000).setMaxHeight(this.options.getMaxHeight()).setMaxWidth(this.options.getMaxWidth()).launch(new OnMultiCompressListener() { // from class: org.devio.takephoto.compress.CompressWithLuBan.2
            @Override // me.shaohui.advancedluban.OnMultiCompressListener
            public void onStart() {
            }

            @Override // me.shaohui.advancedluban.OnMultiCompressListener
            public void onSuccess(List<File> list) {
                CompressWithLuBan.this.handleCompressCallBack(list);
            }

            @Override // me.shaohui.advancedluban.OnMultiCompressListener
            public void onError(Throwable th) {
                CompressWithLuBan.this.listener.onCompressFailed(CompressWithLuBan.this.images, th.getMessage() + " is compress failures");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCompressCallBack(List<File> list) {
        int size = this.images.size();
        for (int i = 0; i < size; i++) {
            TImage tImage = this.images.get(i);
            tImage.setCompressed(true);
            tImage.setCompressPath(list.get(i).getPath());
        }
        this.listener.onCompressSuccess(this.images);
    }
}
