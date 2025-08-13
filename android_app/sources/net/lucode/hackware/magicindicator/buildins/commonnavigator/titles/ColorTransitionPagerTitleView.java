package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import net.lucode.hackware.magicindicator.buildins.ArgbEvaluatorHolder;

/* loaded from: classes2.dex */
public class ColorTransitionPagerTitleView extends SimplePagerTitleView {
    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onDeselected(int i, int i2) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onSelected(int i, int i2) {
    }

    public ColorTransitionPagerTitleView(Context context) {
        super(context);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onLeave(int i, int i2, float f, boolean z) {
        setTextColor(ArgbEvaluatorHolder.eval(f, this.mSelectedColor, this.mNormalColor));
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onEnter(int i, int i2, float f, boolean z) {
        setTextColor(ArgbEvaluatorHolder.eval(f, this.mNormalColor, this.mSelectedColor));
    }
}
