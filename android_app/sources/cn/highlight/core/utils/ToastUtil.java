package cn.highlight.core.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import cn.highlight.core.C0450R;
import cn.highlight.core.view.AlertDialog;

/* loaded from: classes.dex */
public class ToastUtil {
    private static Toast mToast;
    private static ToastUtil toastUtil;

    static /* synthetic */ void lambda$showDialog$0(View view) {
    }

    private ToastUtil() {
    }

    public static ToastUtil getInterface() {
        if (toastUtil == null) {
            toastUtil = new ToastUtil();
        }
        return toastUtil;
    }

    public static void showToast(Context context, String str, int i) {
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, str, i);
            mToast.setView(getView(context, str));
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, str, i);
        mToast.setView(getView(context, str));
        mToast.show();
    }

    public static void showToast(Context context, String str) {
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, str, 0);
            mToast.setView(getView(context, str));
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, str, 0);
        mToast.setView(getView(context, str));
        mToast.show();
    }

    public static void showToast(Context context, int i) {
        if (context == null) {
            return;
        }
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, context.getText(i), 0);
            mToast.setView(getView(context, i));
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, context.getText(i), 0);
        mToast.setView(getView(context, i));
        mToast.show();
    }

    public static void showCentreToast(Context context, String str, int i) {
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, str, i);
            mToast.setView(getCentreView(context, str));
            mToast.setGravity(17, 0, 0);
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, str, i);
        mToast.setView(getCentreView(context, str));
        mToast.setGravity(17, 0, 0);
        mToast.show();
    }

    public static void showCentreToast(Context context, String str) {
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, str, 0);
            mToast.setView(getCentreView(context, str));
            mToast.setGravity(17, 0, 0);
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, str, 0);
        mToast.setView(getCentreView(context, str));
        mToast.setGravity(17, 0, 0);
        mToast.show();
    }

    public static void showCentreToast(Context context, int i) {
        Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
            mToast = Toast.makeText(context, context.getText(i), 0);
            mToast.setView(getCentreView(context, i));
            mToast.setGravity(17, 0, 0);
            mToast.show();
            return;
        }
        mToast = Toast.makeText(context, context.getText(i), 0);
        mToast.setView(getCentreView(context, i));
        mToast.setGravity(17, 0, 0);
        mToast.show();
    }

    private static View getView(Context context, String str) {
        View viewInflate = LayoutInflater.from(context).inflate(C0450R.layout.item_toast, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(C0450R.id.tv_toast)).setText(str);
        return viewInflate;
    }

    private static View getView(Context context, int i) {
        View viewInflate = LayoutInflater.from(context).inflate(C0450R.layout.item_toast, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(C0450R.id.tv_toast)).setText(context.getResources().getString(i));
        return viewInflate;
    }

    private static View getCentreView(Context context, String str) {
        View viewInflate = LayoutInflater.from(context).inflate(C0450R.layout.item_toast_centre, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(C0450R.id.tv_toast)).setText(str);
        return viewInflate;
    }

    private static View getCentreView(Context context, int i) {
        View viewInflate = LayoutInflater.from(context).inflate(C0450R.layout.item_toast_centre, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(C0450R.id.tv_toast)).setText(context.getResources().getString(i));
        return viewInflate;
    }

    public static void showDialog(Context context, String str) {
        new AlertDialog(context).builder().setMsg(str).setNegativeButton("确定", new View.OnClickListener() { // from class: cn.highlight.core.utils.-$$Lambda$ToastUtil$hPiScCZA5bBA-9n0d_G3yPhfMUo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToastUtil.lambda$showDialog$0(view);
            }
        }).show();
    }
}
