package com.yanzhenjie.permission.bridge;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import com.yanzhenjie.permission.overlay.setting.AlertWindowSettingPage;
import com.yanzhenjie.permission.overlay.setting.OverlaySettingPage;
import com.yanzhenjie.permission.source.ActivitySource;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public final class BridgeActivity extends Activity {
    private static final String KEY_PERMISSIONS = "KEY_PERMISSIONS";
    private static final String KEY_TYPE = "KEY_TYPE";

    static void requestAppDetails(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 1);
        source.startActivity(intent);
    }

    static void requestPermission(Source source, String[] strArr) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 2);
        intent.putExtra(KEY_PERMISSIONS, strArr);
        source.startActivity(intent);
    }

    static void requestInstall(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 3);
        source.startActivity(intent);
    }

    static void requestOverlay(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 4);
        source.startActivity(intent);
    }

    static void requestAlertWindow(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 5);
        source.startActivity(intent);
    }

    static void requestNotify(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 6);
        source.startActivity(intent);
    }

    static void requestNotificationListener(Source source) {
        Intent intent = new Intent(source.getContext(), (Class<?>) BridgeActivity.class);
        intent.putExtra(KEY_TYPE, 7);
        source.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
        }
        Intent intent = getIntent();
        switch (intent.getIntExtra(KEY_TYPE, -1)) {
            case 1:
                Intent intent2 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent2.setData(Uri.fromParts("package", getPackageName(), null));
                startActivityForResult(intent2, 1);
                break;
            case 2:
                requestPermissions(intent.getStringArrayExtra(KEY_PERMISSIONS), 2);
                break;
            case 3:
                Intent intent3 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                intent3.setData(Uri.fromParts("package", getPackageName(), null));
                startActivityForResult(intent3, 3);
                break;
            case 4:
                new OverlaySettingPage(new ActivitySource(this)).start(4);
                break;
            case 5:
                new AlertWindowSettingPage(new ActivitySource(this)).start(5);
                break;
            case 6:
                Intent intent4 = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
                intent4.putExtra("android.provider.extra.APP_PACKAGE", getPackageName());
                startActivityForResult(intent4, 6);
                break;
            case 7:
                startActivityForResult(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"), 6);
                break;
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Messenger.send(this);
        finish();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        Messenger.send(this);
        finish();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
