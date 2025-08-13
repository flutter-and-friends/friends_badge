package com.codbking.widget.genview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.codbking.widget.C0905R;

/* loaded from: classes.dex */
public class GenWheelText extends GenWheelView {
    private int line;
    private int textColor;
    private int textSize;

    public GenWheelText() {
        this(1, 24, 4473924);
    }

    public GenWheelText(int i) {
        this(1, 24, i);
    }

    public GenWheelText(int i, int i2, int i3) {
        this.line = 1;
        this.textSize = 24;
        this.line = i;
        this.textSize = i2;
        this.textColor = i3;
    }

    @Override // com.codbking.widget.genview.GenWheelView
    protected View genBody(Context context, View view, Object obj, int i) {
        ViewHolder viewHolder;
        if (view != null) {
            viewHolder = (ViewHolder) view.getTag();
        } else {
            view = LayoutInflater.from(context).inflate(C0905R.layout.cbk_wheel_default_inner_text, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.text = (TextView) view.findViewById(C0905R.id.text);
            view.setTag(viewHolder);
        }
        viewHolder.text.setTextSize(this.textSize);
        viewHolder.text.setMaxLines(this.line);
        viewHolder.text.setText(obj.toString());
        viewHolder.text.setTextColor(this.textColor);
        return view;
    }

    private class ViewHolder {
        public TextView text;

        private ViewHolder() {
        }
    }
}
