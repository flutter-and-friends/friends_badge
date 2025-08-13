package com.allenliu.versionchecklib.p011v2.p012ui;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public abstract class AllenBaseActivity extends AppCompatActivity {
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void receiveEvent(CommonEvent commonEvent) {
    }

    public abstract void showCustomDialog();

    public abstract void showDefaultDialog();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        setTransparent(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    private void transparentStatusBar(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().clearFlags(67108864);
            activity.getWindow().addFlags(134217728);
            activity.getWindow().setStatusBarColor(0);
            return;
        }
        activity.getWindow().addFlags(67108864);
    }

    private void setRootView(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt.setFitsSystemWindows(true);
                ((ViewGroup) childAt).setClipToPadding(true);
            }
        }
    }

    public void setTransparent(Activity activity) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        transparentStatusBar(activity);
        setRootView(activity);
    }

    protected void throwWrongIdsException() {
        throw new RuntimeException("customize dialog must use the specify id that lib gives");
    }

    protected DownloadBuilder getVersionBuilder() {
        if (VersionService.builder == null) {
            finish();
        }
        return VersionService.builder;
    }

    protected void checkForceUpdate() {
        if (getVersionBuilder() == null || getVersionBuilder().getForceUpdateListener() == null) {
            return;
        }
        getVersionBuilder().getForceUpdateListener().onShouldForceUpdate();
        finish();
    }

    protected void cancelHandler() {
        if (getVersionBuilder() == null || getVersionBuilder().getOnCancelListener() == null) {
            return;
        }
        getVersionBuilder().getOnCancelListener().onCancel();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }
}
