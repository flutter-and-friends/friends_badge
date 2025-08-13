package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelTextStyleColorAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnClickSelectViewBg onClickSelectViewBg;
    public String type = "黑色";

    public interface OnClickSelectViewBg {
        void onClickSelectBg(String str);
    }

    public ModelTextStyleColorAdapter(Context context) {
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
        return new ViewHolder(LayoutInflater.from(this.context).inflate(C0498R.layout.adapter_model_text_style_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        Drawable drawable;
        viewHolder.item.setBackgroundResource(0);
        if (this.type.equals(this.dataList.get(i))) {
            viewHolder.item.setBackgroundResource(C0498R.drawable.model_text_color_selected_co_20);
        }
        if ("黑色".equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_hei_st_0_co_20);
        } else if ("黄色".equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_huang_st_0_co_20);
        } else if ("红色".equals(this.dataList.get(i))) {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_hong_st_0_co_20);
        } else {
            drawable = this.context.getDrawable(C0498R.drawable.shape_so_bai_st_0_co_25);
        }
        if (drawable != null) {
            viewHolder.item_bg.setBackground(drawable);
        }
        viewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelTextStyleColorAdapter$Mt8636EV9IDcCYCQUvh_08b78Hk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelTextStyleColorAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelTextStyleColorAdapter(int i, View view) {
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
        ImageView item_bg;

        ViewHolder(View view) {
            super(view);
            this.item = (LinearLayout) view.findViewById(C0498R.id.item);
            this.item_bg = (ImageView) view.findViewById(C0498R.id.item_bg);
        }
    }
}
