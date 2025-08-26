package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import com.blankj.utilcode.util.Utils;
import com.darsh.multipleimageselect.helpers.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class ToastUtils {
    private static final String NULL = "null";
    private static IToast iToast;
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    private static int sGravity = -1;
    private static int sXOffset = -1;
    private static int sYOffset = -1;
    private static final int COLOR_DEFAULT = -16777217;
    private static int sBgColor = COLOR_DEFAULT;
    private static int sBgResource = -1;
    private static int sMsgColor = COLOR_DEFAULT;
    private static int sMsgTextSize = -1;

    interface IToast {
        void cancel();

        View getView();

        void setDuration(int i);

        void setGravity(int i, int i2, int i3);

        void setText(int i);

        void setText(CharSequence charSequence);

        void setView(View view);

        void show();
    }

    private ToastUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void setGravity(int i, int i2, int i3) {
        sGravity = i;
        sXOffset = i2;
        sYOffset = i3;
    }

    public static void setBgColor(int i) {
        sBgColor = i;
    }

    public static void setBgResource(int i) {
        sBgResource = i;
    }

    public static void setMsgColor(int i) {
        sMsgColor = i;
    }

    public static void setMsgTextSize(int i) {
        sMsgTextSize = i;
    }

    public static void showShort(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = NULL;
        }
        show(charSequence, 0);
    }

    public static void showShort(int i) {
        show(i, 0);
    }

    public static void showShort(int i, Object... objArr) {
        show(i, 0, objArr);
    }

    public static void showShort(String str, Object... objArr) {
        show(str, 0, objArr);
    }

    public static void showLong(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = NULL;
        }
        show(charSequence, 1);
    }

    public static void showLong(int i) {
        show(i, 1);
    }

    public static void showLong(int i, Object... objArr) {
        show(i, 1, objArr);
    }

    public static void showLong(String str, Object... objArr) {
        show(str, 1, objArr);
    }

    public static View showCustomShort(int i) {
        View view = getView(i);
        show(view, 0);
        return view;
    }

    public static View showCustomLong(int i) {
        View view = getView(i);
        show(view, 1);
        return view;
    }

    public static void cancel() {
        IToast iToast2 = iToast;
        if (iToast2 != null) {
            iToast2.cancel();
        }
    }

    private static void show(int i, int i2) {
        try {
            show(Utils.getApp().getResources().getText(i), i2);
        } catch (Exception unused) {
            show(String.valueOf(i), i2);
        }
    }

    private static void show(int i, int i2, Object... objArr) {
        try {
            show(String.format(Utils.getApp().getResources().getText(i).toString(), objArr), i2);
        } catch (Exception unused) {
            show(String.valueOf(i), i2);
        }
    }

    private static void show(String str, int i, Object... objArr) {
        String str2;
        String str3 = NULL;
        if (str != null && (str2 = String.format(str, objArr)) != null) {
            str3 = str2;
        }
        show(str3, i);
    }

    private static void show(final CharSequence charSequence, final int i) {
        HANDLER.post(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ToastUtils.cancel();
                IToast unused = ToastUtils.iToast = ToastFactory.makeToast(Utils.getApp(), charSequence, i);
                TextView textView = (TextView) ToastUtils.iToast.getView().findViewById(R.id.message);
                if (ToastUtils.sMsgColor != ToastUtils.COLOR_DEFAULT) {
                    textView.setTextColor(ToastUtils.sMsgColor);
                }
                if (ToastUtils.sMsgTextSize != -1) {
                    textView.setTextSize(ToastUtils.sMsgTextSize);
                }
                if (ToastUtils.sGravity != -1 || ToastUtils.sXOffset != -1 || ToastUtils.sYOffset != -1) {
                    ToastUtils.iToast.setGravity(ToastUtils.sGravity, ToastUtils.sXOffset, ToastUtils.sYOffset);
                }
                ToastUtils.setBg(textView);
                ToastUtils.iToast.show();
            }
        });
    }

    private static void show(final View view, final int i) {
        HANDLER.post(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.2
            @Override // java.lang.Runnable
            public void run() {
                ToastUtils.cancel();
                IToast unused = ToastUtils.iToast = ToastFactory.newToast(Utils.getApp());
                ToastUtils.iToast.setView(view);
                ToastUtils.iToast.setDuration(i);
                if (ToastUtils.sGravity != -1 || ToastUtils.sXOffset != -1 || ToastUtils.sYOffset != -1) {
                    ToastUtils.iToast.setGravity(ToastUtils.sGravity, ToastUtils.sXOffset, ToastUtils.sYOffset);
                }
                ToastUtils.setBg();
                ToastUtils.iToast.show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setBg() {
        if (sBgResource != -1) {
            iToast.getView().setBackgroundResource(sBgResource);
            return;
        }
        if (sBgColor != COLOR_DEFAULT) {
            View view = iToast.getView();
            Drawable background = view.getBackground();
            if (background != null) {
                background.setColorFilter(new PorterDuffColorFilter(sBgColor, PorterDuff.Mode.SRC_IN));
            } else if (Build.VERSION.SDK_INT >= 16) {
                view.setBackground(new ColorDrawable(sBgColor));
            } else {
                view.setBackgroundDrawable(new ColorDrawable(sBgColor));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setBg(TextView textView) {
        if (sBgResource != -1) {
            iToast.getView().setBackgroundResource(sBgResource);
            textView.setBackgroundColor(0);
            return;
        }
        if (sBgColor != COLOR_DEFAULT) {
            View view = iToast.getView();
            Drawable background = view.getBackground();
            Drawable background2 = textView.getBackground();
            if (background != null && background2 != null) {
                background.setColorFilter(new PorterDuffColorFilter(sBgColor, PorterDuff.Mode.SRC_IN));
                textView.setBackgroundColor(0);
            } else if (background != null) {
                background.setColorFilter(new PorterDuffColorFilter(sBgColor, PorterDuff.Mode.SRC_IN));
            } else if (background2 != null) {
                background2.setColorFilter(new PorterDuffColorFilter(sBgColor, PorterDuff.Mode.SRC_IN));
            } else {
                view.setBackgroundColor(sBgColor);
            }
        }
    }

    private static View getView(int i) {
        return ((LayoutInflater) Utils.getApp().getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    static class ToastFactory {
        ToastFactory() {
        }

        static IToast makeToast(Context context, CharSequence charSequence, int i) {
            if (NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                return new SystemToast(makeNormalToast(context, charSequence, i));
            }
            return new ToastWithoutNotification(makeNormalToast(context, charSequence, i));
        }

        static IToast newToast(Context context) {
            if (NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                return new SystemToast(new Toast(context));
            }
            return new ToastWithoutNotification(new Toast(context));
        }

        private static Toast makeNormalToast(Context context, CharSequence charSequence, int i) {
            Toast toastMakeText = Toast.makeText(context, "", i);
            toastMakeText.setText(charSequence);
            return toastMakeText;
        }
    }

    static class SystemToast extends AbsToast {
        SystemToast(Toast toast) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            super(toast);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(toast);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new SafeHandler((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void show() {
            this.mToast.show();
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void cancel() {
            this.mToast.cancel();
        }

        static class SafeHandler extends Handler {
            private Handler impl;

            SafeHandler(Handler handler) {
                this.impl = handler;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                this.impl.handleMessage(message);
            }

            @Override // android.os.Handler
            public void dispatchMessage(Message message) {
                try {
                    this.impl.dispatchMessage(message);
                } catch (Exception e) {
                    Log.e("ToastUtils", e.toString());
                }
            }
        }
    }

    static class ToastWithoutNotification extends AbsToast {
        private static final Utils.OnActivityDestroyedListener LISTENER = new Utils.OnActivityDestroyedListener() { // from class: com.blankj.utilcode.util.ToastUtils.ToastWithoutNotification.1
            @Override // com.blankj.utilcode.util.Utils.OnActivityDestroyedListener
            public void onActivityDestroyed(Activity activity) {
                if (ToastUtils.iToast == null) {
                    return;
                }
                ToastUtils.iToast.cancel();
            }
        };
        private WindowManager.LayoutParams mParams;
        private View mView;
        private WindowManager mWM;

        ToastWithoutNotification(Toast toast) {
            super(toast);
            this.mParams = new WindowManager.LayoutParams();
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void show() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
            int gravity;
            this.mView = this.mToast.getView();
            if (this.mView == null) {
                return;
            }
            Context context = this.mToast.getView().getContext();
            if (Build.VERSION.SDK_INT < 25) {
                this.mWM = (WindowManager) context.getSystemService("window");
                this.mParams.type = Constants.ERROR;
            } else if (Build.VERSION.SDK_INT == 25) {
                Context topActivityOrApp = Utils.getTopActivityOrApp();
                if (!(topActivityOrApp instanceof Activity)) {
                    Log.e("ToastUtils", "Couldn't get top Activity.");
                    return;
                }
                Activity activity = (Activity) topActivityOrApp;
                if (activity.isFinishing() || activity.isDestroyed()) {
                    Log.e("ToastUtils", activity + " is useless");
                    return;
                }
                this.mWM = activity.getWindowManager();
                this.mParams.type = 99;
                Utils.getActivityLifecycle().addOnActivityDestroyedListener(activity, LISTENER);
            } else {
                this.mWM = (WindowManager) context.getSystemService("window");
                this.mParams.type = 2037;
            }
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17) {
                gravity = Gravity.getAbsoluteGravity(this.mToast.getGravity(), configuration.getLayoutDirection());
            } else {
                gravity = this.mToast.getGravity();
            }
            this.mParams.y = this.mToast.getYOffset();
            WindowManager.LayoutParams layoutParams = this.mParams;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.mParams;
            layoutParams2.flags = 152;
            layoutParams2.gravity = gravity;
            if ((gravity & 7) == 7) {
                layoutParams2.horizontalWeight = 1.0f;
            }
            if ((gravity & 112) == 112) {
                this.mParams.verticalWeight = 1.0f;
            }
            this.mParams.x = this.mToast.getXOffset();
            this.mParams.packageName = Utils.getApp().getPackageName();
            try {
                if (this.mWM != null) {
                    this.mWM.addView(this.mView, this.mParams);
                }
            } catch (Exception unused) {
            }
            ToastUtils.HANDLER.postDelayed(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.ToastWithoutNotification.2
                @Override // java.lang.Runnable
                public void run() {
                    ToastWithoutNotification.this.cancel();
                }
            }, this.mToast.getDuration() == 0 ? 2000L : 3500L);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void cancel() {
            try {
                if (this.mWM != null) {
                    this.mWM.removeViewImmediate(this.mView);
                }
            } catch (Exception unused) {
            }
            this.mView = null;
            this.mWM = null;
            this.mToast = null;
        }
    }

    static abstract class AbsToast implements IToast {
        Toast mToast;

        AbsToast(Toast toast) {
            this.mToast = toast;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void setView(View view) {
            this.mToast.setView(view);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public View getView() {
            return this.mToast.getView();
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void setDuration(int i) {
            this.mToast.setDuration(i);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void setGravity(int i, int i2, int i3) {
            this.mToast.setGravity(i, i2, i3);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void setText(int i) {
            this.mToast.setText(i);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.IToast
        public void setText(CharSequence charSequence) {
            this.mToast.setText(charSequence);
        }
    }
}
