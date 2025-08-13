package cn.highlight.work_card_write.base;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import org.greenrobot.eventbus.Subscribe;

/* loaded from: classes.dex */
public abstract class BaseDialog extends Dialog {
    private Unbinder bind;
    public Context context;
    public Handler handler;

    protected abstract int getLayoutId();

    protected abstract void initCreate();

    public void onEventRecive(Object obj) {
    }

    public BaseDialog(Context context) {
        super(context);
        this.handler = new Handler();
        this.context = context;
    }

    public BaseDialog(Context context, int i) {
        super(context, i);
        this.handler = new Handler();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getLayoutId());
        this.bind = ButterKnife.bind(this);
        setWindowSize();
        initCreate();
    }

    protected void setWindowSize() {
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = 1.0f;
        getWindow().setLayout(-1, -1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setAttributes(attributes);
    }

    @Subscribe
    public void onEvent(Object obj) {
        onEventRecive(obj);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        EventUtil.register(this);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        EventUtil.unregister(this);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
            this.bind.unbind();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }
}
