package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;

/* loaded from: classes.dex */
public class LoginActivity_ViewBinding implements Unbinder {
    private LoginActivity target;
    private View view7f090098;
    private View view7f0901a2;
    private View view7f0901a5;
    private View view7f0901a6;

    public LoginActivity_ViewBinding(LoginActivity loginActivity) {
        this(loginActivity, loginActivity.getWindow().getDecorView());
    }

    public LoginActivity_ViewBinding(final LoginActivity loginActivity, View view) {
        this.target = loginActivity;
        loginActivity.tvLanguage = (TextView) Utils.findRequiredViewAsType(view, C0498R.id.tv_language, "field 'tvLanguage'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.ll_language, "field 'llLanguage' and method 'onViewClicked'");
        loginActivity.llLanguage = (LinearLayout) Utils.castView(viewFindRequiredView, C0498R.id.ll_language, "field 'llLanguage'", LinearLayout.class);
        this.view7f0901a2 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LoginActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                loginActivity.onViewClicked(view2);
            }
        });
        loginActivity.editAccount = (EditText) Utils.findRequiredViewAsType(view, C0498R.id.edit_account, "field 'editAccount'", EditText.class);
        loginActivity.editPassword = (EditText) Utils.findRequiredViewAsType(view, C0498R.id.edit_password, "field 'editPassword'", EditText.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.btn_login, "field 'btnLogin' and method 'onViewClicked'");
        loginActivity.btnLogin = (TextView) Utils.castView(viewFindRequiredView2, C0498R.id.btn_login, "field 'btnLogin'", TextView.class);
        this.view7f090098 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LoginActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                loginActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, C0498R.id.ll_person, "field 'llPerson' and method 'onViewClicked'");
        loginActivity.llPerson = (LinearLayout) Utils.castView(viewFindRequiredView3, C0498R.id.ll_person, "field 'llPerson'", LinearLayout.class);
        this.view7f0901a5 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LoginActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                loginActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, C0498R.id.ll_service, "field 'llService' and method 'onViewClicked'");
        loginActivity.llService = (LinearLayout) Utils.castView(viewFindRequiredView4, C0498R.id.ll_service, "field 'llService'", LinearLayout.class);
        this.view7f0901a6 = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LoginActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                loginActivity.onViewClicked(view2);
            }
        });
        loginActivity.ivArrow = (ImageView) Utils.findRequiredViewAsType(view, C0498R.id.iv_arrow, "field 'ivArrow'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        LoginActivity loginActivity = this.target;
        if (loginActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        loginActivity.tvLanguage = null;
        loginActivity.llLanguage = null;
        loginActivity.editAccount = null;
        loginActivity.editPassword = null;
        loginActivity.btnLogin = null;
        loginActivity.llPerson = null;
        loginActivity.llService = null;
        loginActivity.ivArrow = null;
        this.view7f0901a2.setOnClickListener(null);
        this.view7f0901a2 = null;
        this.view7f090098.setOnClickListener(null);
        this.view7f090098 = null;
        this.view7f0901a5.setOnClickListener(null);
        this.view7f0901a5 = null;
        this.view7f0901a6.setOnClickListener(null);
        this.view7f0901a6 = null;
    }
}
