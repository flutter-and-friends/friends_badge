package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.Arrays;
import java.util.List;
import net.lucode.hackware.magicindicator.FragmentContainerHelper;
import net.lucode.hackware.magicindicator.buildins.ArgbEvaluatorHolder;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class BezierPagerIndicator extends View implements IPagerIndicator {
    private List<Integer> mColors;
    private Interpolator mEndInterpolator;
    private float mLeftCircleRadius;
    private float mLeftCircleX;
    private float mMaxCircleRadius;
    private float mMinCircleRadius;
    private Paint mPaint;
    private Path mPath;
    private List<PositionData> mPositionDataList;
    private float mRightCircleRadius;
    private float mRightCircleX;
    private Interpolator mStartInterpolator;
    private float mYOffset;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageSelected(int i) {
    }

    public BezierPagerIndicator(Context context) {
        super(context);
        this.mPath = new Path();
        this.mStartInterpolator = new AccelerateInterpolator();
        this.mEndInterpolator = new DecelerateInterpolator();
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mMaxCircleRadius = UIUtil.dip2px(context, 3.5d);
        this.mMinCircleRadius = UIUtil.dip2px(context, 2.0d);
        this.mYOffset = UIUtil.dip2px(context, 1.5d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(this.mLeftCircleX, (getHeight() - this.mYOffset) - this.mMaxCircleRadius, this.mLeftCircleRadius, this.mPaint);
        canvas.drawCircle(this.mRightCircleX, (getHeight() - this.mYOffset) - this.mMaxCircleRadius, this.mRightCircleRadius, this.mPaint);
        drawBezierCurve(canvas);
    }

    private void drawBezierCurve(Canvas canvas) {
        this.mPath.reset();
        float height = (getHeight() - this.mYOffset) - this.mMaxCircleRadius;
        this.mPath.moveTo(this.mRightCircleX, height);
        this.mPath.lineTo(this.mRightCircleX, height - this.mRightCircleRadius);
        Path path = this.mPath;
        float f = this.mRightCircleX;
        float f2 = this.mLeftCircleX;
        path.quadTo(f + ((f2 - f) / 2.0f), height, f2, height - this.mLeftCircleRadius);
        this.mPath.lineTo(this.mLeftCircleX, this.mLeftCircleRadius + height);
        Path path2 = this.mPath;
        float f3 = this.mRightCircleX;
        path2.quadTo(((this.mLeftCircleX - f3) / 2.0f) + f3, height, f3, this.mRightCircleRadius + height);
        this.mPath.close();
        canvas.drawPath(this.mPath, this.mPaint);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrolled(int i, float f, int i2) {
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
        float f2 = imitativePositionData.mLeft + ((imitativePositionData.mRight - imitativePositionData.mLeft) / 2);
        float f3 = (imitativePositionData2.mLeft + ((imitativePositionData2.mRight - imitativePositionData2.mLeft) / 2)) - f2;
        this.mLeftCircleX = (this.mStartInterpolator.getInterpolation(f) * f3) + f2;
        this.mRightCircleX = f2 + (f3 * this.mEndInterpolator.getInterpolation(f));
        float f4 = this.mMaxCircleRadius;
        this.mLeftCircleRadius = f4 + ((this.mMinCircleRadius - f4) * this.mEndInterpolator.getInterpolation(f));
        float f5 = this.mMinCircleRadius;
        this.mRightCircleRadius = f5 + ((this.mMaxCircleRadius - f5) * this.mStartInterpolator.getInterpolation(f));
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPositionDataProvide(List<PositionData> list) {
        this.mPositionDataList = list;
    }

    public float getMaxCircleRadius() {
        return this.mMaxCircleRadius;
    }

    public void setMaxCircleRadius(float f) {
        this.mMaxCircleRadius = f;
    }

    public float getMinCircleRadius() {
        return this.mMinCircleRadius;
    }

    public void setMinCircleRadius(float f) {
        this.mMinCircleRadius = f;
    }

    public float getYOffset() {
        return this.mYOffset;
    }

    public void setYOffset(float f) {
        this.mYOffset = f;
    }

    public void setColors(Integer... numArr) {
        this.mColors = Arrays.asList(numArr);
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.mStartInterpolator = interpolator;
        if (this.mStartInterpolator == null) {
            this.mStartInterpolator = new AccelerateInterpolator();
        }
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.mEndInterpolator = interpolator;
        if (this.mEndInterpolator == null) {
            this.mEndInterpolator = new DecelerateInterpolator();
        }
    }
}
