package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;
import java.util.List;
import net.lucode.hackware.magicindicator.FragmentContainerHelper;
import net.lucode.hackware.magicindicator.buildins.ArgbEvaluatorHolder;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class LinePagerIndicator extends View implements IPagerIndicator {
    public static final int MODE_EXACTLY = 2;
    public static final int MODE_MATCH_EDGE = 0;
    public static final int MODE_WRAP_CONTENT = 1;
    private List<Integer> mColors;
    private Interpolator mEndInterpolator;
    private float mLineHeight;
    private RectF mLineRect;
    private float mLineWidth;
    private int mMode;
    private Paint mPaint;
    private List<PositionData> mPositionDataList;
    private float mRoundRadius;
    private Interpolator mStartInterpolator;
    private float mXOffset;
    private float mYOffset;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageSelected(int i) {
    }

    public LinePagerIndicator(Context context) {
        super(context);
        this.mStartInterpolator = new LinearInterpolator();
        this.mEndInterpolator = new LinearInterpolator();
        this.mLineRect = new RectF();
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mLineHeight = UIUtil.dip2px(context, 3.0d);
        this.mLineWidth = UIUtil.dip2px(context, 10.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.mLineRect;
        float f = this.mRoundRadius;
        canvas.drawRoundRect(rectF, f, f, this.mPaint);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrolled(int i, float f, int i2) {
        float fWidth;
        float fWidth2;
        float fWidth3;
        float fWidth4;
        float f2;
        float f3;
        List<PositionData> list = this.mPositionDataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<Integer> list2 = this.mColors;
        if (list2 != null && list2.size() > 0) {
            this.mPaint.setColor(ArgbEvaluatorHolder.eval(f, this.mColors.get(Math.abs(i) % this.mColors.size()).intValue(), this.mColors.get(Math.abs(i + 1) % this.mColors.size()).intValue()));
        }
        PositionData imitativePositionData = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i);
        PositionData imitativePositionData2 = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i + 1);
        int i3 = this.mMode;
        if (i3 == 0) {
            fWidth = imitativePositionData.mLeft + this.mXOffset;
            fWidth2 = imitativePositionData2.mLeft + this.mXOffset;
            fWidth3 = imitativePositionData.mRight - this.mXOffset;
            f2 = imitativePositionData2.mRight;
            f3 = this.mXOffset;
        } else if (i3 == 1) {
            fWidth = imitativePositionData.mContentLeft + this.mXOffset;
            fWidth2 = imitativePositionData2.mContentLeft + this.mXOffset;
            fWidth3 = imitativePositionData.mContentRight - this.mXOffset;
            f2 = imitativePositionData2.mContentRight;
            f3 = this.mXOffset;
        } else {
            fWidth = imitativePositionData.mLeft + ((imitativePositionData.width() - this.mLineWidth) / 2.0f);
            fWidth2 = imitativePositionData2.mLeft + ((imitativePositionData2.width() - this.mLineWidth) / 2.0f);
            fWidth3 = ((imitativePositionData.width() + this.mLineWidth) / 2.0f) + imitativePositionData.mLeft;
            fWidth4 = ((imitativePositionData2.width() + this.mLineWidth) / 2.0f) + imitativePositionData2.mLeft;
            this.mLineRect.left = fWidth + ((fWidth2 - fWidth) * this.mStartInterpolator.getInterpolation(f));
            this.mLineRect.right = fWidth3 + ((fWidth4 - fWidth3) * this.mEndInterpolator.getInterpolation(f));
            this.mLineRect.top = (getHeight() - this.mLineHeight) - this.mYOffset;
            this.mLineRect.bottom = getHeight() - this.mYOffset;
            invalidate();
        }
        fWidth4 = f2 - f3;
        this.mLineRect.left = fWidth + ((fWidth2 - fWidth) * this.mStartInterpolator.getInterpolation(f));
        this.mLineRect.right = fWidth3 + ((fWidth4 - fWidth3) * this.mEndInterpolator.getInterpolation(f));
        this.mLineRect.top = (getHeight() - this.mLineHeight) - this.mYOffset;
        this.mLineRect.bottom = getHeight() - this.mYOffset;
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPositionDataProvide(List<PositionData> list) {
        this.mPositionDataList = list;
    }

    public float getYOffset() {
        return this.mYOffset;
    }

    public void setYOffset(float f) {
        this.mYOffset = f;
    }

    public float getXOffset() {
        return this.mXOffset;
    }

    public void setXOffset(float f) {
        this.mXOffset = f;
    }

    public float getLineHeight() {
        return this.mLineHeight;
    }

    public void setLineHeight(float f) {
        this.mLineHeight = f;
    }

    public float getLineWidth() {
        return this.mLineWidth;
    }

    public void setLineWidth(float f) {
        this.mLineWidth = f;
    }

    public float getRoundRadius() {
        return this.mRoundRadius;
    }

    public void setRoundRadius(float f) {
        this.mRoundRadius = f;
    }

    public int getMode() {
        return this.mMode;
    }

    public void setMode(int i) {
        if (i == 2 || i == 0 || i == 1) {
            this.mMode = i;
            return;
        }
        throw new IllegalArgumentException("mode " + i + " not supported.");
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public List<Integer> getColors() {
        return this.mColors;
    }

    public void setColors(Integer... numArr) {
        this.mColors = Arrays.asList(numArr);
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
