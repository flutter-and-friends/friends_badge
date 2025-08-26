package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import net.lucode.hackware.magicindicator.FragmentContainerHelper;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class WrapPagerIndicator extends View implements IPagerIndicator {
    private Interpolator mEndInterpolator;
    private int mFillColor;
    private int mHorizontalPadding;
    private Paint mPaint;
    private List<PositionData> mPositionDataList;
    private RectF mRect;
    private float mRoundRadius;
    private boolean mRoundRadiusSet;
    private Interpolator mStartInterpolator;
    private int mVerticalPadding;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageSelected(int i) {
    }

    public WrapPagerIndicator(Context context) {
        super(context);
        this.mStartInterpolator = new LinearInterpolator();
        this.mEndInterpolator = new LinearInterpolator();
        this.mRect = new RectF();
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mVerticalPadding = UIUtil.dip2px(context, 6.0d);
        this.mHorizontalPadding = UIUtil.dip2px(context, 10.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.mPaint.setColor(this.mFillColor);
        RectF rectF = this.mRect;
        float f = this.mRoundRadius;
        canvas.drawRoundRect(rectF, f, f, this.mPaint);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrolled(int i, float f, int i2) {
        List<PositionData> list = this.mPositionDataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        PositionData imitativePositionData = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i);
        PositionData imitativePositionData2 = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i + 1);
        this.mRect.left = (imitativePositionData.mContentLeft - this.mHorizontalPadding) + ((imitativePositionData2.mContentLeft - imitativePositionData.mContentLeft) * this.mEndInterpolator.getInterpolation(f));
        this.mRect.top = imitativePositionData.mContentTop - this.mVerticalPadding;
        this.mRect.right = imitativePositionData.mContentRight + this.mHorizontalPadding + ((imitativePositionData2.mContentRight - imitativePositionData.mContentRight) * this.mStartInterpolator.getInterpolation(f));
        this.mRect.bottom = imitativePositionData.mContentBottom + this.mVerticalPadding;
        if (!this.mRoundRadiusSet) {
            this.mRoundRadius = this.mRect.height() / 2.0f;
        }
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPositionDataProvide(List<PositionData> list) {
        this.mPositionDataList = list;
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public int getVerticalPadding() {
        return this.mVerticalPadding;
    }

    public void setVerticalPadding(int i) {
        this.mVerticalPadding = i;
    }

    public int getHorizontalPadding() {
        return this.mHorizontalPadding;
    }

    public void setHorizontalPadding(int i) {
        this.mHorizontalPadding = i;
    }

    public int getFillColor() {
        return this.mFillColor;
    }

    public void setFillColor(int i) {
        this.mFillColor = i;
    }

    public float getRoundRadius() {
        return this.mRoundRadius;
    }

    public void setRoundRadius(float f) {
        this.mRoundRadius = f;
        this.mRoundRadiusSet = true;
    }

    public Interpolator getStartInterpolator() {
        return this.mStartInterpolator;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.mStartInterpolator = interpolator;
        if (this.mStartInterpolator == null) {
            this.mStartInterpolator = new LinearInterpolator();
        }
    }

    public Interpolator getEndInterpolator() {
        return this.mEndInterpolator;
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.mEndInterpolator = interpolator;
        if (this.mEndInterpolator == null) {
            this.mEndInterpolator = new LinearInterpolator();
        }
    }
}
