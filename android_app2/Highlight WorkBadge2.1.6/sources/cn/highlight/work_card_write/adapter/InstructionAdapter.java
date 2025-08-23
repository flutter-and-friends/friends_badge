package cn.highlight.work_card_write.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import cn.highlight.work_card_write.R;
import java.util.List;

/* loaded from: classes.dex */
public class InstructionAdapter extends BaseAdapter {
    private Context context;
    private List<Bitmap> dataList;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public InstructionAdapter(Context context) {
        this.context = context;
    }

    public void setList(List<Bitmap> list) {
        this.dataList = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Bitmap> list = this.dataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = LayoutInflater.from(this.context).inflate(R.layout.adapter_instruction_item, (ViewGroup) null);
            viewHolder.ivImg = (ImageView) viewInflate.findViewById(R.id.ivImg);
            viewInflate.setTag(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.ivImg.setImageBitmap(this.dataList.get(i));
        return viewInflate;
    }

    class ViewHolder {
        ImageView ivImg;

        ViewHolder() {
        }
    }
}
