package com.lcodecore.tkrefreshlayout.processor;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;

/* loaded from: classes.dex */
public class RefreshProcessor implements IDecorator {

    /* renamed from: cp */
    protected TwinklingRefreshLayout.CoContext f421cp;
    private MotionEvent mLastMoveEvent;
    private float mTouchX;
    private float mTouchY;
    private boolean intercepted = false;
    private boolean willAnimHead = false;
    private boolean willAnimBottom = false;
    private boolean downEventSent = false;

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public boolean dealTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public boolean interceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerDown(MotionEvent motionEvent) {
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    public RefreshProcessor(TwinklingRefreshLayout.CoContext coContext) {
        if (coContext == null) {
            throw new NullPointerException("The coprocessor can not be null.");
        }
        this.f421cp = coContext;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0177  */
    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lcodecore.tkrefreshlayout.processor.RefreshProcessor.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    private void sendCancelEvent() {
        MotionEvent motionEvent = this.mLastMoveEvent;
        if (motionEvent == null) {
            return;
        }
        this.f421cp.dispatchTouchEventSuper(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void sendDownEvent() {
        MotionEvent motionEvent = this.mLastMoveEvent;
        this.f421cp.dispatchTouchEventSuper(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerUp(MotionEvent motionEvent, boolean z) {
        if (!z && this.willAnimHead) {
            this.f421cp.getAnimProcessor().dealPullDownRelease();
        }
        if (!z && this.willAnimBottom) {
            this.f421cp.getAnimProcessor().dealPullUpRelease();
        }
        this.willAnimHead = false;
        this.willAnimBottom = false;
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, float f3, float f4) {
        int touchSlop = this.f421cp.getTouchSlop();
        if (this.f421cp.isRefreshVisible() && f2 >= touchSlop && !this.f421cp.isOpenFloatRefresh()) {
            this.f421cp.getAnimProcessor().animHeadHideByVy((int) f4);
        }
        if (!this.f421cp.isLoadingVisible() || f2 > (-touchSlop)) {
            return;
        }
        this.f421cp.getAnimProcessor().animBottomHideByVy((int) f4);
    }
}
