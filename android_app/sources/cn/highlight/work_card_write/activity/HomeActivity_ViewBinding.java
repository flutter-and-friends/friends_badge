package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;

/* loaded from: classes.dex */
public class HomeActivity_ViewBinding implements Unbinder {
    private HomeActivity target;
    private View view7f09017a;
    private View view7f090185;
    private View view7f09018b;

    public HomeActivity_ViewBinding(HomeActivity homeActivity) {
        this(homeActivity, homeActivity.getWindow().getDecorView());
    }

    public HomeActivity_ViewBinding(final HomeActivity homeActivity, View view) {
        this.target = homeActivity;
        homeActivity.linearContent = (LinearLayout) Utils.findRequiredViewAsType(view, C0498R.id.linearContent, "field 'linearContent'", LinearLayout.class);
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.linearHome, "field 'linearHome' and method 'onViewClicked'");
        homeActivity.linearHome = (LinearLayout) Utils.castView(viewFindRequiredView, C0498R.id.linearHome, "field 'linearHome'", LinearLayout.class);
        this.view7f090185 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.HomeActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                homeActivity.onViewClicked(view2);
            }
        });
        homeActivity.imgHome = (ImageView) Utils.findRequiredViewAsType(view, C0498R.id.imgHome, "field 'imgHome'", ImageView.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.linearCard, "field 'linearCard' and method 'onViewClicked'");
        homeActivity.linearCard = (LinearLayout) Utils.castView(viewFindRequiredView2, C0498R.id.linearCard, "field 'linearCard'", LinearLayout.class);
        this.view7f09017a = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.HomeActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                homeActivity.onViewClicked(view2);
            }
        });
        homeActivity.imgCard = (ImageView) Utils.findRequiredViewAsType(view, C0498R.id.imgCard, "field 'imgCard'", ImageView.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, C0498R.id.linearMy, "field 'linearMy' and method 'onViewClicked'");
        homeActivity.linearMy = (LinearLayout) Utils.castView(viewFindRequiredView3, C0498R.id.linearMy, "field 'linearMy'", LinearLayout.class);
        this.view7f09018b = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.HomeActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                homeActivity.onViewClicked(view2);
            }
        });
        homeActivity.imgMy = (ImageView) Utils.findRequiredViewAsType(view, C0498R.id.imgMy, "field 'imgMy'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        HomeActivity homeActivity = this.target;
        if (homeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        homeActivity.linearContent = null;
        homeActivity.linearHome = null;
        homeActivity.imgHome = null;
        homeActivity.linearCard = null;
        homeActivity.imgCard = null;
        homeActivity.linearMy = null;
        homeActivity.imgMy = null;
        this.view7f090185.setOnClickListener(null);
        this.view7f090185 = null;
        this.view7f09017a.setOnClickListener(null);
        this.view7f09017a = null;
        this.view7f09018b.setOnClickListener(null);
        this.view7f09018b = null;
    }
}
