package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.entity.Menu;
import java.util.List;

/* loaded from: classes.dex */
public class MenuAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private Context context;
    private List<Menu> mData;
    private OnItemClickListener mListener;

    public interface OnItemClickListener {
        void onItemClick(int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i;
    }

    public MenuAdapter(Context context, List<Menu> list) {
        this.context = context;
        this.mData = list;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new Holder(LayoutInflater.from(viewGroup.getContext()).inflate(C0498R.layout.item_menu, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof Holder) {
            Menu menu = this.mData.get(i);
            Holder holder = (Holder) viewHolder;
            holder.tv_content.setText(menu.getContent());
            if (menu.isSelected()) {
                holder.tv_content.setBackgroundColor(this.context.getResources().getColor(C0498R.color.device));
                holder.tv_content.setTextColor(this.context.getResources().getColor(C0498R.color.white));
            } else {
                holder.tv_content.setBackgroundColor(this.context.getResources().getColor(C0498R.color.white));
                holder.tv_content.setTextColor(-9539986);
            }
            if (this.mListener == null) {
                return;
            }
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$MenuAdapter$zxE9DdGBXQFauhKPPz8tzXv-_Hw
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onBindViewHolder$0$MenuAdapter(i, view);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$MenuAdapter(int i, View view) {
        this.mListener.onItemClick(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    class Holder extends RecyclerView.ViewHolder {
        TextView tv_content;
        View v_lin;

        Holder(View view) {
            super(view);
            this.tv_content = (TextView) view.findViewById(C0498R.id.tv_content);
            this.v_lin = view.findViewById(C0498R.id.v_lin);
        }
    }

    public void sign(int i) {
        for (int i2 = 0; i2 < this.mData.size(); i2++) {
            Menu menu = this.mData.get(i2);
            menu.setSelected(false);
            if (i == this.mData.get(i2).getId()) {
                menu.setSelected(true);
            }
        }
    }
}
