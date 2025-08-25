package cn.highlight.work_card_write.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.activity.Identity2Activity;
import cn.highlight.work_card_write.activity.InstructionActivity;
import cn.highlight.work_card_write.activity.LanguageActivity;
import cn.highlight.work_card_write.activity.UserInfoActivity;
import cn.highlight.work_card_write.base.BaseFragment;
import java.util.Objects;

/* loaded from: classes.dex */
public class MyFragment extends BaseFragment {

    @BindView(R.id.linearAbout)
    LinearLayout linearAbout;

    @BindView(R.id.linearClear)
    LinearLayout linearClear;

    @BindView(R.id.linearLanguage)
    LinearLayout linearLanguage;

    @BindView(R.id.linearNfc)
    LinearLayout linearNfc;

    @BindView(R.id.linearUse)
    LinearLayout linearUse;

    @BindView(R.id.linearUserType)
    LinearLayout linearUserType;

    @BindView(R.id.llArrowRight)
    LinearLayout llArrowRight;

    @BindView(R.id.ll_user_info)
    LinearLayout llUserInfo;

    @BindView(R.id.tv_userNmae)
    TextView tvUserNmae;

    @BindView(R.id.tvUserinfo)
    TextView tvUserinfo;

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initData() {
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected int setLayoutId() {
        return R.layout.fragment_my;
    }

    @OnClick({R.id.linearLanguage, R.id.linearUse, R.id.linearNfc, R.id.linearAbout, R.id.linearClear, R.id.linearUserType, R.id.ll_user_info, R.id.llArrowRight})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.linearAbout /* 2131296630 */:
                showAboutDialog();
                break;
            case R.id.linearLanguage /* 2131296648 */:
                launchActivity(LanguageActivity.class);
                break;
            case R.id.linearNfc /* 2131296654 */:
                ToastUtil.showToast(getContext(), getResources().getString(R.string.my_nfc_info1));
                break;
            case R.id.linearUse /* 2131296662 */:
                launchActivity(InstructionActivity.class);
                break;
            case R.id.linearUserType /* 2131296663 */:
                launchActivity(Identity2Activity.class);
                break;
            case R.id.llArrowRight /* 2131296672 */:
            case R.id.ll_user_info /* 2131296680 */:
                String string = SpUtil.getString(getContext(), Constants.Identity, Constants.Person);
                char c = 65535;
                int iHashCode = string.hashCode();
                if (iHashCode != -1907849355) {
                    if (iHashCode == 1190727553 && string.equals(Constants.Enterprise)) {
                        c = 0;
                    }
                } else if (string.equals(Constants.Person)) {
                    c = 1;
                }
                if (c == 0) {
                    launchActivity(UserInfoActivity.class);
                    break;
                }
                break;
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        String string = SpUtil.getString(getContext(), Constants.Identity, Constants.Person);
        char c = 65535;
        int iHashCode = string.hashCode();
        if (iHashCode != -1907849355) {
            if (iHashCode == 1190727553 && string.equals(Constants.Enterprise)) {
                c = 0;
            }
        } else if (string.equals(Constants.Person)) {
            c = 1;
        }
        if (c == 0) {
            this.tvUserinfo.setVisibility(0);
            this.llArrowRight.setVisibility(0);
            this.tvUserNmae.setGravity(80);
            this.tvUserNmae.setText(SpUtil.getString(getContext(), Constants.NICKNAME, ""));
            return;
        }
        if (c != 1) {
            return;
        }
        this.tvUserinfo.setVisibility(8);
        this.llArrowRight.setVisibility(8);
        this.tvUserNmae.setGravity(16);
        this.tvUserNmae.setText(R.string.my_username);
    }

    private void showAboutDialog() {
        View viewInflate = getLayoutInflater().inflate(R.layout.dialog_my_about, (ViewGroup) null);
        final Dialog dialog = new Dialog((Context) Objects.requireNonNull(getContext()), R.style.BaseDialog);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvInfo);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvVersionUpdateInfo);
        Button button = (Button) viewInflate.findViewById(R.id.btConfirm);
        dialog.setContentView(viewInflate);
        dialog.show();
        textView.setText(ExifInterface.GPS_MEASUREMENT_INTERRUPTED + Tools.getAppVersionName(getActivity()));
        textView2.setText(getResources().getString(R.string.my_about_update_info));
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$MyFragment$0_WLEG9lyYvIfWZrzOQ9U-rJPvs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
    }
}
