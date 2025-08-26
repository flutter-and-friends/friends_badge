package com.codbking.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.codbking.widget.genview.GenWheelText;
import com.codbking.widget.genview.WheelGeneralAdapter;
import com.codbking.widget.view.OnWheelChangedListener;
import com.codbking.widget.view.OnWheelScrollListener;
import com.codbking.widget.view.WheelView;

/* loaded from: classes.dex */
abstract class BaseWheelPick extends LinearLayout implements OnWheelChangedListener, OnWheelScrollListener {
    protected Context ctx;
    private GenWheelText genView;
    protected int selectColor;
    protected int split;
    protected int splitHeight;
    protected int textColor;

    protected String[] convertData(WheelView wheelView, Integer[] numArr) {
        return new String[0];
    }

    protected abstract int getItemHeight();

    protected abstract int getLayout();

    @Override // com.codbking.widget.view.OnWheelChangedListener
    public void onChanged(WheelView wheelView, int i, int i2) {
    }

    protected abstract void setData(Object[] objArr);

    public BaseWheelPick(Context context) {
        super(context);
        this.textColor = -2236963;
        this.selectColor = -12303292;
        this.split = -2236963;
        this.splitHeight = 1;
        init(context);
    }

    public BaseWheelPick(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textColor = -2236963;
        this.selectColor = -12303292;
        this.split = -2236963;
        this.splitHeight = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0905R.styleable.DatePicker);
        this.textColor = typedArrayObtainStyledAttributes.getColor(C0905R.styleable.DatePicker_picker_text_color, -2236963);
        this.selectColor = typedArrayObtainStyledAttributes.getColor(C0905R.styleable.DatePicker_picker_select_textColor, -12303292);
        this.split = typedArrayObtainStyledAttributes.getColor(C0905R.styleable.DatePicker_picker_split, -2236963);
        this.splitHeight = (int) typedArrayObtainStyledAttributes.getDimension(C0905R.styleable.DatePicker_picker_split_height, 0.5f);
        typedArrayObtainStyledAttributes.recycle();
        init(context);
    }

    private void init(Context context) {
        this.genView = new GenWheelText(this.textColor);
        this.ctx = context;
        LayoutInflater.from(context).inflate(getLayout(), this);
    }

    protected void setWheelListener(WheelView wheelView, Object[] objArr, boolean z) {
        WheelGeneralAdapter wheelGeneralAdapter = new WheelGeneralAdapter(this.ctx, this.genView);
        if (objArr[0] instanceof Integer) {
            wheelGeneralAdapter.setData((Object[]) convertData(wheelView, (Integer[]) objArr));
        } else {
            wheelGeneralAdapter.setData(objArr);
        }
        wheelView.setSelectTextColor(this.textColor, this.selectColor);
        wheelView.setCyclic(z);
        wheelView.setViewAdapter(wheelGeneralAdapter);
        wheelView.addChangingListener(this);
        wheelView.addScrollingListener(this);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Paint paint = new Paint();
        paint.setStrokeWidth(this.splitHeight);
        paint.setColor(this.split);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        int itemHeight = getItemHeight();
        int i = 0;
        while (i < 5) {
            int i2 = i + 1;
            float f = i2 * itemHeight;
            canvas.drawLine(0.0f, f, getWidth(), f, paint);
            i = i2;
        }
    }
}
