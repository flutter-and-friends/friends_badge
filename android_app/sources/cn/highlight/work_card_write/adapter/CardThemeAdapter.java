package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import java.util.List;

/* loaded from: classes.dex */
public class CardThemeAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<BadgeBean> dataList;
    private ItemClickListener listener;
    private ItemLongClickListener longListener;

    public interface ItemClickListener {
        void clickListener(int i);
    }

    public interface ItemLongClickListener {
        void longClickListener(int i);
    }

    public CardThemeAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<BadgeBean> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setListener(ItemClickListener itemClickListener) {
        this.listener = itemClickListener;
    }

    public void setLongListener(ItemLongClickListener itemLongClickListener) {
        this.longListener = itemLongClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(C0498R.layout.adapter_card_item1, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.ivImg.setImageBitmap(BitmapFactory.decodeByteArray(this.dataList.get(i).getBitmapEnd(), 0, this.dataList.get(i).getBitmapEnd().length, new BitmapFactory.Options()));
        viewHolder.ivImg.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$CardThemeAdapter(i, view);
            }
        });
        viewHolder.ivImg.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$CardThemeAdapter$IEtRvg_KJzr8Ev-cBMqaC34nZVg
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$onBindViewHolder$1$CardThemeAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$CardThemeAdapter(int i, View view) {
        ItemClickListener itemClickListener = this.listener;
        if (itemClickListener != null) {
            itemClickListener.clickListener(i);
        }
    }

    public /* synthetic */ boolean lambda$onBindViewHolder$1$CardThemeAdapter(int i, View view) {
        ItemLongClickListener itemLongClickListener = this.longListener;
        if (itemLongClickListener == null) {
            return true;
        }
        itemLongClickListener.longClickListener(i);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<BadgeBean> list = this.dataList;
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
