package net.lucode.hackware.magicindicator.buildins.commonnavigator.abs;

import java.util.List;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public interface IPagerIndicator {
    void onPageScrollStateChanged(int i);

    void onPageScrolled(int i, float f, int i2);

    void onPageSelected(int i);

    void onPositionDataProvide(List<PositionData> list);
}
