package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.MyApplication;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.util.DBManagerUtil;
import com.gyf.barlibrary.BarHide;
import com.gyf.barlibrary.ImmersionBar;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class LauncherActivity extends BaseActivity {
    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.act_launcher;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ImmersionBar.with(this).hideBar(BarHide.FLAG_HIDE_NAVIGATION_BAR).init();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        step1();
    }

    private void step1() throws IOException {
        if (Constants.isPermissionsPass) {
            step2();
        } else {
            setOnPermissionsGetListener(new BaseActivity.OnPermissionsGetListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$LauncherActivity$b5I3-TJt1JrYIE9C1axvnZBVYzA
                @Override // cn.highlight.work_card_write.base.BaseActivity.OnPermissionsGetListener
                public final void onPermissionsGet(boolean z) throws IOException {
                    this.f$0.lambda$step1$0$LauncherActivity(z);
                }
            });
            checkAllPermissions();
        }
    }

    public /* synthetic */ void lambda$step1$0$LauncherActivity(boolean z) throws IOException {
        if (z) {
            step2();
        }
    }

    private void step2() throws IOException {
        MyApplication.setupDatabase(getApplicationContext());
        DBManagerUtil.setDB_NAME(this);
        step3();
    }

    private void step3() {
        if (SpUtil.getBoolean(this, Constants.FIRST_USE, true)) {
            launchActivity(IdentityActivity.class);
        } else {
            launchActivity(HomeActivity.class);
        }
        finish();
    }
}
