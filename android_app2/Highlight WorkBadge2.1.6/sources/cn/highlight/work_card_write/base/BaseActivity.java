package cn.highlight.work_card_write.base;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import androidx.fragment.app.FragmentActivity;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cn.highlight.core.utils.AppManager;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.sp.ConfigSp;
import com.gyf.barlibrary.ImmersionBar;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.AndPermission;
import com.yanzhenjie.permission.runtime.Permission;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public abstract class BaseActivity extends FragmentActivity {
    public static final String SWITCH_LANGUAGE = "Language";
    Activity c;
    private InputMethodManager imm;
    protected Unbinder mBind;
    protected ImmersionBar mImmersionBar;
    private OnPermissionsGetListener onPermissionsGetListener;
    public boolean isBackPressed = false;
    private long lastClickTime = 0;
    public boolean isCheckPermissions = true;

    public interface OnPermissionsGetListener {
        void onPermissionsGet(boolean z);
    }

    protected abstract void initData();

    protected abstract void initViews(Bundle bundle);

    protected abstract int setLayoutId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        AppManager.getAppManager().addActivity(this);
        setContentView(setLayoutId());
        this.mBind = ButterKnife.bind(this);
        this.c = this;
        setImmersionBar(true, true, "#FFFFFF");
        getWindow().setSoftInputMode(32);
        initViews(bundle);
        initData();
        EventUtil.register(this);
        setLanguage();
    }

    public void setImmersionBar(boolean z, String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.mImmersionBar = ImmersionBar.with(this);
        this.mImmersionBar.fitsSystemWindows(z);
        if (!Tools.isNull(str)) {
            this.mImmersionBar.statusBarColor(str);
        }
        this.mImmersionBar.init();
    }

    public void setImmersionBar(boolean z, boolean z2, String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.mImmersionBar = ImmersionBar.with(this);
        this.mImmersionBar.fitsSystemWindows(z);
        this.mImmersionBar.transparentStatusBar();
        this.mImmersionBar.statusBarAlpha(1.0f);
        if (!Tools.isNull(str)) {
            this.mImmersionBar.statusBarColor(str);
        }
        this.mImmersionBar.statusBarDarkFont(z2, 0.2f);
        this.mImmersionBar.navigationBarColor("#ffffff");
        this.mImmersionBar.init();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && isFastDoubleClick()) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean isFastDoubleClick() {
        long j = 0;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            j = jCurrentTimeMillis - this.lastClickTime;
            this.lastClickTime = jCurrentTimeMillis;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j <= 300;
    }

    public void doubleBack() {
        if (!this.isBackPressed) {
            this.isBackPressed = true;
            ToastUtil.showToast(getApplicationContext(), getString(R.string.double_click_exit));
        } else {
            Constants.isAppExit = true;
            AppManager.getAppManager().appExit();
            System.exit(0);
        }
        new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.base.-$$Lambda$BaseActivity$8sciYrmdVQKqItDOgCFsxQZfnGQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doubleBack$0$BaseActivity();
            }
        }, 2000L);
    }

    public /* synthetic */ void lambda$doubleBack$0$BaseActivity() {
        this.isBackPressed = false;
    }

    public void setView(View view, boolean z) {
        if (z) {
            view.setEnabled(true);
            view.setBackgroundResource(R.drawable.button_bg);
        } else {
            view.setEnabled(false);
            view.setBackgroundResource(R.drawable.button_bg_h2);
        }
    }

    public void launchActivity(Class<?> cls) {
        startActivity(new Intent(this, cls));
        super.overridePendingTransition(R.anim.in_from_right, R.anim.in_from_right_abit);
    }

    public void launchActivity(Class<?> cls, Bundle bundle) {
        Intent intent = new Intent(this, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivity(intent, bundle);
        super.overridePendingTransition(R.anim.in_from_right, R.anim.in_from_right_abit);
    }

    public void launchActivityForResult(Class<?> cls, Bundle bundle, int i) {
        Intent intent = new Intent(this, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivityForResult(intent, i);
        super.overridePendingTransition(R.anim.in_from_right, R.anim.in_from_right_abit);
    }

    public void finishActivity() {
        hideSoftKeyBoard();
        super.finish();
        super.overridePendingTransition(R.anim.out_to_right_abit, R.anim.out_to_right);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            finishActivity();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public void hideSoftKeyBoard() {
        InputMethodManager inputMethodManager;
        View currentFocus = getCurrentFocus();
        if (this.imm == null) {
            this.imm = (InputMethodManager) getSystemService("input_method");
        }
        if (currentFocus == null || (inputMethodManager = this.imm) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
    }

    public void hideSoftKeyBoard(View view) {
        InputMethodManager inputMethodManager;
        if (this.imm == null) {
            this.imm = (InputMethodManager) getSystemService("input_method");
        }
        if (view == null || (inputMethodManager = this.imm) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Unbinder unbinder = this.mBind;
        if (unbinder != null) {
            unbinder.unbind();
        }
        this.imm = null;
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar != null) {
            immersionBar.destroy();
        }
        EventUtil.unregister(this);
    }

    public void setOnPermissionsGetListener(OnPermissionsGetListener onPermissionsGetListener) {
        this.onPermissionsGetListener = onPermissionsGetListener;
    }

    public void checkAllPermissions() {
        String[] strArr;
        if (!this.isCheckPermissions || Constants.isPermissionsPass) {
            return;
        }
        this.isCheckPermissions = false;
        if (Build.VERSION.SDK_INT < 23) {
            Constants.isPermissionsPass = true;
            OnPermissionsGetListener onPermissionsGetListener = this.onPermissionsGetListener;
            if (onPermissionsGetListener != null) {
                onPermissionsGetListener.onPermissionsGet(true);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            strArr = new String[]{Permission.READ_EXTERNAL_STORAGE, Permission.WRITE_EXTERNAL_STORAGE, Permission.ACCESS_FINE_LOCATION, Permission.ACCESS_COARSE_LOCATION, Permission.CAMERA, "android.permission.NFC", "android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"};
        } else {
            strArr = new String[]{Permission.READ_EXTERNAL_STORAGE, Permission.WRITE_EXTERNAL_STORAGE, Permission.ACCESS_FINE_LOCATION, Permission.ACCESS_COARSE_LOCATION, Permission.CAMERA, "android.permission.NFC"};
        }
        AndPermission.with((Activity) this).runtime().permission(strArr).onGranted(new Action() { // from class: cn.highlight.work_card_write.base.-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI
            @Override // com.yanzhenjie.permission.Action
            public final void onAction(Object obj) {
                this.f$0.lambda$checkAllPermissions$1$BaseActivity((List) obj);
            }
        }).onDenied(new Action() { // from class: cn.highlight.work_card_write.base.-$$Lambda$BaseActivity$_qQ5qAIEzDLNH1rEJYOhLxcZfTM
            @Override // com.yanzhenjie.permission.Action
            public final void onAction(Object obj) {
                this.f$0.lambda$checkAllPermissions$2$BaseActivity((List) obj);
            }
        }).start();
    }

    public /* synthetic */ void lambda$checkAllPermissions$1$BaseActivity(List list) {
        Constants.isPermissionsPass = true;
        OnPermissionsGetListener onPermissionsGetListener = this.onPermissionsGetListener;
        if (onPermissionsGetListener != null) {
            onPermissionsGetListener.onPermissionsGet(true);
        }
    }

    public /* synthetic */ void lambda$checkAllPermissions$2$BaseActivity(List list) {
        if (Constants.isPermissionsPass) {
            return;
        }
        showNormalDialog(this);
    }

    private void showNormalDialog(final Context context) {
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle(getResources().getString(R.string.permission_title)).setMessage(getResources().getString(R.string.permission_msg)).setPositiveButton(getResources().getString(R.string.permission_yes), (DialogInterface.OnClickListener) null).setNegativeButton(getResources().getString(R.string.permission_no), (DialogInterface.OnClickListener) null).setCancelable(false).create();
        alertDialogCreate.show();
        Button button = alertDialogCreate.getButton(-1);
        button.setTextColor(getResources().getColor(R.color.device));
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.base.-$$Lambda$BaseActivity$BVZUTW83IjrX7TcXGfM07vr7yyc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNormalDialog$3$BaseActivity(alertDialogCreate, context, view);
            }
        });
        Button button2 = alertDialogCreate.getButton(-2);
        button2.setTextColor(getResources().getColor(R.color.base_cancel_color));
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.base.-$$Lambda$BaseActivity$EYVAICj0ButgkJwNPREE9kzusns
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppManager.getAppManager().appExit();
            }
        });
    }

    public /* synthetic */ void lambda$showNormalDialog$3$BaseActivity(AlertDialog alertDialog, Context context, View view) {
        alertDialog.dismiss();
        this.isCheckPermissions = true;
        getAppDetailSettingIntent(context);
    }

    public void getAppDetailSettingIntent(Context context) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.iqoo.secure");
            if (launchIntentForPackage != null) {
                context.startActivity(launchIntentForPackage);
                return;
            }
            Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage("com.oppo.safe");
            if (launchIntentForPackage2 != null) {
                context.startActivity(launchIntentForPackage2);
            } else {
                context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setLanguage() {
        Locale locale = new Locale(ConfigSp.getLang());
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        configuration.locale = locale;
        resources.updateConfiguration(configuration, displayMetrics);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(String str) {
        if (((str.hashCode() == -1548945544 && str.equals(SWITCH_LANGUAGE)) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        setLanguage();
        recreate();
    }
}
