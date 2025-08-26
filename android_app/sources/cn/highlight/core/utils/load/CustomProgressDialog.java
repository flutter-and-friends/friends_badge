package cn.highlight.core.utils.load;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.highlight.core.C0450R;
import java.util.Objects;

/* loaded from: classes.dex */
public class CustomProgressDialog extends Dialog {
    private static CustomProgressDialog customProgressDialog;

    public CustomProgressDialog(Context context, int i) {
        super(context, i);
    }

    public static CustomProgressDialog createDialog(Context context) {
        customProgressDialog = new CustomProgressDialog(context, C0450R.style.CustomProgressDialog);
        customProgressDialog.setContentView(C0450R.layout.dialog_loading_view);
        ((Window) Objects.requireNonNull(customProgressDialog.getWindow())).getAttributes().gravity = 17;
        customProgressDialog.setCanceledOnTouchOutside(false);
        customProgressDialog.setCancelable(false);
        return customProgressDialog;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        CustomProgressDialog customProgressDialog2 = customProgressDialog;
        if (customProgressDialog2 == null) {
            return;
        }
        ((ProgressBar) customProgressDialog2.findViewById(C0450R.id.progressBar)).setVisibility(0);
    }

    public CustomProgressDialog setMessage(String str) {
        TextView textView = (TextView) customProgressDialog.findViewById(C0450R.id.tv_loadingmsg);
        if (textView != null) {
            textView.setText(str);
        }
        return customProgressDialog;
    }

    @Override // android.app.Dialog
    public void show() {
        ((Window) Objects.requireNonNull(getWindow())).setFlags(8, 8);
        super.show();
        fullScreenImmersive(getWindow().getDecorView());
        getWindow().clearFlags(8);
    }

    private void fullScreenImmersive(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setSystemUiVisibility(5888);
        }
    }
}
