package com.lcodecore.tkrefreshlayout.processor;

import android.view.MotionEvent;

/* loaded from: classes.dex */
public interface IDecorator {
    boolean dealTouchEvent(MotionEvent motionEvent);

    boolean dispatchTouchEvent(MotionEvent motionEvent);

    boolean interceptTouchEvent(MotionEvent motionEvent);

    void onFingerDown(MotionEvent motionEvent);

    void onFingerFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void onFingerScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, float f3, float f4);

    void onFingerUp(MotionEvent motionEvent, boolean z);
}
