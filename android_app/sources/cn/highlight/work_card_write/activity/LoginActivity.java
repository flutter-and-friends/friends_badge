package cn.highlight.work_card_write.activity;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.ScreenUtil;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.adapter.MenuAdapter;
import cn.highlight.work_card_write.api.ApiResult;
import cn.highlight.work_card_write.api.ApiUtil;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.entity.LoginRes;
import cn.highlight.work_card_write.entity.Menu;
import cn.highlight.work_card_write.p006sp.ConfigSp;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class LoginActivity extends BaseActivity {

    @BindView(C0498R.id.btn_login)
    TextView btnLogin;

    @BindView(C0498R.id.edit_account)
    EditText editAccount;

    @BindView(C0498R.id.edit_password)
    EditText editPassword;

    @BindView(C0498R.id.iv_arrow)
    ImageView ivArrow;

    @BindView(C0498R.id.ll_language)
    LinearLayout llLanguage;

    @BindView(C0498R.id.ll_person)
    LinearLayout llPerson;

    @BindView(C0498R.id.ll_service)
    LinearLayout llService;
    private MenuAdapter menuLanguageAdapter;
    private List<Menu> menuLanguageList;
    private PopupWindow popLanguage;

    @BindView(C0498R.id.tv_language)
    TextView tvLanguage;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_login;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        setImmersionBar(false, true, "");
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        initMenu();
        this.editAccount.setText(SpUtil.getString(this, Constants.ACCOUNT, ""));
        this.editPassword.setText(SpUtil.getString(this, Constants.PASSWORD, ""));
        this.editPassword.setTypeface(null);
    }

    public void initMenu() {
        this.menuLanguageList = new ArrayList();
        this.menuLanguageList.add(new Menu(0, "English"));
        this.menuLanguageList.add(new Menu(1, "Deutsch"));
        this.menuLanguageList.add(new Menu(2, "中文"));
        this.menuLanguageAdapter = new MenuAdapter(this, this.menuLanguageList);
        this.menuLanguageAdapter.setOnItemClickListener(new MenuAdapter.OnItemClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$LoginActivity$BIVNy7jrcMZ6WeqN6UCL7QwHEDk
            @Override // cn.highlight.work_card_write.adapter.MenuAdapter.OnItemClickListener
            public final void onItemClick(int i) {
                this.f$0.lambda$initMenu$0$LoginActivity(i);
            }
        });
    }

    public /* synthetic */ void lambda$initMenu$0$LoginActivity(int i) {
        this.menuLanguageAdapter.sign(this.menuLanguageList.get(i).getId());
        this.menuLanguageAdapter.notifyDataSetChanged();
        this.tvLanguage.setText(this.menuLanguageList.get(i).getContent());
        ConfigSp.saveLang(i != 0 ? i != 1 ? i != 2 ? "" : "zh" : "de" : "en");
        EventBus.getDefault().post(BaseActivity.SWITCH_LANGUAGE);
        PopupWindow popupWindow = this.popLanguage;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    private void showOrgPop(View view) {
        this.popLanguage = new PopupWindow(this);
        this.popLanguage.setWidth(view.getWidth() >= ScreenUtil.DPtoPX(120, this) ? view.getWidth() : ScreenUtil.DPtoPX(120, this));
        if (this.menuLanguageList.size() > 6) {
            this.popLanguage.setHeight(ScreenUtil.DPtoPX(180, this));
        } else {
            this.popLanguage.setHeight(-2);
        }
        this.popLanguage.setAnimationStyle(C0498R.style.PopupWindowAnimStyle);
        this.popLanguage.setFocusable(true);
        this.popLanguage.setTouchable(true);
        this.popLanguage.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(getApplicationContext(), C0498R.color.white)));
        View viewInflate = LayoutInflater.from(this).inflate(C0498R.layout.pop_select_menu, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(C0498R.id.rvDevice);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(this.menuLanguageAdapter);
        this.popLanguage.setContentView(viewInflate);
        if (!this.popLanguage.isShowing()) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            this.popLanguage.showAtLocation(view, 0, iArr[0], iArr[1] + view.getHeight());
            this.ivArrow.setRotation(180.0f);
        }
        this.popLanguage.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: cn.highlight.work_card_write.activity.LoginActivity.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                LoginActivity.this.ivArrow.setRotation(0.0f);
            }
        });
    }

    private void login() {
        ApiUtil.getInstance().login(this, Tools.getText(this.editAccount), Tools.getText(this.editPassword), new ApiResult<LoginRes>() { // from class: cn.highlight.work_card_write.activity.LoginActivity.2
            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onSuss(LoginRes loginRes) {
                if (loginRes == null) {
                    ToastUtil.showToast(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(C0498R.string.requestMsg1));
                    return;
                }
                if ("200".equals(loginRes.getStatus())) {
                    LoginActivity.this.saveUserInfo();
                    try {
                        Constants.organizationId = loginRes.getData().getUser().getOrganizationId();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SpUtil.putString(LoginActivity.this, Constants.Identity, Constants.Enterprise);
                    SpUtil.putString(LoginActivity.this, Constants.NICKNAME, loginRes.getData().getUser().getNickName());
                    ToastUtil.showToast(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(C0498R.string.login_success));
                    LoginActivity.this.launchActivity(HomeActivity.class);
                    if (HomeActivity.getInstance() != null) {
                        HomeActivity.getInstance().changeFrag(0);
                    }
                    LoginActivity.this.finishActivity();
                    return;
                }
                if ("500".equals(loginRes.getStatus())) {
                    ToastUtil.showToast(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(C0498R.string.login_error));
                } else {
                    loginRes.getMsg();
                    ToastUtil.showToast(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(C0498R.string.request_fail));
                }
            }

            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onFail(String str, String str2) {
                ToastUtil.showToast(LoginActivity.this.getApplicationContext(), LoginActivity.this.getResources().getString(C0498R.string.request_fail) + "\n" + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveUserInfo() {
        try {
            SpUtil.putString(this, Constants.ACCOUNT, Tools.getText(this.editAccount));
            SpUtil.putString(this, Constants.PASSWORD, Tools.getText(this.editPassword));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClick({C0498R.id.ll_language, C0498R.id.btn_login, C0498R.id.ll_person, C0498R.id.ll_service})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case C0498R.id.btn_login /* 2131296408 */:
                if (Tools.isNull(this.editAccount)) {
                    ToastUtil.showToast(getApplicationContext(), getString(C0498R.string.login_input_acc));
                    break;
                } else if (Tools.isNull(this.editPassword)) {
                    ToastUtil.showToast(getApplicationContext(), getString(C0498R.string.login_input_pwd));
                    break;
                } else {
                    login();
                    break;
                }
            case C0498R.id.ll_language /* 2131296674 */:
                showOrgPop(this.llLanguage);
                break;
            case C0498R.id.ll_person /* 2131296677 */:
                launchActivity(HomeActivity.class);
                SpUtil.putString(this, Constants.Identity, Constants.Person);
                if (HomeActivity.getInstance() != null) {
                    HomeActivity.getInstance().changeFrag(0);
                }
                finishActivity();
                break;
            case C0498R.id.ll_service /* 2131296678 */:
                launchActivity(ServiceActivity.class);
                break;
        }
    }
}
