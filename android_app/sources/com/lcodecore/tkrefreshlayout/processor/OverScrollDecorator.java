package com.lcodecore.tkrefreshlayout.processor;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.utils.ScrollingUtil;

/* loaded from: classes.dex */
public class OverScrollDecorator extends Decorator {
    private static final int ALL_DELAY_TIMES = 60;
    private static final int MSG_CONTINUE_COMPUTE_SCROLL = 1;
    private static final int MSG_START_COMPUTE_SCROLL = 0;
    private static final int MSG_STOP_COMPUTE_SCROLL = 2;
    private static final int OVER_SCROLL_MIN_VX = 3000;
    private boolean checkOverScroll;
    private int cur_delay_times;
    private Handler mHandler;
    private float mVelocityY;
    private boolean preventBottomOverScroll;
    private boolean preventTopOverScroll;

    static /* synthetic */ int access$008(OverScrollDecorator overScrollDecorator) {
        int i = overScrollDecorator.cur_delay_times;
        overScrollDecorator.cur_delay_times = i + 1;
        return i;
    }

    public OverScrollDecorator(TwinklingRefreshLayout.CoContext coContext, IDecorator iDecorator) {
        super(coContext, iDecorator);
        this.cur_delay_times = 0;
        this.preventTopOverScroll = false;
        this.preventBottomOverScroll = false;
        this.checkOverScroll = false;
        this.mHandler = new Handler() { // from class: com.lcodecore.tkrefreshlayout.processor.OverScrollDecorator.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int touchSlop = OverScrollDecorator.this.f420cp.getTouchSlop();
                int i = message.what;
                if (i == 0) {
                    OverScrollDecorator.this.cur_delay_times = -1;
                } else if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    OverScrollDecorator.this.cur_delay_times = 60;
                    return;
                }
                OverScrollDecorator.access$008(OverScrollDecorator.this);
                View targetView = OverScrollDecorator.this.f420cp.getTargetView();
                if (OverScrollDecorator.this.f420cp.allowOverScroll()) {
                    if (OverScrollDecorator.this.mVelocityY >= 3000.0f) {
                        if (ScrollingUtil.isViewToTop(targetView, touchSlop)) {
                            OverScrollDecorator.this.f420cp.getAnimProcessor().animOverScrollTop(OverScrollDecorator.this.mVelocityY, OverScrollDecorator.this.cur_delay_times);
                            OverScrollDecorator.this.mVelocityY = 0.0f;
                            OverScrollDecorator.this.cur_delay_times = 60;
                        }
                    } else if (OverScrollDecorator.this.mVelocityY <= -3000.0f && ScrollingUtil.isViewToBottom(targetView, touchSlop)) {
                        OverScrollDecorator.this.f420cp.getAnimProcessor().animOverScrollBottom(OverScrollDecorator.this.mVelocityY, OverScrollDecorator.this.cur_delay_times);
                        OverScrollDecorator.this.mVelocityY = 0.0f;
                        OverScrollDecorator.this.cur_delay_times = 60;
                    }
                }
                if (OverScrollDecorator.this.cur_delay_times < 60) {
                    OverScrollDecorator.this.mHandler.sendEmptyMessageDelayed(1, 10L);
                }
            }
        };
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.decorator != null && this.decorator.dispatchTouchEvent(motionEvent);
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public boolean interceptTouchEvent(MotionEvent motionEvent) {
        return this.decorator != null && this.decorator.interceptTouchEvent(motionEvent);
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public boolean dealTouchEvent(MotionEvent motionEvent) {
        return this.decorator != null && this.decorator.dealTouchEvent(motionEvent);
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerDown(MotionEvent motionEvent) {
        if (this.decorator != null) {
            this.decorator.onFingerDown(motionEvent);
        }
        this.preventTopOverScroll = ScrollingUtil.isViewToTop(this.f420cp.getTargetView(), this.f420cp.getTouchSlop());
        this.preventBottomOverScroll = ScrollingUtil.isViewToBottom(this.f420cp.getTargetView(), this.f420cp.getTouchSlop());
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerUp(MotionEvent motionEvent, boolean z) {
        if (this.decorator != null) {
            this.decorator.onFingerUp(motionEvent, this.checkOverScroll && z);
        }
        this.checkOverScroll = false;
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, float f3, float f4) {
        if (this.decorator != null) {
            this.decorator.onFingerScroll(motionEvent, motionEvent2, f, f2, f3, f4);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IDecorator
    public void onFingerFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.decorator != null) {
            this.decorator.onFingerFling(motionEvent, motionEvent2, f, f2);
        }
        if (this.f420cp.enableOverScroll()) {
            int y = (int) (motionEvent2.getY() - motionEvent.getY());
            if (y >= (-this.f420cp.getTouchSlop()) || !this.preventBottomOverScroll) {
                if (y <= this.f420cp.getTouchSlop() || !this.preventTopOverScroll) {
                    this.mVelocityY = f2;
                    if (Math.abs(this.mVelocityY) >= 3000.0f) {
                        this.mHandler.sendEmptyMessage(0);
                        this.checkOverScroll = true;
                    } else {
                        this.mVelocityY = 0.0f;
                        this.cur_delay_times = 60;
                    }
                }
            }
        }
    }
}
