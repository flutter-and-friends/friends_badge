package com.gyf.barlibrary;

import androidx.fragment.app.Fragment;

@Deprecated
/* loaded from: classes.dex */
public abstract class ImmersionFragment extends Fragment {
    @Deprecated
    protected boolean immersionEnabled() {
        return true;
    }

    @Deprecated
    protected abstract void immersionInit();

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z && isResumed()) {
            onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint() && immersionEnabled()) {
            immersionInit();
        }
    }
}
