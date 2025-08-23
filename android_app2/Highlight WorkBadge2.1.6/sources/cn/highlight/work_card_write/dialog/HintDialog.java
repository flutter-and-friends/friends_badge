package cn.highlight.work_card_write.dialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseDialog;

/* loaded from: classes.dex */
public class HintDialog extends BaseDialog {

    @BindView(R.id.btn_cancel)
    Button btnCancel;

    @BindView(R.id.btn_sure)
    Button btnSure;
    private String btnsure;
    private String h;

    @BindView(R.id.img_line)
    ImageView imgLine;

    @BindView(R.id.ll_dialog)
    LinearLayout llDialog;
    private OnHintDialogListener mListener;

    @BindView(R.id.tv_msg)
    TextView tvMsg;

    public interface OnHintDialogListener {
        void onNoClick(View view);

        void onYesClick(View view);
    }

    @Override // cn.highlight.work_card_write.base.BaseDialog
    protected int getLayoutId() {
        return R.layout.dialog_hint;
    }

    public LinearLayout getLlDialog() {
        return this.llDialog;
    }

    public HintDialog(Context context) {
        super(context);
    }

    public HintDialog(Context context, String str) {
        super(context);
        this.h = str;
    }

    public HintDialog(Context context, String str, String str2) {
        super(context);
        this.h = str;
        this.btnsure = str2;
    }

    public HintDialog(Context context, int i) {
        super(context, i);
    }

    @Override // cn.highlight.work_card_write.base.BaseDialog
    protected void initCreate() {
        this.tvMsg.setText(this.h);
        String str = this.btnsure;
        if (str != null) {
            this.btnSure.setText(str);
        }
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.dialog.HintDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HintDialog.this.mListener == null) {
                    return;
                }
                HintDialog.this.mListener.onNoClick(view);
            }
        });
        this.btnSure.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.dialog.HintDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HintDialog.this.mListener == null) {
                    return;
                }
                HintDialog.this.mListener.onYesClick(view);
            }
        });
    }

    public void setOnHintDialogListener(OnHintDialogListener onHintDialogListener) {
        this.mListener = onHintDialogListener;
    }
}
