package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class WriteAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<String> dataList;
    private OnItemClickListener onItemClickListener;
    public String selectColor = "";

    public interface OnItemClickListener {
        void onClick(int i);
    }

    public WriteAdapter(Context context) {
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
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.adapter_write_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.radioButton.setText(Constants.editSize);
        if (this.dataList.get(i).equals("黑白")) {
            viewHolder.color_black.setVisibility(0);
            viewHolder.color_white.setVisibility(0);
            viewHolder.color_red.setVisibility(4);
            viewHolder.color_yellow.setVisibility(4);
        } else if (this.dataList.get(i).equals("黑白红")) {
            viewHolder.color_black.setVisibility(0);
            viewHolder.color_white.setVisibility(0);
            viewHolder.color_red.setVisibility(0);
            viewHolder.color_yellow.setVisibility(4);
        } else {
            viewHolder.color_black.setVisibility(0);
            viewHolder.color_white.setVisibility(0);
            viewHolder.color_red.setVisibility(0);
            viewHolder.color_yellow.setVisibility(0);
        }
        viewHolder.radioButton.setChecked(false);
        if (i == getIdByName(this.selectColor)) {
            viewHolder.radioButton.setChecked(true);
        }
        viewHolder.radioButton.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$0$WriteAdapter(i, view);
            }
        });
        viewHolder.linear.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.adapter.-$$Lambda$WriteAdapter$0LWlwinhDrvx6f0yCg9Z32s-Wa4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onBindViewHolder$1$WriteAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$WriteAdapter(int i, View view) {
        OnItemClickListener onItemClickListener = this.onItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onClick(i);
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$1$WriteAdapter(int i, View view) {
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
        TextView color_black;
        TextView color_red;
        TextView color_white;
        TextView color_yellow;
        LinearLayout linear;
        RadioButton radioButton;

        ViewHolder(View view) {
            super(view);
            this.linear = (LinearLayout) view.findViewById(R.id.linear);
            this.radioButton = (RadioButton) view.findViewById(R.id.radioButton);
            this.color_black = (TextView) view.findViewById(R.id.color_black);
            this.color_white = (TextView) view.findViewById(R.id.color_white);
            this.color_red = (TextView) view.findViewById(R.id.color_red);
            this.color_yellow = (TextView) view.findViewById(R.id.color_yellow);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getIdByName(String str) {
        char c;
        int iHashCode = str.hashCode();
        if (iHashCode != 1290700) {
            if (iHashCode != 40044118) {
                c = (iHashCode == 1241408302 && str.equals("黑白红黄")) ? (char) 2 : (char) 65535;
            } else if (str.equals("黑白红")) {
                c = 1;
            }
        } else if (str.equals("黑白")) {
            c = 0;
        }
        if (c == 0) {
            return 0;
        }
        if (c != 1) {
            return c != 2 ? -1 : 2;
        }
        return 1;
    }
}
