package cn.forward.androids;

import android.content.Context;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import cn.forward.androids.ScaleGestureDetectorApi27;

/* loaded from: classes.dex */
public class TouchGestureDetector {
    private final GestureDetector mGestureDetector;
    private boolean mIsScrollAfterScaled = true;
    private final IOnTouchGestureListener mOnTouchGestureListener;
    private final ScaleGestureDetectorApi27 mScaleGestureDetectorApi27;

    public interface IOnTouchGestureListener extends GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, ScaleGestureDetectorApi27.OnScaleGestureListener {
        void onScrollBegin(MotionEvent motionEvent);

        void onScrollEnd(MotionEvent motionEvent);

        void onUpOrCancel(MotionEvent motionEvent);
    }

    public static abstract class OnTouchGestureListener implements IOnTouchGestureListener {
        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
            return false;
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
            return false;
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onScrollBegin(MotionEvent motionEvent) {
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onScrollEnd(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onUpOrCancel(MotionEvent motionEvent) {
        }
    }

    public TouchGestureDetector(Context context, IOnTouchGestureListener iOnTouchGestureListener) {
        this.mOnTouchGestureListener = new OnTouchGestureListenerProxy(iOnTouchGestureListener);
        this.mGestureDetector = new GestureDetector(context, this.mOnTouchGestureListener);
        this.mGestureDetector.setOnDoubleTapListener(this.mOnTouchGestureListener);
        this.mScaleGestureDetectorApi27 = new ScaleGestureDetectorApi27(context, this.mOnTouchGestureListener);
        if (Build.VERSION.SDK_INT >= 19) {
            this.mScaleGestureDetectorApi27.setQuickScaleEnabled(false);
        }
    }

    public void setScaleMinSpan(int i) {
        this.mScaleGestureDetectorApi27.setMinSpan(i);
    }

    public void setScaleSpanSlop(int i) {
        this.mScaleGestureDetectorApi27.setSpanSlop(i);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mGestureDetector.setIsLongpressEnabled(z);
    }

    public boolean isLongpressEnabled() {
        return this.mGestureDetector.isLongpressEnabled();
    }

    public void setIsScrollAfterScaled(boolean z) {
        this.mIsScrollAfterScaled = z;
    }

    public boolean isScrollAfterScaled() {
        return this.mIsScrollAfterScaled;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 4) {
            this.mOnTouchGestureListener.onUpOrCancel(motionEvent);
        }
        boolean zOnTouchEvent = this.mScaleGestureDetectorApi27.onTouchEvent(motionEvent);
        return !this.mScaleGestureDetectorApi27.isInProgress() ? zOnTouchEvent | this.mGestureDetector.onTouchEvent(motionEvent) : zOnTouchEvent;
    }

    private class OnTouchGestureListenerProxy implements IOnTouchGestureListener {
        private boolean mHasScaled = false;
        private boolean mIsScrolling = false;
        private MotionEvent mLastScrollMotionEvent;
        private IOnTouchGestureListener mListener;

        public OnTouchGestureListenerProxy(IOnTouchGestureListener iOnTouchGestureListener) {
            this.mListener = iOnTouchGestureListener;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.mHasScaled = false;
            this.mIsScrolling = false;
            return this.mListener.onDown(motionEvent);
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onUpOrCancel(MotionEvent motionEvent) {
            this.mListener.onUpOrCancel(motionEvent);
            if (this.mIsScrolling) {
                this.mIsScrolling = false;
                this.mLastScrollMotionEvent = null;
                onScrollEnd(motionEvent);
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return this.mListener.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            this.mListener.onLongPress(motionEvent);
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onScrollBegin(MotionEvent motionEvent) {
            this.mListener.onScrollBegin(motionEvent);
        }

        @Override // cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
        public void onScrollEnd(MotionEvent motionEvent) {
            this.mListener.onScrollEnd(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!TouchGestureDetector.this.mIsScrollAfterScaled && this.mHasScaled) {
                this.mIsScrolling = false;
                return false;
            }
            if (!this.mIsScrolling) {
                this.mIsScrolling = true;
                onScrollBegin(motionEvent);
            }
            this.mLastScrollMotionEvent = MotionEvent.obtain(motionEvent2);
            return this.mListener.onScroll(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            this.mListener.onShowPress(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return this.mListener.onSingleTapUp(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return this.mListener.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return this.mListener.onDoubleTapEvent(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return this.mListener.onSingleTapConfirmed(motionEvent);
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
            return this.mListener.onScale(scaleGestureDetectorApi27);
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
            this.mHasScaled = true;
            if (this.mIsScrolling) {
                this.mIsScrolling = false;
                onScrollEnd(this.mLastScrollMotionEvent);
            }
            return this.mListener.onScaleBegin(scaleGestureDetectorApi27);
        }

        @Override // cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
            this.mListener.onScaleEnd(scaleGestureDetectorApi27);
        }
    }
}
