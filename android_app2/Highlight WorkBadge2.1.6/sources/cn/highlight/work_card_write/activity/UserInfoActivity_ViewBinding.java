package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class UserInfoActivity_ViewBinding implements Unbinder {
    private UserInfoActivity target;
    private View view7f090147;
    private View view7f0902ba;

    public UserInfoActivity_ViewBinding(UserInfoActivity userInfoActivity) {
        this(userInfoActivity, userInfoActivity.getWindow().getDecorView());
    }

    public UserInfoActivity_ViewBinding(final UserInfoActivity userInfoActivity, View view) {
        this.target = userInfoActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        userInfoActivity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.UserInfoActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                userInfoActivity.onViewClicked(view2);
            }
        });
        userInfoActivity.tvUserName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_userName, "field 'tvUserName'", TextView.class);
        userInfoActivity.linearZh = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearZh, "field 'linearZh'", LinearLayout.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.tv_login_out, "field 'tvLoginOut' and method 'onViewClicked'");
        userInfoActivity.tvLoginOut = (TextView) Utils.castView(viewFindRequiredView2, R.id.tv_login_out, "field 'tvLoginOut'", TextView.class);
        this.view7f0902ba = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.UserInfoActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                userInfoActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        UserInfoActivity userInfoActivity = this.target;
        if (userInfoActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        userInfoActivity.imgBack = null;
        userInfoActivity.tvUserName = null;
        userInfoActivity.linearZh = null;
        userInfoActivity.tvLoginOut = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
        this.view7f0902ba.setOnClickListener(null);
        this.view7f0902ba = null;
    }
}
