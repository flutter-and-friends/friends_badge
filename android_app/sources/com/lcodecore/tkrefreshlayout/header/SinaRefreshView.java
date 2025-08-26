package com.lcodecore.tkrefreshlayout.header;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.lcodecore.tkrefreshlayout.C1259R;
import com.lcodecore.tkrefreshlayout.IHeaderView;
import com.lcodecore.tkrefreshlayout.OnAnimEndListener;

/* loaded from: classes.dex */
public class SinaRefreshView extends FrameLayout implements IHeaderView {
    private ImageView loadingView;
    private String pullDownStr;
    private ImageView refreshArrow;
    private TextView refreshTextView;
    private String refreshingStr;
    private String releaseRefreshStr;

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public View getView() {
        return this;
    }

    public SinaRefreshView(Context context) {
        this(context, null);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.pullDownStr = "下拉刷新";
        this.releaseRefreshStr = "释放刷新";
        this.refreshingStr = "正在刷新";
        init();
    }

    private void init() {
        View viewInflate = View.inflate(getContext(), C1259R.layout.view_sinaheader, null);
        this.refreshArrow = (ImageView) viewInflate.findViewById(C1259R.id.iv_arrow);
        this.refreshTextView = (TextView) viewInflate.findViewById(C1259R.id.f407tv);
        this.loadingView = (ImageView) viewInflate.findViewById(C1259R.id.iv_loading);
        addView(viewInflate);
    }

    public void setArrowResource(int i) {
        this.refreshArrow.setImageResource(i);
    }

    public void setTextColor(int i) {
        this.refreshTextView.setTextColor(i);
    }

    public void setPullDownStr(String str) {
        this.pullDownStr = str;
    }

    public void setReleaseRefreshStr(String str) {
        this.releaseRefreshStr = str;
    }

    public void setRefreshingStr(String str) {
        this.refreshingStr = str;
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onPullingDown(float f, float f2, float f3) {
        if (f < 1.0f) {
            this.refreshTextView.setText(this.pullDownStr);
        }
        if (f > 1.0f) {
            this.refreshTextView.setText(this.releaseRefreshStr);
        }
        this.refreshArrow.setRotation(((f * f3) / f2) * 180.0f);
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onPullReleasing(float f, float f2, float f3) {
        if (f < 1.0f) {
            this.refreshTextView.setText(this.pullDownStr);
            this.refreshArrow.setRotation(((f * f3) / f2) * 180.0f);
            if (this.refreshArrow.getVisibility() == 8) {
                this.refreshArrow.setVisibility(0);
                this.loadingView.setVisibility(8);
            }
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void startAnim(float f, float f2) {
        this.refreshTextView.setText(this.refreshingStr);
        this.refreshArrow.setVisibility(8);
        this.loadingView.setVisibility(0);
        ((AnimationDrawable) this.loadingView.getDrawable()).start();
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onFinish(OnAnimEndListener onAnimEndListener) {
        onAnimEndListener.onAnimEnd();
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void reset() {
        this.refreshArrow.setVisibility(0);
        this.loadingView.setVisibility(8);
        this.refreshTextView.setText(this.pullDownStr);
    }
}
