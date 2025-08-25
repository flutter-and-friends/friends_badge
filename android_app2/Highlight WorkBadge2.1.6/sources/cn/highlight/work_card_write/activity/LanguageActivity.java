package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.sp.ConfigSp;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class LanguageActivity extends BaseActivity {

    @BindView(R.id.btnSave)
    TextView btnSave;
    private int currentLanguage = 0;

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.linearDe)
    LinearLayout linearDe;

    @BindView(R.id.linearEn)
    LinearLayout linearEn;

    @BindView(R.id.linearZh)
    LinearLayout linearZh;

    @BindView(R.id.radioDe)
    RadioButton radioDe;

    @BindView(R.id.radioEn)
    RadioButton radioEn;

    @BindView(R.id.radioZh)
    RadioButton radioZh;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_language;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    @Override // cn.highlight.work_card_write.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void initData() {
        char c;
        String lang = ConfigSp.getLang();
        int iHashCode = lang.hashCode();
        if (iHashCode != 3201) {
            if (iHashCode != 3241) {
                c = (iHashCode == 3886 && lang.equals("zh")) ? (char) 1 : (char) 65535;
            } else if (lang.equals("en")) {
                c = 0;
            }
        } else if (lang.equals("de")) {
            c = 2;
        }
        if (c == 0) {
            this.currentLanguage = 0;
        } else if (c == 1) {
            this.currentLanguage = 1;
        } else if (c == 2) {
            this.currentLanguage = 2;
        }
        selectRadioButton();
    }

    @OnClick({R.id.imgBack, R.id.linearEn, R.id.radioEn, R.id.linearZh, R.id.radioZh, R.id.linearDe, R.id.radioDe, R.id.btnSave})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btnSave /* 2131296402 */:
                int i = this.currentLanguage;
                ConfigSp.saveLang(i != 0 ? i != 1 ? i != 2 ? "" : "de" : "zh" : "en");
                EventBus.getDefault().post(BaseActivity.SWITCH_LANGUAGE);
                finishActivity();
                break;
            case R.id.imgBack /* 2131296583 */:
                finishActivity();
                break;
            case R.id.linearDe /* 2131296638 */:
            case R.id.radioDe /* 2131296756 */:
                this.currentLanguage = 2;
                selectRadioButton();
                break;
            case R.id.linearEn /* 2131296641 */:
            case R.id.radioEn /* 2131296757 */:
                this.currentLanguage = 0;
                selectRadioButton();
                break;
            case R.id.linearZh /* 2131296667 */:
            case R.id.radioZh /* 2131296758 */:
                this.currentLanguage = 1;
                selectRadioButton();
                break;
        }
    }

    private void selectRadioButton() {
        this.radioEn.setChecked(false);
        this.radioZh.setChecked(false);
        this.radioDe.setChecked(false);
        int i = this.currentLanguage;
        if (i == 0) {
            this.radioEn.setChecked(true);
        } else if (i == 1) {
            this.radioZh.setChecked(true);
        } else {
            if (i != 2) {
                return;
            }
            this.radioDe.setChecked(true);
        }
    }
}
