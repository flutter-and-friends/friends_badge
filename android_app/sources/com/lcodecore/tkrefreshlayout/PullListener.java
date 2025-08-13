package com.lcodecore.tkrefreshlayout;

/* loaded from: classes.dex */
public interface PullListener {
    void onFinishLoadMore();

    void onFinishRefresh();

    void onLoadMore(TwinklingRefreshLayout twinklingRefreshLayout);

    void onLoadmoreCanceled();

    void onPullDownReleasing(TwinklingRefreshLayout twinklingRefreshLayout, float f);

    void onPullUpReleasing(TwinklingRefreshLayout twinklingRefreshLayout, float f);

    void onPullingDown(TwinklingRefreshLayout twinklingRefreshLayout, float f);

    void onPullingUp(TwinklingRefreshLayout twinklingRefreshLayout, float f);

    void onRefresh(TwinklingRefreshLayout twinklingRefreshLayout);

    void onRefreshCanceled();
}
