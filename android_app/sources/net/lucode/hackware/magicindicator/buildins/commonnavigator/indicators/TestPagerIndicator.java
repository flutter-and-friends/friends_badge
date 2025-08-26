package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import java.util.List;
import net.lucode.hackware.magicindicator.FragmentContainerHelper;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class TestPagerIndicator extends View implements IPagerIndicator {
    private RectF mInnerRect;
    private int mInnerRectColor;
    private RectF mOutRect;
    private int mOutRectColor;
    private Paint mPaint;
    private List<PositionData> mPositionDataList;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageSelected(int i) {
    }

    public TestPagerIndicator(Context context) {
        super(context);
        this.mOutRect = new RectF();
        this.mInnerRect = new RectF();
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mOutRectColor = SupportMenu.CATEGORY_MASK;
        this.mInnerRectColor = -16711936;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.mPaint.setColor(this.mOutRectColor);
        canvas.drawRect(this.mOutRect, this.mPaint);
        this.mPaint.setColor(this.mInnerRectColor);
        canvas.drawRect(this.mInnerRect, this.mPaint);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrolled(int i, float f, int i2) {
        List<PositionData> list = this.mPositionDataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        PositionData imitativePositionData = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i);
        PositionData imitativePositionData2 = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i + 1);
        this.mOutRect.left = imitativePositionData.mLeft + ((imitativePositionData2.mLeft - imitativePositionData.mLeft) * f);
        this.mOutRect.top = imitativePositionData.mTop + ((imitativePositionData2.mTop - imitativePositionData.mTop) * f);
        this.mOutRect.right = imitativePositionData.mRight + ((imitativePositionData2.mRight - imitativePositionData.mRight) * f);
        this.mOutRect.bottom = imitativePositionData.mBottom + ((imitativePositionData2.mBottom - imitativePositionData.mBottom) * f);
        this.mInnerRect.left = imitativePositionData.mContentLeft + ((imitativePositionData2.mContentLeft - imitativePositionData.mContentLeft) * f);
        this.mInnerRect.top = imitativePositionData.mContentTop + ((imitativePositionData2.mContentTop - imitativePositionData.mContentTop) * f);
        this.mInnerRect.right = imitativePositionData.mContentRight + ((imitativePositionData2.mContentRight - imitativePositionData.mContentRight) * f);
        this.mInnerRect.bottom = imitativePositionData.mContentBottom + ((imitativePositionData2.mContentBottom - imitativePositionData.mContentBottom) * f);
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPositionDataProvide(List<PositionData> list) {
        this.mPositionDataList = list;
    }

    public int getOutRectColor() {
        return this.mOutRectColor;
    }

    public void setOutRectColor(int i) {
        this.mOutRectColor = i;
    }

    public int getInnerRectColor() {
        return this.mInnerRectColor;
    }

    public void setInnerRectColor(int i) {
        this.mInnerRectColor = i;
    }
}
