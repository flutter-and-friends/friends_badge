package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
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
        return new ViewHolder(LayoutInflater.from(this.context).inflate(C0498R.layout.adapter_write_item, viewGroup, false));
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
            this.linear = (LinearLayout) view.findViewById(C0498R.id.linear);
            this.radioButton = (RadioButton) view.findViewById(C0498R.id.radioButton);
            this.color_black = (TextView) view.findViewById(C0498R.id.color_black);
            this.color_white = (TextView) view.findViewById(C0498R.id.color_white);
            this.color_red = (TextView) view.findViewById(C0498R.id.color_red);
            this.color_yellow = (TextView) view.findViewById(C0498R.id.color_yellow);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int getIdByName(java.lang.String r7) {
        /*
            r6 = this;
            int r0 = r7.hashCode()
            r1 = 1290700(0x13b1cc, float:1.808656E-39)
            r2 = 0
            r3 = -1
            r4 = 2
            r5 = 1
            if (r0 == r1) goto L2c
            r1 = 40044118(0x2630656, float:1.6679144E-37)
            if (r0 == r1) goto L22
            r1 = 1241408302(0x49fe632e, float:2083941.8)
            if (r0 == r1) goto L18
            goto L36
        L18:
            java.lang.String r0 = "黑白红黄"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L36
            r7 = 2
            goto L37
        L22:
            java.lang.String r0 = "黑白红"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L36
            r7 = 1
            goto L37
        L2c:
            java.lang.String r0 = "黑白"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L36
            r7 = 0
            goto L37
        L36:
            r7 = -1
        L37:
            if (r7 == 0) goto L42
            if (r7 == r5) goto L41
            if (r7 == r4) goto L3f
            r2 = -1
            goto L42
        L3f:
            r2 = 2
            goto L42
        L41:
            r2 = 1
        L42:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.adapter.WriteAdapter.getIdByName(java.lang.String):int");
    }
}
