package com.bigkoo.pickerview.utils;

import com.bigkoo.pickerview.C0757R;

/* loaded from: classes.dex */
public class PickerViewAnimateUtil {
    private static final int INVALID = -1;

    public static int getAnimationResource(int i, boolean z) {
        if (i != 80) {
            return -1;
        }
        return z ? C0757R.anim.pickerview_slide_in_bottom : C0757R.anim.pickerview_slide_out_bottom;
    }
}
