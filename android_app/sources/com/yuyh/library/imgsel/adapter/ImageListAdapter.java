package com.yuyh.library.imgsel.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.yuyh.easyadapter.recyclerview.EasyRVAdapter;
import com.yuyh.easyadapter.recyclerview.EasyRVHolder;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.ISNav;
import com.yuyh.library.imgsel.bean.Image;
import com.yuyh.library.imgsel.common.Constant;
import com.yuyh.library.imgsel.common.OnItemClickListener;
import com.yuyh.library.imgsel.config.ISListConfig;
import java.util.List;

/* loaded from: classes2.dex */
public class ImageListAdapter extends EasyRVAdapter<Image> {
    private ISListConfig config;
    private Context context;
    private OnItemClickListener listener;
    private boolean mutiSelect;
    private boolean showCamera;

    public ImageListAdapter(Context context, List<Image> list, ISListConfig iSListConfig) {
        super(context, list, C1457R.layout.item_img_sel, C1457R.layout.item_img_sel_take_photo);
        this.context = context;
        this.config = iSListConfig;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yuyh.easyadapter.recyclerview.EasyRVAdapter
    public void onBindData(final EasyRVHolder easyRVHolder, final int i, final Image image) {
        if (i == 0 && this.showCamera) {
            ImageView imageView = (ImageView) easyRVHolder.getView(C1457R.id.ivTakePhoto);
            imageView.setImageResource(C1457R.drawable.ic_take_photo);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.ImageListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ImageListAdapter.this.listener != null) {
                        ImageListAdapter.this.listener.onImageClick(i, image);
                    }
                }
            });
            return;
        }
        if (this.mutiSelect) {
            easyRVHolder.getView(C1457R.id.ivPhotoCheaked).setOnClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.ImageListAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ImageListAdapter.this.listener == null || ImageListAdapter.this.listener.onCheckedClick(i, image) != 1) {
                        return;
                    }
                    if (Constant.imageList.contains(image.path)) {
                        easyRVHolder.setImageResource(C1457R.id.ivPhotoCheaked, C1457R.drawable.ic_checked);
                    } else {
                        easyRVHolder.setImageResource(C1457R.id.ivPhotoCheaked, C1457R.drawable.ic_uncheck);
                    }
                }
            });
        }
        easyRVHolder.setOnItemViewClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.ImageListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ImageListAdapter.this.listener != null) {
                    ImageListAdapter.this.listener.onImageClick(i, image);
                }
            }
        });
        ISNav.getInstance().displayImage(this.context, image.path, (ImageView) easyRVHolder.getView(C1457R.id.ivImage));
        if (this.mutiSelect) {
            easyRVHolder.setVisible(C1457R.id.ivPhotoCheaked, true);
            if (Constant.imageList.contains(image.path)) {
                easyRVHolder.setImageResource(C1457R.id.ivPhotoCheaked, C1457R.drawable.ic_checked);
                return;
            } else {
                easyRVHolder.setImageResource(C1457R.id.ivPhotoCheaked, C1457R.drawable.ic_uncheck);
                return;
            }
        }
        easyRVHolder.setVisible(C1457R.id.ivPhotoCheaked, false);
    }

    public void setShowCamera(boolean z) {
        this.showCamera = z;
    }

    public void setMutiSelect(boolean z) {
        this.mutiSelect = z;
    }

    @Override // com.yuyh.easyadapter.recyclerview.EasyRVAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (i == 0 && this.showCamera) ? 1 : 0;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }
}
