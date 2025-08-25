package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class Identity2Activity extends BaseActivity {

    @BindView(R.id.btnSave)
    TextView btnSave;

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.linear_enterprise)
    LinearLayout linearEnterprise;

    @BindView(R.id.linear_person)
    LinearLayout linearPerson;

    @BindView(R.id.radio_enterprise)
    RadioButton radioEnterprise;

    @BindView(R.id.radio_person)
    RadioButton radioPerson;
    private int userType = 0;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_identity2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    @Override // cn.highlight.work_card_write.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void initData() {
        char c;
        String string = SpUtil.getString(this, Constants.Identity, Constants.Person);
        int iHashCode = string.hashCode();
        if (iHashCode != -1907849355) {
            c = (iHashCode == 1190727553 && string.equals(Constants.Enterprise)) ? (char) 0 : (char) 65535;
        } else if (string.equals(Constants.Person)) {
            c = 1;
        }
        if (c == 0) {
            this.userType = 0;
        } else if (c == 1) {
            this.userType = 1;
        }
        selectRadioButton();
    }

    private void selectRadioButton() {
        this.radioEnterprise.setChecked(false);
        this.radioPerson.setChecked(false);
        int i = this.userType;
        if (i == 0) {
            this.radioEnterprise.setChecked(true);
        } else {
            if (i != 1) {
                return;
            }
            this.radioPerson.setChecked(true);
        }
    }

    @OnClick({R.id.imgBack, R.id.radio_enterprise, R.id.linear_enterprise, R.id.radio_person, R.id.linear_person, R.id.btnSave})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btnSave /* 2131296402 */:
                if (this.userType == 1) {
                    if (SpUtil.getString(this, Constants.Identity, Constants.Person).equals(Constants.Enterprise) && HomeActivity.getInstance() != null) {
                        HomeActivity.getInstance().changeFrag(0);
                    }
                    SpUtil.putString(this, Constants.Identity, Constants.Person);
                } else if (!SpUtil.getString(this, Constants.Identity, Constants.Person).equals(Constants.Enterprise)) {
                    launchActivity(LoginActivity.class);
                }
                finishActivity();
                break;
            case R.id.imgBack /* 2131296583 */:
                finishActivity();
                break;
            case R.id.linear_enterprise /* 2131296668 */:
            case R.id.radio_enterprise /* 2131296759 */:
                this.userType = 0;
                selectRadioButton();
                break;
            case R.id.linear_person /* 2131296669 */:
            case R.id.radio_person /* 2131296760 */:
                this.userType = 1;
                selectRadioButton();
                break;
        }
    }
}
