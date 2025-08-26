package com.lcodecore.tkrefreshlayout.footer;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.lcodecore.tkrefreshlayout.C1259R;
import com.lcodecore.tkrefreshlayout.IBottomView;
import com.lcodecore.tkrefreshlayout.utils.DensityUtil;

/* loaded from: classes.dex */
public class LoadingView extends ImageView implements IBottomView {
    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public View getView() {
        return this;
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onFinish() {
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onPullReleasing(float f, float f2, float f3) {
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void onPullingUp(float f, float f2, float f3) {
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void reset() {
    }

    public LoadingView(Context context) {
        this(context, null);
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int iDp2px = DensityUtil.dp2px(context, 34.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDp2px, iDp2px);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setImageResource(C1259R.drawable.anim_loading_view);
    }

    @Override // com.lcodecore.tkrefreshlayout.IBottomView
    public void startAnim(float f, float f2) {
        ((AnimationDrawable) getDrawable()).start();
    }
}
