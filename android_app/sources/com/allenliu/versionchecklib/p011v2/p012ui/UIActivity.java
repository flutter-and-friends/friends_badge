package com.allenliu.versionchecklib.p011v2.p012ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.p011v2.AllenVersionChecker;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.builder.UIData;
import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import com.allenliu.versionchecklib.utils.ALog;
import com.allenliu.versionchecklib.utils.AllenEventBusUtil;
import com.allenliu.versionchecklib.utils.AppUtils;
import java.io.File;

/* loaded from: classes.dex */
public class UIActivity extends AllenBaseActivity implements DialogInterface.OnCancelListener {
    private boolean isDestroy = false;
    private Dialog versionDialog;

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ALog.m269e("version activity create");
        showVersionDialog();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.isDestroy = true;
        ALog.m269e("version activity destroy");
        super.onDestroy();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void receiveEvent(CommonEvent commonEvent) {
        if (commonEvent.getEventType() != 97) {
            return;
        }
        showVersionDialog();
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showDefaultDialog() {
        String title;
        String content;
        if (getVersionBuilder() != null) {
            UIData versionBundle = getVersionBuilder().getVersionBundle();
            if (versionBundle != null) {
                title = versionBundle.getTitle();
                content = versionBundle.getContent();
            } else {
                title = "提示";
                content = "检测到新版本";
            }
            AlertDialog.Builder positiveButton = new AlertDialog.Builder(this).setTitle(title).setMessage(content).setPositiveButton(getString(C0716R.string.versionchecklib_confirm), new DialogInterface.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.UIActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    UIActivity.this.dealVersionDialogCommit();
                }
            });
            if (getVersionBuilder().getForceUpdateListener() == null) {
                positiveButton.setNegativeButton(getString(C0716R.string.versionchecklib_cancel), new DialogInterface.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.UIActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        UIActivity uIActivity = UIActivity.this;
                        uIActivity.onCancel(uIActivity.versionDialog);
                    }
                });
                positiveButton.setCancelable(false);
            } else {
                positiveButton.setCancelable(false);
            }
            this.versionDialog = positiveButton.create();
            this.versionDialog.setCanceledOnTouchOutside(false);
            this.versionDialog.show();
        }
    }

    @Override // com.allenliu.versionchecklib.p011v2.p012ui.AllenBaseActivity
    public void showCustomDialog() {
        if (getVersionBuilder() != null) {
            ALog.m269e("show customization dialog");
            this.versionDialog = getVersionBuilder().getCustomVersionDialogListener().getCustomVersionDialog(this, getVersionBuilder().getVersionBundle());
            try {
                View viewFindViewById = this.versionDialog.findViewById(C0716R.id.versionchecklib_version_dialog_commit);
                if (viewFindViewById != null) {
                    ALog.m269e("view not null");
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.UIActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            ALog.m269e("click");
                            UIActivity.this.dealVersionDialogCommit();
                        }
                    });
                } else {
                    throwWrongIdsException();
                }
                View viewFindViewById2 = this.versionDialog.findViewById(C0716R.id.versionchecklib_version_dialog_cancel);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.allenliu.versionchecklib.v2.ui.UIActivity.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            UIActivity uIActivity = UIActivity.this;
                            uIActivity.onCancel(uIActivity.versionDialog);
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                throwWrongIdsException();
            }
            this.versionDialog.show();
        }
    }

    private void showVersionDialog() {
        if (getVersionBuilder() != null && getVersionBuilder().getCustomVersionDialogListener() != null) {
            showCustomDialog();
        } else {
            showDefaultDialog();
        }
        Dialog dialog = this.versionDialog;
        if (dialog != null) {
            dialog.setOnCancelListener(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Dialog dialog = this.versionDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.versionDialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Dialog dialog = this.versionDialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.versionDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealVersionDialogCommit() {
        DownloadBuilder versionBuilder = getVersionBuilder();
        if (versionBuilder != null) {
            if (versionBuilder.isSilentDownload()) {
                StringBuilder sb = new StringBuilder();
                sb.append(versionBuilder.getDownloadAPKPath());
                int i = C0716R.string.versionchecklib_download_apkname;
                Object[] objArr = new Object[1];
                objArr[0] = versionBuilder.getApkName() != null ? versionBuilder.getApkName() : getPackageName();
                sb.append(getString(i, objArr));
                AppUtils.installApk(this, new File(sb.toString()), versionBuilder.getCustomInstallListener());
                checkForceUpdate();
            } else {
                AllenEventBusUtil.sendEventBus(98);
            }
            finish();
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        cancelHandler();
        checkForceUpdate();
        AllenVersionChecker.getInstance().cancelAllMission(this);
        finish();
    }
}
