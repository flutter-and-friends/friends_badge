package com.lcodecore.tkrefreshlayout.footer;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.lcodecore.tkrefreshlayout.IBottomView;
import com.lcodecore.tkrefreshlayout.utils.DensityUtil;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class BallPulseView extends View implements IBottomView {
    public static final int DEFAULT_SIZE = 50;
    private int animatingColor;
    private float circleSpacing;
    private ArrayList<ValueAnimator> mAnimators;
    private Paint mPaint;
    private Map<ValueAnimator, ValueAnimator.AnimatorUpdateListener> mUpdateListeners;
    private int normalColor;
    private float[] scaleFloats;

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public View getView() {
        return this;
    }

    public BallPulseView(Context context) {
        this(context, null);
    }

    public BallPulseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BallPulseView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.scaleFloats = new float[]{1.0f, 1.0f, 1.0f};
        this.mUpdateListeners = new HashMap();
        this.normalColor = -1118482;
        this.animatingColor = -1615546;
        int iDp2px = DensityUtil.dp2px(context, 50.0f);
        setLayoutParams(new FrameLayout.LayoutParams(iDp2px, iDp2px, 17));
        this.circleSpacing = DensityUtil.dp2px(context, 4.0f);
        this.mPaint = new Paint();
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setAntiAlias(true);
    }

    public void setIndicatorColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setNormalColor(int i) {
        this.normalColor = i;
    }

    public void setAnimatingColor(int i) {
        this.animatingColor = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fMin = (Math.min(getWidth(), getHeight()) - (this.circleSpacing * 2.0f)) / 6.0f;
        float f = 2.0f * fMin;
        float width = (getWidth() / 2) - (this.circleSpacing + f);
        float height = getHeight() / 2;
        for (int i = 0; i < 3; i++) {
            canvas.save();
            float f2 = i;
            canvas.translate((f * f2) + width + (this.circleSpacing * f2), height);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i], fArr[i]);
            canvas.drawCircle(0.0f, 0.0f, fMin, this.mPaint);
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAnimators != null) {
            for (int i = 0; i < this.mAnimators.size(); i++) {
                this.mAnimators.get(i).cancel();
            }
        }
    }

    public void startAnim() {
        if (this.mAnimators == null) {
            createAnimators();
        }
        if (this.mAnimators == null || isStarted()) {
            return;
        }
        for (int i = 0; i < this.mAnimators.size(); i++) {
            ValueAnimator valueAnimator = this.mAnimators.get(i);
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.mUpdateListeners.get(valueAnimator);
            if (animatorUpdateListener != null) {
                valueAnimator.addUpdateListener(animatorUpdateListener);
            }
            valueAnimator.start();
        }
        setIndicatorColor(this.animatingColor);
    }

    public void stopAnim() {
        ArrayList<ValueAnimator> arrayList = this.mAnimators;
        if (arrayList != null) {
            Iterator<ValueAnimator> it = arrayList.iterator();
            while (it.hasNext()) {
                ValueAnimator next = it.next();
                if (next != null && next.isStarted()) {
                    next.removeAllUpdateListeners();
                    next.end();
                }
            }
        }
        setIndicatorColor(this.normalColor);
    }

    private boolean isStarted() {
        Iterator<ValueAnimator> it = this.mAnimators.iterator();
        if (it.hasNext()) {
            return it.next().isStarted();
        }
        return false;
    }

    private void createAnimators() {
        this.mAnimators = new ArrayList<>();
        int[] iArr = {120, EnumG.BaseMid_SafeCertification, 360};
        for (final int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            valueAnimatorOfFloat.setDuration(750L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            this.mUpdateListeners.put(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.footer.BallPulseView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallPulseView.this.scaleFloats[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallPulseView.this.postInvalidate();
                }
            });
            this.mAnimators.add(valueAnimatorOfFloat);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onPullingUp(float f, float f2, float f3) {
        stopAnim();
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void startAnim(float f, float f2) {
        startAnim();
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onPullReleasing(float f, float f2, float f3) {
        stopAnim();
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onFinish() {
        stopAnim();
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void reset() {
        stopAnim();
    }
}
