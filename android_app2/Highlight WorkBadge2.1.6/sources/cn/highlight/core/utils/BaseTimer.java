package cn.highlight.core.utils;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public class BaseTimer {
    private TimerCallBack timerCallBack = null;
    private boolean timerRun = false;
    private boolean bInterval = false;
    private long curMsecond = 0;
    private Handler timerHandler = new Handler() { // from class: cn.highlight.core.utils.BaseTimer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (BaseTimer.this.timerCallBack != null) {
                BaseTimer.this.timerCallBack.callback();
            }
            BaseTimer.this.timerRun = false;
            if (BaseTimer.this.bInterval) {
                BaseTimer baseTimer = BaseTimer.this;
                baseTimer.startTimer(baseTimer.curMsecond, BaseTimer.this.timerCallBack);
                BaseTimer.this.bInterval = true;
            }
            super.handleMessage(message);
        }
    };
    private Runnable keyRunnable = new Runnable() { // from class: cn.highlight.core.utils.BaseTimer.2
        @Override // java.lang.Runnable
        public void run() {
            BaseTimer.this.timerHandler.sendEmptyMessage(0);
        }
    };

    public interface TimerCallBack {
        void callback();
    }

    public void killTimer() {
        this.bInterval = false;
        this.timerRun = false;
        try {
            this.timerHandler.removeCallbacks(this.keyRunnable);
        } catch (Exception e) {
            LogManage.e("BaseTimer", "关闭定时器异常：" + e.getMessage());
        }
    }

    public void startTimer(int i, TimerCallBack timerCallBack) {
        killTimer();
        this.curMsecond = i;
        this.timerRun = true;
        this.timerCallBack = timerCallBack;
        this.timerHandler.postDelayed(this.keyRunnable, this.curMsecond);
    }

    public void startTimer(long j, TimerCallBack timerCallBack) {
        killTimer();
        this.timerRun = true;
        this.timerCallBack = timerCallBack;
        this.timerHandler.postDelayed(this.keyRunnable, j);
    }

    public void startInterval(int i, TimerCallBack timerCallBack) {
        startTimer(i, timerCallBack);
        this.bInterval = true;
    }

    public boolean isRunning() {
        return this.timerRun;
    }
}
