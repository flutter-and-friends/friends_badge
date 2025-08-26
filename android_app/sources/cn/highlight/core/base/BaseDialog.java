package cn.highlight.core.base;

import android.app.Dialog;
import android.content.Context;

/* loaded from: classes.dex */
public class BaseDialog extends Dialog {
    public BaseDialog(Context context, int i, int i2) {
        super(context, i);
        setContentView(i2);
        setCanceledOnTouchOutside(false);
    }
}
