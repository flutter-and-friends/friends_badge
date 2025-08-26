package com.yuyh.library.imgsel.adapter;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.ISNav;
import com.yuyh.library.imgsel.bean.Image;
import com.yuyh.library.imgsel.common.Constant;
import com.yuyh.library.imgsel.common.OnItemClickListener;
import com.yuyh.library.imgsel.config.ISListConfig;
import java.util.List;

/* loaded from: classes2.dex */
public class PreviewAdapter extends PagerAdapter {
    private Activity activity;
    private ISListConfig config;
    private List<Image> images;
    private OnItemClickListener listener;

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public PreviewAdapter(Activity activity, List<Image> list, ISListConfig iSListConfig) {
        this.activity = activity;
        this.images = list;
        this.config = iSListConfig;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.config.needCamera) {
            return this.images.size() - 1;
        }
        return this.images.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public View instantiateItem(ViewGroup viewGroup, final int i) {
        View viewInflate = View.inflate(this.activity, C1457R.layout.item_pager_img_sel, null);
        ImageView imageView = (ImageView) viewInflate.findViewById(C1457R.id.ivImage);
        final ImageView imageView2 = (ImageView) viewInflate.findViewById(C1457R.id.ivPhotoCheaked);
        if (this.config.multiSelect) {
            imageView2.setVisibility(0);
            final Image image = this.images.get(this.config.needCamera ? i + 1 : i);
            if (Constant.imageList.contains(image.path)) {
                imageView2.setImageResource(C1457R.drawable.ic_checked);
            } else {
                imageView2.setImageResource(C1457R.drawable.ic_uncheck);
            }
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.PreviewAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PreviewAdapter.this.listener == null || PreviewAdapter.this.listener.onCheckedClick(i, image) != 1) {
                        return;
                    }
                    if (Constant.imageList.contains(image.path)) {
                        imageView2.setImageResource(C1457R.drawable.ic_checked);
                    } else {
                        imageView2.setImageResource(C1457R.drawable.ic_uncheck);
                    }
                }
            });
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.PreviewAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PreviewAdapter.this.listener != null) {
                        PreviewAdapter.this.listener.onImageClick(i, (Image) PreviewAdapter.this.images.get(i));
                    }
                }
            });
        } else {
            imageView2.setVisibility(8);
        }
        viewGroup.addView(viewInflate, -1, -1);
        List<Image> list = this.images;
        if (this.config.needCamera) {
            i++;
        }
        displayImage(imageView, list.get(i).path);
        return viewInflate;
    }

    private void displayImage(ImageView imageView, String str) {
        ISNav.getInstance().displayImage(this.activity, str, imageView);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public void setListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }
}
