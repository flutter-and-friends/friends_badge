package com.lcodecore.tkrefreshlayout;

import android.view.View;

/* loaded from: classes.dex */
public interface IHeaderView {
    View getView();

    void onFinish(OnAnimEndListener onAnimEndListener);

    void onPullReleasing(float f, float f2, float f3);

    void onPullingDown(float f, float f2, float f3);

    void reset();

    void startAnim(float f, float f2);
}
