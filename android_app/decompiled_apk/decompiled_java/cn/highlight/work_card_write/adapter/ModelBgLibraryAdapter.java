package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelBgLibraryAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<Integer> dataList;
    private OnClickSelectViewBg onClickSelectViewBg;

    public interface OnClickSelectViewBg {
        void onClickSelectBg(Integer num);
    }

    public ModelBgLibraryAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<Integer> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setOnClickSelectViewBG(OnClickSelectViewBg onClickSelectViewBg) {
        this.onClickSelectViewBg = onClickSelectViewBg;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_model_bg_library_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.ivImg.setBackgroundResource(this.dataList.get(i).intValue());
        viewHolder.ivImg.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelBgLibraryAdapter$l2qmsJ_f27guVb3bVsHsbUJswe4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelBgLibraryAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelBgLibraryAdapter(int i, View view) {
        OnClickSelectViewBg onClickSelectViewBg = this.onClickSelectViewBg;
        if (onClickSelectViewBg != null) {
            onClickSelectViewBg.onClickSelectBg(this.dataList.get(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Integer> list = this.dataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        ImageView ivImg;

        ViewHolder(View view) {
            super(view);
            this.ivImg = (ImageView) view.findViewById(R.id.ivImg);
        }
    }
}
