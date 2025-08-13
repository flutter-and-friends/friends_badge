package com.darsh.multipleimageselect.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;
import com.darsh.multipleimageselect.C0915R;
import com.darsh.multipleimageselect.models.Album;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CustomAlbumSelectAdapter extends CustomGenericAdapter<Album> {
    public CustomAlbumSelectAdapter(Context context, ArrayList<Album> arrayList) {
        super(context, arrayList);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.layoutInflater.inflate(C0915R.layout.grid_view_item_album_select, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.imageView = (ImageView) view.findViewById(C0915R.id.image_view_album_image);
            viewHolder.textView = (TextView) view.findViewById(C0915R.id.text_view_album_name);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.imageView.getLayoutParams().width = this.size;
        viewHolder.imageView.getLayoutParams().height = this.size;
        viewHolder.textView.setText(((Album) this.arrayList.get(i)).name);
        Glide.with(this.context).load(((Album) this.arrayList.get(i)).cover).apply(new RequestOptions().centerCrop().placeholder(C0915R.drawable.image_placeholder)).into(viewHolder.imageView);
        return view;
    }

    private static class ViewHolder {
        public ImageView imageView;
        public TextView textView;

        private ViewHolder() {
        }
    }
}
