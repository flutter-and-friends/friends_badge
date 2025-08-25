package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.lib_doodle.ViewEditUtil;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelTextFontAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnClickSelectViewTextFont onClickSelectViewTextFont;
    public String type = "";

    public interface OnClickSelectViewTextFont {
        void onClickSelectFont(String str);
    }

    public ModelTextFontAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<String> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setOnClickSelectViewTextFont(OnClickSelectViewTextFont onClickSelectViewTextFont) {
        this.onClickSelectViewTextFont = onClickSelectViewTextFont;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_model_text_font_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.item_font.setBackgroundResource(R.drawable.shape_so_bai2_st_0_co_5);
        if (this.type.equals(this.dataList.get(i))) {
            viewHolder.item_font.setBackgroundResource(R.drawable.model_text_font_selected);
        }
        viewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelTextFontAdapter$IYvQ8zCNdOL8JDqvGr713usd8Zo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelTextFontAdapter(i, view);
            }
        });
        viewHolder.item_font.setTypeface(ViewEditUtil.getViewTextFont(this.context, this.dataList.get(i)));
        viewHolder.item_font_tv.setText(this.dataList.get(i));
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelTextFontAdapter(int i, View view) {
        OnClickSelectViewTextFont onClickSelectViewTextFont = this.onClickSelectViewTextFont;
        if (onClickSelectViewTextFont != null) {
            onClickSelectViewTextFont.onClickSelectFont(this.dataList.get(i));
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
        TextView item_font;
        TextView item_font_tv;

        ViewHolder(View view) {
            super(view);
            this.item = (LinearLayout) view.findViewById(R.id.item);
            this.item_font = (TextView) view.findViewById(R.id.item_font);
            this.item_font_tv = (TextView) view.findViewById(R.id.item_font_tv);
        }
    }
}
