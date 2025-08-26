package cn.highlight.core.view;

import android.app.Dialog;
import android.content.Context;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.highlight.core.C0450R;

/* loaded from: classes.dex */
public class AlertDialog {
    private Button btn_neg;
    private Button btn_pos;
    private Context context;
    private Dialog dialog;
    private Display display;
    private ImageView img_line;
    private LinearLayout lLayout_bg;
    private TextView txt_hint;
    private TextView txt_msg;
    private TextView txt_title;
    private boolean showTitle = false;
    private boolean showMsg = false;
    private boolean showPosBtn = false;
    private boolean showNegBtn = false;

    public AlertDialog(Context context) {
        this.context = context;
        this.display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    public AlertDialog builder() {
        View viewInflate = LayoutInflater.from(this.context).inflate(C0450R.layout.view_alertdialog, (ViewGroup) null);
        this.lLayout_bg = (LinearLayout) viewInflate.findViewById(C0450R.id.lLayout_bg);
        this.txt_title = (TextView) viewInflate.findViewById(C0450R.id.txt_title);
        this.txt_title.setVisibility(8);
        this.txt_msg = (TextView) viewInflate.findViewById(C0450R.id.txt_msg);
        this.txt_msg.setVisibility(8);
        this.txt_hint = (TextView) viewInflate.findViewById(C0450R.id.txt_hint);
        this.txt_hint.setVisibility(8);
        this.btn_neg = (Button) viewInflate.findViewById(C0450R.id.btn_neg);
        this.btn_neg.setVisibility(8);
        this.btn_pos = (Button) viewInflate.findViewById(C0450R.id.btn_pos);
        this.btn_pos.setVisibility(8);
        this.img_line = (ImageView) viewInflate.findViewById(C0450R.id.img_line);
        this.img_line.setVisibility(8);
        this.dialog = new Dialog(this.context, C0450R.style.AlertDialogStyle);
        this.dialog.setContentView(viewInflate);
        this.dialog.setCancelable(false);
        this.lLayout_bg.setLayoutParams(new FrameLayout.LayoutParams((int) (this.display.getWidth() * 0.85d), -2));
        return this;
    }

    public AlertDialog setTitle(String str) {
        this.showTitle = true;
        if ("".equals(str)) {
            this.txt_title.setText("标题");
        } else {
            this.txt_title.setText(str);
        }
        return this;
    }

    public AlertDialog setMsg(String str) {
        this.showMsg = true;
        if ("".equals(str)) {
            this.txt_msg.setText("内容");
        } else {
            this.txt_msg.setText(str);
        }
        return this;
    }

    public AlertDialog setMsgAndHint(String str, String str2) {
        this.showMsg = true;
        this.txt_hint.setVisibility(0);
        if ("".equals(str)) {
            this.txt_msg.setText("内容");
        } else {
            this.txt_msg.setText(str);
        }
        this.txt_hint.setText(str2);
        return this;
    }

    public AlertDialog setCancelable(boolean z) {
        this.dialog.setCancelable(z);
        return this;
    }

    public AlertDialog setPositiveButton(String str, final View.OnClickListener onClickListener) {
        this.showPosBtn = true;
        if ("".equals(str)) {
            this.btn_pos.setText("确定");
        } else {
            this.btn_pos.setText(str);
        }
        this.btn_pos.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.AlertDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    public AlertDialog setNegativeButton(String str, final View.OnClickListener onClickListener) {
        this.showNegBtn = true;
        if ("".equals(str)) {
            this.btn_neg.setText("取消");
        } else {
            this.btn_neg.setText(str);
        }
        this.btn_neg.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.AlertDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    private void setLayout() {
        if (!this.showTitle && !this.showMsg) {
            this.txt_title.setText("提示");
            this.txt_title.setVisibility(0);
        }
        if (this.showTitle) {
            this.txt_title.setVisibility(0);
        }
        if (this.showMsg) {
            this.txt_msg.setVisibility(0);
        }
        if (!this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setText("确定");
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(C0450R.drawable.alertdialog_single_selector);
            this.btn_pos.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.AlertDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AlertDialog.this.dialog.dismiss();
                }
            });
        }
        if (this.showPosBtn && this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(C0450R.drawable.alertdialog_right_selector);
            this.btn_neg.setVisibility(0);
            this.btn_neg.setBackgroundResource(C0450R.drawable.alertdialog_left_selector);
            this.img_line.setVisibility(0);
        }
        if (this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(C0450R.drawable.alertdialog_single_selector);
        }
        if (this.showPosBtn || !this.showNegBtn) {
            return;
        }
        this.btn_neg.setVisibility(0);
        this.btn_neg.setBackgroundResource(C0450R.drawable.alertdialog_single_selector);
    }

    public void show() {
        setLayout();
        this.dialog.show();
    }
}
