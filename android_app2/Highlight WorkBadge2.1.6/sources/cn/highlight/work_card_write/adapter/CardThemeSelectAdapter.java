package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CardThemeSelectAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<BadgeBean> dataList;
    private ItemClickListener listener;
    private List<BadgeBean> selectList;

    public interface ItemClickListener {
        void clickListener(int i);
    }

    public CardThemeSelectAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<BadgeBean> list, List<BadgeBean> list2) {
        this.dataList = list;
        this.selectList = list2;
        notifyDataSetChanged();
    }

    public void setListener(ItemClickListener itemClickListener) {
        this.listener = itemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_card_item2, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.ivImg.setImageBitmap(BitmapFactory.decodeByteArray(this.dataList.get(i).getBitmapEnd(), 0, this.dataList.get(i).getBitmapEnd().length, new BitmapFactory.Options()));
        if (isContain(this.dataList.get(i))) {
            viewHolder.imgSelected.setVisibility(0);
            viewHolder.imgUnSelect.setVisibility(8);
        } else {
            viewHolder.imgSelected.setVisibility(8);
            viewHolder.imgUnSelect.setVisibility(0);
        }
        viewHolder.cardView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$CardThemeSelectAdapter$6O5-bgJBa8ZBBTDn5p2OeLdJYGw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$CardThemeSelectAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$CardThemeSelectAdapter(int i, View view) {
        ItemClickListener itemClickListener = this.listener;
        if (itemClickListener != null) {
            itemClickListener.clickListener(i);
        }
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
        CardView cardView;
        ImageView imgSelected;
        ImageView imgUnSelect;
        ImageView ivImg;

        ViewHolder(View view) {
            super(view);
            this.cardView = (CardView) view.findViewById(R.id.cardView);
            this.ivImg = (ImageView) view.findViewById(R.id.ivImg);
            this.imgUnSelect = (ImageView) view.findViewById(R.id.imgUnSelect);
            this.imgSelected = (ImageView) view.findViewById(R.id.imgSelected);
        }
    }

    private boolean isContain(BadgeBean badgeBean) {
        Iterator<BadgeBean> it = this.selectList.iterator();
        while (it.hasNext()) {
            if (it.next().getId().equals(badgeBean.getId())) {
                return true;
            }
        }
        return false;
    }
}
