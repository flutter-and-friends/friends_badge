package com.darsh.multipleimageselect.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;
import com.darsh.multipleimageselect.C0915R;
import com.darsh.multipleimageselect.models.Image;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CustomImageSelectAdapter extends CustomGenericAdapter<Image> {
    public CustomImageSelectAdapter(Context context, ArrayList<Image> arrayList) {
        super(context, arrayList);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.layoutInflater.inflate(C0915R.layout.grid_view_item_image_select, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.imageView = (ImageView) view.findViewById(C0915R.id.image_view_image_select);
            viewHolder.view = view.findViewById(C0915R.id.view_alpha);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.imageView.getLayoutParams().width = this.size;
        viewHolder.imageView.getLayoutParams().height = this.size;
        viewHolder.view.getLayoutParams().width = this.size;
        viewHolder.view.getLayoutParams().height = this.size;
        if (((Image) this.arrayList.get(i)).isSelected) {
            viewHolder.view.setAlpha(0.5f);
            ((FrameLayout) view).setForeground(this.context.getResources().getDrawable(C0915R.drawable.ic_done_white));
        } else {
            viewHolder.view.setAlpha(0.0f);
            ((FrameLayout) view).setForeground(null);
        }
        Glide.with(this.context).load(((Image) this.arrayList.get(i)).path).apply(new RequestOptions().placeholder(C0915R.drawable.image_placeholder)).into(viewHolder.imageView);
        return view;
    }

    private static class ViewHolder {
        public ImageView imageView;
        public View view;

        private ViewHolder() {
        }
    }
}
