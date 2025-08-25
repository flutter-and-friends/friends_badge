package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import cn.forward.androids.R;
import cn.forward.androids.utils.ColorUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class StringScrollPicker extends ScrollPickerView<CharSequence> {
    private Layout.Alignment mAlignment;
    private int mEndColor;
    private int mMaxLineWidth;
    private int mMaxTextSize;
    private int mMeasureHeight;
    private int mMeasureWidth;
    private int mMinTextSize;
    private TextPaint mPaint;
    private int mStartColor;

    public StringScrollPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StringScrollPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMinTextSize = 24;
        this.mMaxTextSize = 32;
        this.mStartColor = ViewCompat.MEASURED_STATE_MASK;
        this.mEndColor = -7829368;
        this.mMaxLineWidth = -1;
        this.mAlignment = Layout.Alignment.ALIGN_CENTER;
        this.mPaint = new TextPaint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        init(attributeSet);
        setData(new ArrayList(Arrays.asList("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve")));
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.StringScrollPicker);
            this.mMinTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.StringScrollPicker_spv_min_text_size, this.mMinTextSize);
            this.mMaxTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.StringScrollPicker_spv_max_text_size, this.mMaxTextSize);
            this.mStartColor = typedArrayObtainStyledAttributes.getColor(R.styleable.StringScrollPicker_spv_start_color, this.mStartColor);
            this.mEndColor = typedArrayObtainStyledAttributes.getColor(R.styleable.StringScrollPicker_spv_end_color, this.mEndColor);
            this.mMaxLineWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.StringScrollPicker_spv_max_line_width, this.mMaxLineWidth);
            int i = typedArrayObtainStyledAttributes.getInt(R.styleable.StringScrollPicker_spv_alignment, 1);
            if (i == 2) {
                this.mAlignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i == 3) {
                this.mAlignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else {
                this.mAlignment = Layout.Alignment.ALIGN_CENTER;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setColor(int i, int i2) {
        this.mStartColor = i;
        this.mEndColor = i2;
        invalidate();
    }

    public void setTextSize(int i, int i2) {
        this.mMinTextSize = i;
        this.mMaxTextSize = i2;
        invalidate();
    }

    public int getStartColor() {
        return this.mStartColor;
    }

    public int getEndColor() {
        return this.mEndColor;
    }

    public int getMinTextSize() {
        return this.mMinTextSize;
    }

    public int getMaxTextSize() {
        return this.mMaxTextSize;
    }

    public int getMaxLineWidth() {
        return this.mMaxLineWidth;
    }

    public void setMaxLineWidth(int i) {
        this.mMaxLineWidth = i;
    }

    public Layout.Alignment getAlignment() {
        return this.mAlignment;
    }

    public void setAlignment(Layout.Alignment alignment) {
        this.mAlignment = alignment;
    }

    @Override // cn.forward.androids.views.ScrollPickerView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mMeasureWidth = getMeasuredWidth();
        this.mMeasureHeight = getMeasuredHeight();
        if (this.mMaxLineWidth < 0) {
            this.mMaxLineWidth = getItemWidth();
        }
    }

    @Override // cn.forward.androids.views.ScrollPickerView
    public void drawItem(Canvas canvas, List<CharSequence> list, int i, int i2, float f, float f2) {
        float itemWidth;
        float itemHeight;
        CharSequence charSequence = list.get(i);
        int itemSize = getItemSize();
        if (i2 == -1) {
            if (f < 0.0f) {
                this.mPaint.setTextSize(this.mMinTextSize);
            } else {
                this.mPaint.setTextSize(this.mMinTextSize + (((this.mMaxTextSize - r7) * f) / itemSize));
            }
        } else if (i2 == 0) {
            float f3 = itemSize;
            this.mPaint.setTextSize(this.mMinTextSize + (((this.mMaxTextSize - r7) * (f3 - Math.abs(f))) / f3));
        } else if (i2 != 1 || f > 0.0f) {
            this.mPaint.setTextSize(this.mMinTextSize);
        } else {
            this.mPaint.setTextSize(this.mMinTextSize + (((this.mMaxTextSize - r7) * (-f)) / itemSize));
        }
        StaticLayout staticLayout = new StaticLayout(charSequence, 0, charSequence.length(), this.mPaint, this.mMaxLineWidth, this.mAlignment, 1.0f, 0.0f, true, null, 0);
        float width = staticLayout.getWidth();
        if (isHorizontal()) {
            itemWidth = f2 + ((getItemWidth() - width) / 2.0f);
            itemHeight = (getItemHeight() - staticLayout.getHeight()) / 2;
        } else {
            itemWidth = (getItemWidth() - width) / 2.0f;
            itemHeight = f2 + ((getItemHeight() - staticLayout.getHeight()) / 2);
        }
        computeColor(i2, itemSize, f);
        canvas.save();
        canvas.translate(itemWidth, itemHeight);
        staticLayout.draw(canvas);
        canvas.restore();
    }

    private void computeColor(int i, int i2, float f) {
        int iComputeGradientColor = this.mEndColor;
        if (i == -1 || i == 1) {
            if ((i == -1 && f < 0.0f) || (i == 1 && f > 0.0f)) {
                iComputeGradientColor = this.mEndColor;
            } else {
                float f2 = i2;
                iComputeGradientColor = ColorUtil.computeGradientColor(this.mStartColor, this.mEndColor, (f2 - Math.abs(f)) / f2);
            }
        } else if (i == 0) {
            iComputeGradientColor = ColorUtil.computeGradientColor(this.mStartColor, this.mEndColor, Math.abs(f) / i2);
        }
        this.mPaint.setColor(iComputeGradientColor);
    }
}
