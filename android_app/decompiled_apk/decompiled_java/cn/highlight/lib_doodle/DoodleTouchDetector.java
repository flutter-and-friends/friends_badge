package cn.highlight.lib_doodle;

import android.content.Context;
import cn.forward.androids.TouchGestureDetector;

/* loaded from: classes.dex */
public class DoodleTouchDetector extends TouchGestureDetector implements IDoodleTouchDetector {
    public DoodleTouchDetector(Context context, TouchGestureDetector.IOnTouchGestureListener iOnTouchGestureListener) {
        super(context, iOnTouchGestureListener);
        setScaleSpanSlop(1);
        setScaleMinSpan(1);
        setIsLongpressEnabled(false);
        setIsScrollAfterScaled(false);
    }
}
