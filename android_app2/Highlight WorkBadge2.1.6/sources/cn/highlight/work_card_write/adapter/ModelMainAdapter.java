package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class ModelMainAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnItemClickListener onItemClickListener;

    public interface OnItemClickListener {
        void onClick(int i);
    }

    public ModelMainAdapter(Context context) {
        this.context = context;
    }

    public void setDataList(List<String> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_model_main_set_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) throws Resources.NotFoundException {
        Drawable drawable;
        if (i == 0) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_bg);
        } else if (i == 1) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_text);
        } else if (i == 2) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_image);
        } else if (i == 3) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_qrcode);
        } else if (i == 4) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_barcode);
        } else if (i == 5) {
            drawable = this.context.getResources().getDrawable(R.mipmap.model_shape);
        } else {
            throw new IllegalStateException("Unexpected value: " + i);
        }
        viewHolder.item_img.setBackground(drawable);
        viewHolder.item_name.setText(this.dataList.get(i));
        viewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$ModelMainAdapter$371h2A1AmEYseE9fRzsR3NU8k8I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$ModelMainAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$ModelMainAdapter(int i, View view) {
        OnItemClickListener onItemClickListener = this.onItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onClick(i);
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
        ImageView item_img;
        TextView item_name;

        ViewHolder(View view) {
            super(view);
            this.item = (LinearLayout) view.findViewById(R.id.item);
            this.item_img = (ImageView) view.findViewById(R.id.item_img);
            this.item_name = (TextView) view.findViewById(R.id.item_name);
        }
    }
}
