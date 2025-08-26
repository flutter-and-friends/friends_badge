package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import java.util.List;

/* loaded from: classes.dex */
public class CardModelAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<Bitmap> dataList;
    private ItemClickListener listener;

    public interface ItemClickListener {
        void OnItemClickListener(View view, int i);
    }

    public CardModelAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<Bitmap> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setListener(ItemClickListener itemClickListener) {
        this.listener = itemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(C0498R.layout.adapter_card_item1, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.ivImg.setImageBitmap(this.dataList.get(i));
        viewHolder.ivImg.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$CardModelAdapter$gQDIsa_hkaHpvcd1EqInBwIJwBM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$CardModelAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$CardModelAdapter(int i, View view) {
        ItemClickListener itemClickListener = this.listener;
        if (itemClickListener != null) {
            itemClickListener.OnItemClickListener(view, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Bitmap> list = this.dataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        ImageView ivImg;

        ViewHolder(View view) {
            super(view);
            this.ivImg = (ImageView) view.findViewById(C0498R.id.ivImg);
        }
    }
}
