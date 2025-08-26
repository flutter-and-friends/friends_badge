package net.lucode.hackware.magicindicator;

import androidx.viewpager.widget.ViewPager;

/* loaded from: classes2.dex */
public class ViewPagerHelper {
    public static void bind(final MagicIndicator magicIndicator, ViewPager viewPager) {
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: net.lucode.hackware.magicindicator.ViewPagerHelper.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
                magicIndicator.onPageScrolled(i, f, i2);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                magicIndicator.onPageSelected(i);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
                magicIndicator.onPageScrollStateChanged(i);
            }
        });
    }
}
