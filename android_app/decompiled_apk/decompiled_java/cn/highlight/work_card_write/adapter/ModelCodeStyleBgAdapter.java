package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelCodeStyleBgAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnClickSelectViewBg onClickSelectViewBg;
    public String type = "透明";
    public String otherType = "黑色";

    public interface OnClickSelectViewBg {
        void onClickSelectBg(String str);
    }

    public ModelCodeStyleBgAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<String> list, String str) {
        this.dataList = list;
        this.otherType = str;
        notifyDataSetChanged();
    }

    public void setOnClickSelectViewBG(OnClickSelectViewBg onClickSelectViewBg) {
        this.onClickSelectViewBg = onClickSelectViewBg;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_model_code_style_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.item.setBackgroundResource(0);
        if (this.type.equals(this.dataList.get(i))) {
            viewHolder.item.setBackgroundResource(R.drawable.model_text_color_selected_co_20);
        }
        Drawable drawable = null;
        if ("透明".equals(this.dataList.get(i))) {
            RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(this.context.getResources(), BitmapFactory.decodeResource(this.context.getResources(), R.mipmap.model_text_style_bg));
            roundedBitmapDrawableCreate.setCornerRadius(30.0f);
            roundedBitmapDrawableCreate.setAntiAlias(true);
            viewHolder.item_bg.setBackground(roundedBitmapDrawableCreate);
        } else if ("黑色".equals(this.dataList.get(i))) {
            if (this.otherType.equals("黑色")) {
                drawable = this.context.getDrawable(R.drawable.shape_so_hei1_st_0_co_20);
            } else {
                drawable = this.context.getDrawable(R.drawable.shape_so_hei_st_0_co_20);
            }
        } else if ("黄色".equals(this.dataList.get(i))) {
            if (this.otherType.equals("黄色")) {
                drawable = this.context.getDrawable(R.drawable.shape_so_huang1_st_0_co_20);
            } else {
                drawable = this.context.getDrawable(R.drawable.shape_so_huang_st_0_co_20);
            }
        } else if ("红色".equals(this.dataList.get(i))) {
            if (this.otherType.equals("红色")) {
                drawable = this.context.getDrawable(R.drawable.shape_so_hong1_st_0_co_20);
            } else {
                drawable = this.context.getDrawable(R.drawable.shape_so_hong_st_0_co_20);
            }
        } else if (this.otherType.equals("白色")) {
            drawable = this.context.getDrawable(R.drawable.shape_so_bai1_st_0_co_20);
        } else {
            drawable = this.context.getDrawable(R.drawable.shape_so_bai_st_0_co_25);
        }
        if (drawable != null) {
            viewHolder.item_bg.setBackground(drawable);
        }
        viewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelCodeStyleBgAdapter$v0ndhytVCQojSst5ClpOdrTsnfw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelCodeStyleBgAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelCodeStyleBgAdapter(int i, View view) {
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
            this.item = (LinearLayout) view.findViewById(R.id.item);
            this.item_bg = (ImageView) view.findViewById(R.id.item_bg);
        }
    }
}
