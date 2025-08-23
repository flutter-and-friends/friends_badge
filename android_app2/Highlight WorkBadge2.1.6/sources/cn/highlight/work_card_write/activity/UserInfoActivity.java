package cn.highlight.work_card_write.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.dialog.HintDialog;

/* loaded from: classes.dex */
public class UserInfoActivity extends BaseActivity {

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.linearZh)
    LinearLayout linearZh;

    @BindView(R.id.tv_login_out)
    TextView tvLoginOut;

    @BindView(R.id.tv_userName)
    TextView tvUserName;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_user_info;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        if (SpUtil.getString(this, Constants.Identity, Constants.Person).equals(Constants.Enterprise)) {
            this.tvUserName.setText(SpUtil.getString(this, Constants.NICKNAME, ""));
            this.tvLoginOut.setTextColor(Color.parseColor("#FFFF0000"));
        } else {
            this.tvUserName.setText(R.string.my_username);
            this.tvLoginOut.setTextColor(Color.parseColor("#FFcccccc"));
        }
    }

    @OnClick({R.id.imgBack, R.id.tv_login_out})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.imgBack) {
            finishActivity();
        } else if (id == R.id.tv_login_out && !SpUtil.getString(this, Constants.Identity, Constants.Person).equals(Constants.Person)) {
            final HintDialog hintDialog = new HintDialog(this, getString(R.string.login_out_hint));
            hintDialog.setOnHintDialogListener(new HintDialog.OnHintDialogListener() { // from class: cn.highlight.work_card_write.activity.UserInfoActivity.1
                @Override // cn.highlight.work_card_write.dialog.HintDialog.OnHintDialogListener
                public void onNoClick(View view2) {
                    hintDialog.dismiss();
                }

                @Override // cn.highlight.work_card_write.dialog.HintDialog.OnHintDialogListener
                public void onYesClick(View view2) {
                    SpUtil.putString(UserInfoActivity.this, Constants.Identity, Constants.Person);
                    if (HomeActivity.getInstance() != null) {
                        HomeActivity.getInstance().changeFrag(0);
                    }
                    hintDialog.dismiss();
                    UserInfoActivity.this.launchActivity(LoginActivity.class);
                    UserInfoActivity.this.finishActivity();
                }
            });
            hintDialog.show();
        }
    }
}
