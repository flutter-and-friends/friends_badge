package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class IdentityActivity_ViewBinding implements Unbinder {
    private IdentityActivity target;
    private View view7f09016a;
    private View view7f09020c;
    private View view7f09020d;

    public IdentityActivity_ViewBinding(IdentityActivity identityActivity) {
        this(identityActivity, identityActivity.getWindow().getDecorView());
    }

    public IdentityActivity_ViewBinding(final IdentityActivity identityActivity, View view) {
        this.target = identityActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.rl_enterprise, "field 'rlEnterprise' and method 'onViewClicked'");
        identityActivity.rlEnterprise = (RelativeLayout) Utils.castView(viewFindRequiredView, R.id.rl_enterprise, "field 'rlEnterprise'", RelativeLayout.class);
        this.view7f09020c = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.IdentityActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identityActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.rl_person, "field 'rlPerson' and method 'onViewClicked'");
        identityActivity.rlPerson = (RelativeLayout) Utils.castView(viewFindRequiredView2, R.id.rl_person, "field 'rlPerson'", RelativeLayout.class);
        this.view7f09020d = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.IdentityActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identityActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.iv_to, "field 'ivTo' and method 'onViewClicked'");
        identityActivity.ivTo = (ImageView) Utils.castView(viewFindRequiredView3, R.id.iv_to, "field 'ivTo'", ImageView.class);
        this.view7f09016a = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.IdentityActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identityActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        IdentityActivity identityActivity = this.target;
        if (identityActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        identityActivity.rlEnterprise = null;
        identityActivity.rlPerson = null;
        identityActivity.ivTo = null;
        this.view7f09020c.setOnClickListener(null);
        this.view7f09020c = null;
        this.view7f09020d.setOnClickListener(null);
        this.view7f09020d = null;
        this.view7f09016a.setOnClickListener(null);
        this.view7f09016a = null;
    }
}
