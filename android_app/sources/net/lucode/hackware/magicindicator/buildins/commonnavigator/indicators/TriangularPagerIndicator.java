package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.List;
import net.lucode.hackware.magicindicator.FragmentContainerHelper;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class TriangularPagerIndicator extends View implements IPagerIndicator {
    private float mAnchorX;
    private int mLineColor;
    private int mLineHeight;
    private Paint mPaint;
    private Path mPath;
    private List<PositionData> mPositionDataList;
    private boolean mReverse;
    private Interpolator mStartInterpolator;
    private int mTriangleHeight;
    private int mTriangleWidth;
    private float mYOffset;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageSelected(int i) {
    }

    public TriangularPagerIndicator(Context context) {
        super(context);
        this.mPath = new Path();
        this.mStartInterpolator = new LinearInterpolator();
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mLineHeight = UIUtil.dip2px(context, 3.0d);
        this.mTriangleWidth = UIUtil.dip2px(context, 14.0d);
        this.mTriangleHeight = UIUtil.dip2px(context, 8.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.mPaint.setColor(this.mLineColor);
        if (this.mReverse) {
            canvas.drawRect(0.0f, (getHeight() - this.mYOffset) - this.mTriangleHeight, getWidth(), ((getHeight() - this.mYOffset) - this.mTriangleHeight) + this.mLineHeight, this.mPaint);
        } else {
            canvas.drawRect(0.0f, (getHeight() - this.mLineHeight) - this.mYOffset, getWidth(), getHeight() - this.mYOffset, this.mPaint);
        }
        this.mPath.reset();
        if (this.mReverse) {
            this.mPath.moveTo(this.mAnchorX - (this.mTriangleWidth / 2), (getHeight() - this.mYOffset) - this.mTriangleHeight);
            this.mPath.lineTo(this.mAnchorX, getHeight() - this.mYOffset);
            this.mPath.lineTo(this.mAnchorX + (this.mTriangleWidth / 2), (getHeight() - this.mYOffset) - this.mTriangleHeight);
        } else {
            this.mPath.moveTo(this.mAnchorX - (this.mTriangleWidth / 2), getHeight() - this.mYOffset);
            this.mPath.lineTo(this.mAnchorX, (getHeight() - this.mTriangleHeight) - this.mYOffset);
            this.mPath.lineTo(this.mAnchorX + (this.mTriangleWidth / 2), getHeight() - this.mYOffset);
        }
        this.mPath.close();
        canvas.drawPath(this.mPath, this.mPaint);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPageScrolled(int i, float f, int i2) {
        List<PositionData> list = this.mPositionDataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        PositionData imitativePositionData = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i);
        PositionData imitativePositionData2 = FragmentContainerHelper.getImitativePositionData(this.mPositionDataList, i + 1);
        float f2 = imitativePositionData.mLeft + ((imitativePositionData.mRight - imitativePositionData.mLeft) / 2);
        this.mAnchorX = f2 + (((imitativePositionData2.mLeft + ((imitativePositionData2.mRight - imitativePositionData2.mLeft) / 2)) - f2) * this.mStartInterpolator.getInterpolation(f));
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator
    public void onPositionDataProvide(List<PositionData> list) {
        this.mPositionDataList = list;
    }

    public int getLineHeight() {
        return this.mLineHeight;
    }

    public void setLineHeight(int i) {
        this.mLineHeight = i;
    }

    public int getLineColor() {
        return this.mLineColor;
    }

    public void setLineColor(int i) {
        this.mLineColor = i;
    }

    public int getTriangleHeight() {
        return this.mTriangleHeight;
    }

    public void setTriangleHeight(int i) {
        this.mTriangleHeight = i;
    }

    public int getTriangleWidth() {
        return this.mTriangleWidth;
    }

    public void setTriangleWidth(int i) {
        this.mTriangleWidth = i;
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

    public boolean isReverse() {
        return this.mReverse;
    }

    public void setReverse(boolean z) {
        this.mReverse = z;
    }

    public float getYOffset() {
        return this.mYOffset;
    }

    public void setYOffset(float f) {
        this.mYOffset = f;
    }
}
