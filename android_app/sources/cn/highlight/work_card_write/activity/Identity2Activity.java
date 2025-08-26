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
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class Identity2Activity extends BaseActivity {

    @BindView(C0498R.id.btnSave)
    TextView btnSave;

    @BindView(C0498R.id.imgBack)
    ImageView imgBack;

    @BindView(C0498R.id.linear_enterprise)
    LinearLayout linearEnterprise;

    @BindView(C0498R.id.linear_person)
    LinearLayout linearPerson;

    @BindView(C0498R.id.radio_enterprise)
    RadioButton radioEnterprise;

    @BindView(C0498R.id.radio_person)
    RadioButton radioPerson;
    private int userType = 0;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_identity2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    @Override // cn.highlight.work_card_write.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void initData() {
        /*
            r6 = this;
            java.lang.String r0 = "Person"
            java.lang.String r1 = "Identity"
            java.lang.String r1 = cn.highlight.core.utils.SpUtil.getString(r6, r1, r0)
            int r2 = r1.hashCode()
            r3 = -1907849355(0xffffffff8e488775, float:-2.4717123E-30)
            r4 = 0
            r5 = 1
            if (r2 == r3) goto L23
            r0 = 1190727553(0x46f90f81, float:31879.752)
            if (r2 == r0) goto L19
            goto L2b
        L19:
            java.lang.String r0 = "Enterprise"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L2b
            r0 = 0
            goto L2c
        L23:
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L2b
            r0 = 1
            goto L2c
        L2b:
            r0 = -1
        L2c:
            if (r0 == 0) goto L34
            if (r0 == r5) goto L31
            goto L36
        L31:
            r6.userType = r5
            goto L36
        L34:
            r6.userType = r4
        L36:
            r6.selectRadioButton()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.Identity2Activity.initData():void");
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

    @OnClick({C0498R.id.imgBack, C0498R.id.radio_enterprise, C0498R.id.linear_enterprise, C0498R.id.radio_person, C0498R.id.linear_person, C0498R.id.btnSave})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case C0498R.id.btnSave /* 2131296402 */:
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
            case C0498R.id.imgBack /* 2131296583 */:
                finishActivity();
                break;
            case C0498R.id.linear_enterprise /* 2131296668 */:
            case C0498R.id.radio_enterprise /* 2131296759 */:
                this.userType = 0;
                selectRadioButton();
                break;
            case C0498R.id.linear_person /* 2131296669 */:
            case C0498R.id.radio_person /* 2131296760 */:
                this.userType = 1;
                selectRadioButton();
                break;
        }
    }
}
