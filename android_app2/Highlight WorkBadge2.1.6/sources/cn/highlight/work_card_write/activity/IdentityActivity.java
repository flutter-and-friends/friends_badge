package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class IdentityActivity extends BaseActivity {

    @BindView(R.id.iv_to)
    ImageView ivTo;

    @BindView(R.id.rl_enterprise)
    RelativeLayout rlEnterprise;

    @BindView(R.id.rl_person)
    RelativeLayout rlPerson;
    int type = 1;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_identity;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        setImmersionBar(false, true, "");
    }

    public void setBg() {
        if (this.type == 0) {
            this.rlPerson.setBackgroundResource(R.drawable.bg_login_selected);
            this.rlEnterprise.setBackgroundResource(R.drawable.bg_login_no_selected);
        } else {
            this.rlPerson.setBackgroundResource(R.drawable.bg_login_no_selected);
            this.rlEnterprise.setBackgroundResource(R.drawable.bg_login_selected);
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SpUtil.putBoolean(this, Constants.FIRST_USE, false);
    }

    @OnClick({R.id.rl_enterprise, R.id.rl_person, R.id.iv_to})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.iv_to /* 2131296618 */:
                if (this.type == 0) {
                    launchActivity(HomeActivity.class);
                } else {
                    launchActivity(LoginActivity.class);
                }
                finishActivity();
                break;
            case R.id.rl_enterprise /* 2131296780 */:
                this.type = 1;
                setBg();
                break;
            case R.id.rl_person /* 2131296781 */:
                this.type = 0;
                setBg();
                break;
        }
    }
}
