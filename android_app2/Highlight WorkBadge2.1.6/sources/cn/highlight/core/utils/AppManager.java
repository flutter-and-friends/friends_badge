package cn.highlight.core.utils;

import android.app.Activity;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes.dex */
public final class AppManager {
    private static Stack<Activity> activityStack;
    private static AppManager instance;

    private AppManager() {
    }

    public static AppManager getAppManager() {
        if (instance == null) {
            instance = new AppManager();
        }
        return instance;
    }

    public void addActivity(Activity activity) {
        if (activityStack == null) {
            activityStack = new Stack<>();
        }
        activityStack.add(activity);
    }

    public Activity currentActivity() {
        return activityStack.lastElement();
    }

    public void finishActivity() {
        finishActivity(activityStack.lastElement());
    }

    private void finishActivity(Activity activity) {
        if (activity != null) {
            activityStack.remove(activity);
            activity.finish();
        }
    }

    public void finishActivity(Class<?> cls) {
        Activity next;
        Iterator<Activity> it = activityStack.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.getClass().equals(cls)) {
                    break;
                }
            }
        }
        if (next != null) {
            finishActivity(next);
        }
    }

    public Activity getActivity(Class<?> cls) {
        Stack<Activity> stack = activityStack;
        if (stack == null || stack.size() == 0) {
            return null;
        }
        for (int size = activityStack.size() - 1; size >= 0; size--) {
            Activity activity = activityStack.get(size);
            if (activity.getClass().equals(cls)) {
                return activity;
            }
        }
        return null;
    }

    public void finishAllActivity() {
        int size = activityStack.size();
        for (int i = 0; i < size; i++) {
            if (activityStack.get(i) != null) {
                activityStack.get(i).finish();
            }
        }
        activityStack.clear();
    }

    public void appExitLogin(Class<?> cls) {
        Iterator<Activity> it = activityStack.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next != null && !next.getClass().equals(cls)) {
                next.finish();
                it.remove();
            }
        }
    }

    public void appExit() {
        try {
            finishAllActivity();
        } catch (Exception unused) {
        }
    }

    public Stack<Activity> getStack() {
        return activityStack;
    }
}
