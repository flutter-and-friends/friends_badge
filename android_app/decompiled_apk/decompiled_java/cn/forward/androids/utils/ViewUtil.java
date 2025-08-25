package cn.forward.androids.utils;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.AbsListView;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class ViewUtil {
    private static long sLastTime;

    public static float getX(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            return view.getX();
        }
        return view.getLeft() + view.getTranslationX();
    }

    public static float getY(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            return view.getY();
        }
        return view.getTop() + view.getTranslationY();
    }

    public static boolean isFastDoubleClick(int i) {
        if (System.currentTimeMillis() - sLastTime < i) {
            return true;
        }
        sLastTime = System.currentTimeMillis();
        return false;
    }

    public static boolean isFastDoubleClick() {
        return isFastDoubleClick(500);
    }

    public static View.OnClickListener getOnClickListener(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            return getOnClickListenerV14(view);
        }
        return getOnClickListenerV(view);
    }

    private static View.OnClickListener getOnClickListenerV(View view) {
        try {
            return (View.OnClickListener) Class.forName("android.view.View").getDeclaredField("mOnClickListener").get(view);
        } catch (ClassNotFoundException unused) {
            Log.e("Reflection", "Class Not Found.");
            return null;
        } catch (IllegalAccessException unused2) {
            Log.e("Reflection", "Illegal Access.");
            return null;
        } catch (NoSuchFieldException unused3) {
            Log.e("Reflection", "No Such Field.");
            return null;
        }
    }

    private static View.OnClickListener getOnClickListenerV14(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Object obj;
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                obj = declaredField.get(view);
            } else {
                obj = null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            if (declaredField2 == null || obj == null) {
                return null;
            }
            return (View.OnClickListener) declaredField2.get(obj);
        } catch (ClassNotFoundException unused) {
            Log.e("Reflection", "Class Not Found.");
            return null;
        } catch (IllegalAccessException unused2) {
            Log.e("Reflection", "Illegal Access.");
            return null;
        } catch (NoSuchFieldException unused3) {
            Log.e("Reflection", "No Such Field.");
            return null;
        }
    }

    public static boolean canScrollUp(View view) {
        if (Build.VERSION.SDK_INT < 14) {
            if (!(view instanceof AbsListView)) {
                return view.getScrollY() > 0;
            }
            AbsListView absListView = (AbsListView) view;
            return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
        }
        return view.canScrollVertically(-1);
    }
}
