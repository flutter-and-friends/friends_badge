package cn.highlight.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class XCFlowLayout extends ViewGroup {
    private List<List<View>> mAllChildViews;
    private List<Integer> mLineHeight;
    private OnItemClickListener onItemClickListener;

    public interface OnItemClickListener {
        void onItemClick(String str, int i);
    }

    public XCFlowLayout(Context context) {
        this(context, null);
    }

    public XCFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public XCFlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAllChildViews = new ArrayList();
        this.mLineHeight = new ArrayList();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i5 = 0;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            measureChild(childAt, i, i2);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int i6 = size2;
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            int i7 = i4 + measuredWidth;
            if (i7 > size) {
                iMax = Math.max(iMax, i4);
                i5 += iMax2;
                iMax2 = measuredHeight;
                i4 = measuredWidth;
            } else {
                iMax2 = Math.max(iMax2, measuredHeight);
                i4 = i7;
            }
            if (i3 == childCount - 1) {
                i5 += iMax2;
                iMax = Math.max(iMax, i4);
            }
            i3++;
            size2 = i6;
        }
        int i8 = size2;
        if (mode != 1073741824) {
            size = iMax;
        }
        if (mode2 == 1073741824) {
            i5 = i8;
        }
        setMeasuredDimension(size, i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mAllChildViews.clear();
        this.mLineHeight.clear();
        int width = getWidth();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        ArrayList arrayList2 = arrayList;
        int iMax = 0;
        int i5 = 0;
        for (final int i6 = 0; i6 < childCount; i6++) {
            final View childAt = getChildAt(i6);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (measuredWidth + i5 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > width) {
                this.mLineHeight.add(Integer.valueOf(iMax));
                this.mAllChildViews.add(arrayList2);
                iMax = marginLayoutParams.topMargin + measuredHeight + marginLayoutParams.bottomMargin;
                arrayList2 = new ArrayList();
                i5 = 0;
            }
            i5 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
            childAt.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.XCFlowLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    XCFlowLayout.this.onItemClickListener.onItemClick(((TextView) childAt).getText().toString(), i6);
                }
            });
            arrayList2.add(childAt);
        }
        this.mLineHeight.add(Integer.valueOf(iMax));
        this.mAllChildViews.add(arrayList2);
        int size = this.mAllChildViews.size();
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            List<View> list = this.mAllChildViews.get(i8);
            int iIntValue = this.mLineHeight.get(i8).intValue();
            int measuredWidth2 = 0;
            for (int i9 = 0; i9 < list.size(); i9++) {
                View view = list.get(i9);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i10 = marginLayoutParams2.leftMargin + measuredWidth2;
                    int i11 = marginLayoutParams2.topMargin + i7;
                    view.layout(i10, i11, view.getMeasuredWidth() + i10, view.getMeasuredHeight() + i11);
                    measuredWidth2 += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            i7 += iIntValue;
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }
}
