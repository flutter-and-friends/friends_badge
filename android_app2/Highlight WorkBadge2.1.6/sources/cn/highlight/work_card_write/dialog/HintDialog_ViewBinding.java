package cn.highlight.work_card_write.dialog;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class HintDialog_ViewBinding implements Unbinder {
    private HintDialog target;

    public HintDialog_ViewBinding(HintDialog hintDialog) {
        this(hintDialog, hintDialog.getWindow().getDecorView());
    }

    public HintDialog_ViewBinding(HintDialog hintDialog, View view) {
        this.target = hintDialog;
        hintDialog.tvMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_msg, "field 'tvMsg'", TextView.class);
        hintDialog.llDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_dialog, "field 'llDialog'", LinearLayout.class);
        hintDialog.btnCancel = (Button) Utils.findRequiredViewAsType(view, R.id.btn_cancel, "field 'btnCancel'", Button.class);
        hintDialog.imgLine = (ImageView) Utils.findRequiredViewAsType(view, R.id.img_line, "field 'imgLine'", ImageView.class);
        hintDialog.btnSure = (Button) Utils.findRequiredViewAsType(view, R.id.btn_sure, "field 'btnSure'", Button.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        HintDialog hintDialog = this.target;
        if (hintDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        hintDialog.tvMsg = null;
        hintDialog.llDialog = null;
        hintDialog.btnCancel = null;
        hintDialog.imgLine = null;
        hintDialog.btnSure = null;
    }
}
