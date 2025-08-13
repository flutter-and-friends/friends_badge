package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelBgAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnClickSelectViewBg onClickSelectViewBg;
    public String type = "";

    public interface OnClickSelectViewBg {
        void onClickSelectBg(String str);
    }

    public ModelBgAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<String> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setOnClickSelectViewBG(OnClickSelectViewBg onClickSelectViewBg) {
        this.onClickSelectViewBg = onClickSelectViewBg;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(C0498R.layout.adapter_model_bg_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        Drawable drawable;
        viewHolder.item.setBackgroundResource(C0498R.drawable.shape_so_bai2_st_0_co_5);
        if (this.type.equals(this.dataList.get(i))) {
            viewHolder.item.setBackgroundResource(C0498R.drawable.model_bg_selected_co_5);
        }
        if (this.context.getResources().getString(C0498R.string.model_bg_black).equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_hei_st_0_co_5);
        } else if (this.context.getResources().getString(C0498R.string.model_bg_yellow).equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_huang_st_0_co_5);
        } else if (this.context.getResources().getString(C0498R.string.model_bg_red).equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_hong_st_0_co_5);
        } else {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_bai_st_0_co_5);
        }
        if (drawable != null) {
            viewHolder.item_bg.setBackground(drawable);
        }
        viewHolder.item_text.setText(this.dataList.get(i));
        viewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelBgAdapter$r1KB7qgrE1iXU0SQXfIY79uc_Js
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelBgAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelBgAdapter(int i, View view) {
        OnClickSelectViewBg onClickSelectViewBg = this.onClickSelectViewBg;
        if (onClickSelectViewBg != null) {
            onClickSelectViewBg.onClickSelectBg(this.dataList.get(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<String> list = this.dataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        LinearLayout item;
        TextView item_bg;
        TextView item_text;

        ViewHolder(View view) {
            super(view);
            this.item = (LinearLayout) view.findViewById(C0498R.id.item);
            this.item_bg = (TextView) view.findViewById(C0498R.id.item_bg);
            this.item_text = (TextView) view.findViewById(C0498R.id.item_text);
        }
    }
}
