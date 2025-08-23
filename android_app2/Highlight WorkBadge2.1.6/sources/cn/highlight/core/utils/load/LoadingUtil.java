package cn.highlight.core.utils.load;

import android.content.Context;

/* loaded from: classes.dex */
public class LoadingUtil {
    public CustomProgressDialog progressDialog;

    public void showProgressDialog(Context context) {
        try {
            if (this.progressDialog == null) {
                this.progressDialog = CustomProgressDialog.createDialog(context);
            }
            if (this.progressDialog.isShowing()) {
                return;
            }
            this.progressDialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showProgressDialog(Context context, String str) {
        try {
            if (this.progressDialog == null) {
                this.progressDialog = CustomProgressDialog.createDialog(context);
            }
            if (this.progressDialog.isShowing()) {
                return;
            }
            this.progressDialog.setMessage(str);
            this.progressDialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void dismissProgressDialog() {
        try {
            if (this.progressDialog == null || !this.progressDialog.isShowing()) {
                return;
            }
            this.progressDialog.dismiss();
            this.progressDialog = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
