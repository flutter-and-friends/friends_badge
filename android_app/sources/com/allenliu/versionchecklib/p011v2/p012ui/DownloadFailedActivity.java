package com.allenliu.versionchecklib.p011v2.p012ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.p011v2.AllenVersionChecker;
import com.allenliu.versionchecklib.utils.ALog;
import com.allenliu.versionchecklib.utils.AllenEventBusUtil;

/* loaded from: classes.dex */
public class DownloadFailedActivity extends AllenBaseActivity implements DialogInterface.OnCancelListener {
    private Dialog downloadFailedDialog;

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        showDowloadFailedDialog();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showDefaultDialog() {
        this.downloadFailedDialog = new AlertDialog.Builder(this).setMessage(getString(C0716R.string.versionchecklib_download_fail_retry)).setPositiveButton(getString(C0716R.string.versionchecklib_confirm), new DialogInterface.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.DownloadFailedActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DownloadFailedActivity.this.retryDownload();
            }
        }).setNegativeButton(getString(C0716R.string.versionchecklib_cancel), new DialogInterface.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.DownloadFailedActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DownloadFailedActivity downloadFailedActivity = DownloadFailedActivity.this;
                downloadFailedActivity.onCancel(downloadFailedActivity.downloadFailedDialog);
            }
        }).create();
        this.downloadFailedDialog.setCanceledOnTouchOutside(false);
        this.downloadFailedDialog.setCancelable(true);
        this.downloadFailedDialog.show();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showCustomDialog() {
        if (getVersionBuilder() != null) {
            this.downloadFailedDialog = getVersionBuilder().getCustomDownloadFailedListener().getCustomDownloadFailed(this, getVersionBuilder().getVersionBundle());
            View viewFindViewById = this.downloadFailedDialog.findViewById(C0716R.id.versionchecklib_failed_dialog_retry);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.DownloadFailedActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DownloadFailedActivity.this.retryDownload();
                    }
                });
            }
            View viewFindViewById2 = this.downloadFailedDialog.findViewById(C0716R.id.versionchecklib_failed_dialog_cancel);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.DownloadFailedActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DownloadFailedActivity downloadFailedActivity = DownloadFailedActivity.this;
                        downloadFailedActivity.onCancel(downloadFailedActivity.downloadFailedDialog);
                    }
                });
            }
            this.downloadFailedDialog.show();
        }
    }

    private void showDowloadFailedDialog() {
        AllenEventBusUtil.sendEventBus(102);
        if (getVersionBuilder() != null && getVersionBuilder().getCustomDownloadFailedListener() != null) {
            ALog.m269e("show customization failed dialog");
            showCustomDialog();
        } else {
            ALog.m269e("show default failed dialog");
            showDefaultDialog();
        }
        this.downloadFailedDialog.setOnCancelListener(this);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        ALog.m269e("on cancel");
        cancelHandler();
        checkForceUpdate();
        AllenVersionChecker.getInstance().cancelAllMission(this);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryDownload() {
        AllenEventBusUtil.sendEventBus(98);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Dialog dialog = this.downloadFailedDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.downloadFailedDialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Dialog dialog = this.downloadFailedDialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.downloadFailedDialog.show();
    }
}
