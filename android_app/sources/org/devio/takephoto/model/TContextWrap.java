package org.devio.takephoto.model;

import android.app.Activity;
import android.app.Fragment;

/* loaded from: classes2.dex */
public class TContextWrap {
    private Activity activity;
    private Fragment fragment;

    /* renamed from: of */
    public static TContextWrap m879of(Activity activity) {
        return new TContextWrap(activity);
    }

    /* renamed from: of */
    public static TContextWrap m880of(Fragment fragment) {
        return new TContextWrap(fragment);
    }

    private TContextWrap(Activity activity) {
        this.activity = activity;
    }

    private TContextWrap(Fragment fragment) {
        this.fragment = fragment;
        this.activity = fragment.getActivity();
    }

    public Activity getActivity() {
        return this.activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Fragment getFragment() {
        return this.fragment;
    }

    public void setFragment(Fragment fragment) {
        this.fragment = fragment;
    }
}
