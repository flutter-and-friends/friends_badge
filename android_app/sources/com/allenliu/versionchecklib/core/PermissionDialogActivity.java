package com.allenliu.versionchecklib.core;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity;
import com.yanzhenjie.permission.runtime.Permission;
import com.yuyh.library.imgsel.p017ui.ISListActivity;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class PermissionDialogActivity extends AllenBaseActivity {
    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showCustomDialog() {
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showDefaultDialog() {
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (ContextCompat.checkSelfPermission(this, Permission.WRITE_EXTERNAL_STORAGE) != 0) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(this, Permission.WRITE_EXTERNAL_STORAGE)) {
                ActivityCompat.requestPermissions(this, new String[]{Permission.WRITE_EXTERNAL_STORAGE}, 291);
                return;
            } else {
                ActivityCompat.requestPermissions(this, new String[]{Permission.WRITE_EXTERNAL_STORAGE}, 291);
                return;
            }
        }
        sendBroadcast(true);
    }

    private void sendBroadcast(boolean z) {
        Intent intent = new Intent();
        intent.setAction(AVersionService.PERMISSION_ACTION);
        intent.putExtra(ISListActivity.INTENT_RESULT, z);
        sendBroadcast(intent);
        CommonEvent commonEvent = new CommonEvent();
        commonEvent.setEventType(99);
        commonEvent.setSuccessful(true);
        commonEvent.setData(Boolean.valueOf(z));
        EventBus.getDefault().post(commonEvent);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 291) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            sendBroadcast(true);
        } else {
            Toast.makeText(this, getString(C0716R.string.versionchecklib_write_permission_deny), 1).show();
            sendBroadcast(false);
        }
    }
}
