package com.allenliu.versionchecklib.p011v2.p012ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import com.allenliu.versionchecklib.utils.ALog;

/* loaded from: classes.dex */
public class DownloadingActivity extends AllenBaseActivity implements DialogInterface.OnCancelListener {
    public static final String PROGRESS = "progress";
    private Dialog downloadingDialog;
    private int currentProgress = 0;
    protected boolean isDestroy = false;

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ALog.m269e("loading activity create");
        showLoadingDialog();
    }

    public void onCancel(boolean z) {
        if (!z) {
            AllenHttp.getHttpClient().dispatcher().cancelAll();
            cancelHandler();
            checkForceUpdate();
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        onCancel(false);
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void receiveEvent(CommonEvent commonEvent) {
        switch (commonEvent.getEventType()) {
            case 100:
                this.currentProgress = ((Integer) commonEvent.getData()).intValue();
                updateProgress();
                break;
            case 101:
                onCancel(true);
                break;
            case 102:
                destroy();
                break;
        }
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showDefaultDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(C0716R.layout.downloading_layout, (ViewGroup) null);
        this.downloadingDialog = new AlertDialog.Builder(this).setTitle("").setView(viewInflate).create();
        if (getVersionBuilder().getForceUpdateListener() != null) {
            this.downloadingDialog.setCancelable(false);
        } else {
            this.downloadingDialog.setCancelable(true);
        }
        this.downloadingDialog.setCanceledOnTouchOutside(false);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(C0716R.id.f297pb);
        ((TextView) viewInflate.findViewById(C0716R.id.tv_progress)).setText(String.format(getString(C0716R.string.versionchecklib_progress), Integer.valueOf(this.currentProgress)));
        progressBar.setProgress(this.currentProgress);
        this.downloadingDialog.show();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showCustomDialog() {
        if (getVersionBuilder() != null) {
            this.downloadingDialog = getVersionBuilder().getCustomDownloadingDialogListener().getCustomDownloadingDialog(this, this.currentProgress, getVersionBuilder().getVersionBundle());
            View viewFindViewById = this.downloadingDialog.findViewById(C0716R.id.versionchecklib_loading_dialog_cancel);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.DownloadingActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DownloadingActivity.this.onCancel(false);
                    }
                });
            }
            this.downloadingDialog.show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        destroyWithOutDismiss();
        this.isDestroy = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isDestroy = false;
        Dialog dialog = this.downloadingDialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.downloadingDialog.show();
    }

    private void destroyWithOutDismiss() {
        Dialog dialog = this.downloadingDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.downloadingDialog.dismiss();
    }

    private void destroy() {
        ALog.m269e("loading activity destroy");
        Dialog dialog = this.downloadingDialog;
        if (dialog != null && dialog.isShowing()) {
            this.downloadingDialog.dismiss();
        }
        finish();
    }

    private void updateProgress() {
        if (this.isDestroy) {
            return;
        }
        if (getVersionBuilder() != null && getVersionBuilder().getCustomDownloadingDialogListener() != null) {
            getVersionBuilder().getCustomDownloadingDialogListener().updateUI(this.downloadingDialog, this.currentProgress, getVersionBuilder().getVersionBundle());
            return;
        }
        ((ProgressBar) this.downloadingDialog.findViewById(C0716R.id.f297pb)).setProgress(this.currentProgress);
        ((TextView) this.downloadingDialog.findViewById(C0716R.id.tv_progress)).setText(String.format(getString(C0716R.string.versionchecklib_progress), Integer.valueOf(this.currentProgress)));
        if (this.downloadingDialog.isShowing()) {
            return;
        }
        this.downloadingDialog.show();
    }

    private void showLoadingDialog() {
        ALog.m269e("show loading");
        if (this.isDestroy) {
            return;
        }
        if (getVersionBuilder() != null && getVersionBuilder().getCustomDownloadingDialogListener() != null) {
            showCustomDialog();
        } else {
            showDefaultDialog();
        }
        this.downloadingDialog.setOnCancelListener(this);
    }
}
