package com.lcodecore.tkrefreshlayout;

import android.view.View;

/* loaded from: classes.dex */
public interface IBottomView {
    View getView();

    void onFinish();

    void onPullReleasing(float f, float f2, float f3);

    void onPullingUp(float f, float f2, float f3);

    void reset();

    void startAnim(float f, float f2);
}
