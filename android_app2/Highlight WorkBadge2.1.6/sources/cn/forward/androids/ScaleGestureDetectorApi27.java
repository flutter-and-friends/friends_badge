package cn.forward.androids;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class ScaleGestureDetectorApi27 {
    private static final int ANCHORED_SCALE_MODE_DOUBLE_TAP = 1;
    private static final int ANCHORED_SCALE_MODE_NONE = 0;
    private static final int ANCHORED_SCALE_MODE_STYLUS = 2;
    private static final float SCALE_FACTOR = 0.5f;
    private static final String TAG = "ScaleGestureDetectorApi27";
    private static final long TOUCH_STABILIZE_TIME = 128;
    private int mAnchoredScaleMode;
    private float mAnchoredScaleStartX;
    private float mAnchoredScaleStartY;
    private final Context mContext;
    private float mCurrSpan;
    private float mCurrSpanX;
    private float mCurrSpanY;
    private long mCurrTime;
    private boolean mEventBeforeOrAboveStartingGestureEvent;
    private float mFocusX;
    private float mFocusY;
    private GestureDetector mGestureDetector;
    private final Handler mHandler;
    private boolean mInProgress;
    private float mInitialSpan;
    private final OnScaleGestureListener mListener;
    private int mMinSpan;
    private float mPrevSpan;
    private float mPrevSpanX;
    private float mPrevSpanY;
    private long mPrevTime;
    private boolean mQuickScaleEnabled;
    private int mSpanSlop;
    private boolean mStylusScaleEnabled;

    public interface OnScaleGestureListener {
        boolean onScale(ScaleGestureDetectorApi27 scaleGestureDetectorApi27);

        boolean onScaleBegin(ScaleGestureDetectorApi27 scaleGestureDetectorApi27);

        void onScaleEnd(ScaleGestureDetectorApi27 scaleGestureDetectorApi27);
    }

    public static class SimpleOnScaleGestureListener implements ScaleGestureDetector.OnScaleGestureListener {
        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return false;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public ScaleGestureDetectorApi27(Context context, OnScaleGestureListener onScaleGestureListener) {
        this(context, onScaleGestureListener, null);
    }

    public ScaleGestureDetectorApi27(Context context, OnScaleGestureListener onScaleGestureListener, Handler handler) {
        this.mAnchoredScaleMode = 0;
        this.mContext = context;
        this.mListener = onScaleGestureListener;
        this.mSpanSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        this.mMinSpan = context.getResources().getDimensionPixelSize(R.dimen.androids_api27_config_minScalingSpan);
        this.mHandler = handler;
        int i = context.getApplicationInfo().targetSdkVersion;
        if (i > 18) {
            setQuickScaleEnabled(true);
        }
        if (i > 22) {
            setStylusScaleEnabled(true);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        this.mCurrTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.mQuickScaleEnabled) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z = (motionEvent.getButtonState() & 32) != 0;
        boolean z2 = this.mAnchoredScaleMode == 2 && !z;
        boolean z3 = actionMasked == 1 || actionMasked == 3 || z2;
        if (actionMasked == 0 || z3) {
            if (this.mInProgress) {
                this.mListener.onScaleEnd(this);
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mAnchoredScaleMode = 0;
            } else if (inAnchoredScaleMode() && z3) {
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mAnchoredScaleMode = 0;
            }
            if (z3) {
                return true;
            }
        }
        if (!this.mInProgress && this.mStylusScaleEnabled && !inAnchoredScaleMode() && !z3 && z) {
            this.mAnchoredScaleStartX = motionEvent.getX();
            this.mAnchoredScaleStartY = motionEvent.getY();
            this.mAnchoredScaleMode = 2;
            this.mInitialSpan = 0.0f;
        }
        boolean z4 = actionMasked == 0 || actionMasked == 6 || actionMasked == 5 || z2;
        boolean z5 = actionMasked == 6;
        int actionIndex = z5 ? motionEvent.getActionIndex() : -1;
        int i = z5 ? pointerCount - 1 : pointerCount;
        if (inAnchoredScaleMode()) {
            f2 = this.mAnchoredScaleStartX;
            f = this.mAnchoredScaleStartY;
            if (motionEvent.getY() < f) {
                this.mEventBeforeOrAboveStartingGestureEvent = true;
            } else {
                this.mEventBeforeOrAboveStartingGestureEvent = false;
            }
        } else {
            float x = 0.0f;
            float y = 0.0f;
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex != i2) {
                    x += motionEvent.getX(i2);
                    y += motionEvent.getY(i2);
                }
            }
            float f3 = i;
            float f4 = x / f3;
            f = y / f3;
            f2 = f4;
        }
        float fAbs = 0.0f;
        float fAbs2 = 0.0f;
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (actionIndex != i3) {
                fAbs += Math.abs(motionEvent.getX(i3) - f2);
                fAbs2 += Math.abs(motionEvent.getY(i3) - f);
            }
        }
        float f5 = i;
        float f6 = (fAbs / f5) * 2.0f;
        float f7 = (fAbs2 / f5) * 2.0f;
        float fHypot = inAnchoredScaleMode() ? f7 : (float) Math.hypot(f6, f7);
        boolean z6 = this.mInProgress;
        this.mFocusX = f2;
        this.mFocusY = f;
        if (!inAnchoredScaleMode() && this.mInProgress && (fHypot < this.mMinSpan || z4)) {
            this.mListener.onScaleEnd(this);
            this.mInProgress = false;
            this.mInitialSpan = fHypot;
        }
        if (z4) {
            this.mCurrSpanX = f6;
            this.mPrevSpanX = f6;
            this.mCurrSpanY = f7;
            this.mPrevSpanY = f7;
            this.mCurrSpan = fHypot;
            this.mPrevSpan = fHypot;
            this.mInitialSpan = fHypot;
        }
        int i4 = inAnchoredScaleMode() ? this.mSpanSlop : this.mMinSpan;
        if (!this.mInProgress && fHypot >= i4 && (z6 || Math.abs(fHypot - this.mInitialSpan) > this.mSpanSlop)) {
            this.mCurrSpanX = f6;
            this.mPrevSpanX = f6;
            this.mCurrSpanY = f7;
            this.mPrevSpanY = f7;
            this.mCurrSpan = fHypot;
            this.mPrevSpan = fHypot;
            this.mPrevTime = this.mCurrTime;
            this.mInProgress = this.mListener.onScaleBegin(this);
        }
        if (actionMasked == 2) {
            this.mCurrSpanX = f6;
            this.mCurrSpanY = f7;
            this.mCurrSpan = fHypot;
            if (this.mInProgress ? this.mListener.onScale(this) : true) {
                this.mPrevSpanX = this.mCurrSpanX;
                this.mPrevSpanY = this.mCurrSpanY;
                this.mPrevSpan = this.mCurrSpan;
                this.mPrevTime = this.mCurrTime;
            }
        }
        return true;
    }

    private boolean inAnchoredScaleMode() {
        return this.mAnchoredScaleMode != 0;
    }

    public void setQuickScaleEnabled(boolean z) {
        this.mQuickScaleEnabled = z;
        if (this.mQuickScaleEnabled && this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(this.mContext, new GestureDetector.SimpleOnGestureListener() { // from class: cn.forward.androids.ScaleGestureDetectorApi27.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onDoubleTap(MotionEvent motionEvent) {
                    ScaleGestureDetectorApi27.this.mAnchoredScaleStartX = motionEvent.getX();
                    ScaleGestureDetectorApi27.this.mAnchoredScaleStartY = motionEvent.getY();
                    ScaleGestureDetectorApi27.this.mAnchoredScaleMode = 1;
                    return true;
                }
            }, this.mHandler);
        }
    }

    public boolean isQuickScaleEnabled() {
        return this.mQuickScaleEnabled;
    }

    public void setStylusScaleEnabled(boolean z) {
        this.mStylusScaleEnabled = z;
    }

    public boolean isStylusScaleEnabled() {
        return this.mStylusScaleEnabled;
    }

    public boolean isInProgress() {
        return this.mInProgress;
    }

    public float getFocusX() {
        return this.mFocusX;
    }

    public float getFocusY() {
        return this.mFocusY;
    }

    public float getCurrentSpan() {
        return this.mCurrSpan;
    }

    public float getCurrentSpanX() {
        return this.mCurrSpanX;
    }

    public float getCurrentSpanY() {
        return this.mCurrSpanY;
    }

    public float getPreviousSpan() {
        return this.mPrevSpan;
    }

    public float getPreviousSpanX() {
        return this.mPrevSpanX;
    }

    public float getPreviousSpanY() {
        return this.mPrevSpanY;
    }

    public float getScaleFactor() {
        if (inAnchoredScaleMode()) {
            boolean z = (this.mEventBeforeOrAboveStartingGestureEvent && this.mCurrSpan < this.mPrevSpan) || (!this.mEventBeforeOrAboveStartingGestureEvent && this.mCurrSpan > this.mPrevSpan);
            float fAbs = Math.abs(1.0f - (this.mCurrSpan / this.mPrevSpan)) * 0.5f;
            if (this.mPrevSpan <= 0.0f) {
                return 1.0f;
            }
            return z ? 1.0f + fAbs : 1.0f - fAbs;
        }
        float f = this.mPrevSpan;
        if (f > 0.0f) {
            return this.mCurrSpan / f;
        }
        return 1.0f;
    }

    public long getTimeDelta() {
        return this.mCurrTime - this.mPrevTime;
    }

    public long getEventTime() {
        return this.mCurrTime;
    }

    public void setMinSpan(int i) {
        this.mMinSpan = i;
    }

    public void setSpanSlop(int i) {
        this.mSpanSlop = i;
    }

    public int getMinSpan() {
        return this.mMinSpan;
    }

    public int getSpanSlop() {
        return this.mSpanSlop;
    }
}
