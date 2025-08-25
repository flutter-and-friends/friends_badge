package cn.highlight.core.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import cn.highlight.core.R;

/* loaded from: classes.dex */
public class SlideSwitch extends View {
    private static final int COLOR_THEME = Color.parseColor("#ff00ee00");
    private static final int RIM_SIZE = 3;
    public static final int SHAPE_CIRCLE = 2;
    public static final int SHAPE_RECT = 1;
    private int alpha;
    private Rect backRect;
    private int color_theme;
    private int diffX;
    private int eventLastX;
    private int eventStartX;
    private Rect frontRect;
    private int frontRect_left;
    private int frontRect_left_begin;
    private boolean isOpen;
    private SlideListener listener;
    private int max_left;
    private int min_left;
    private Paint paint;
    private int shape;

    public interface SlideListener {
        void close();

        void open();
    }

    public SlideSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.frontRect_left_begin = 3;
        this.diffX = 0;
        this.listener = null;
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.slideswitch);
        this.color_theme = typedArrayObtainStyledAttributes.getColor(R.styleable.slideswitch_themeColor, COLOR_THEME);
        this.isOpen = typedArrayObtainStyledAttributes.getBoolean(R.styleable.slideswitch_isOpen, false);
        this.shape = typedArrayObtainStyledAttributes.getInt(R.styleable.slideswitch_shape, 1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public SlideSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlideSwitch(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iMeasureDimension = measureDimension(280, i);
        int iMeasureDimension2 = measureDimension(140, i2);
        if (this.shape == 2 && iMeasureDimension < iMeasureDimension2) {
            iMeasureDimension = iMeasureDimension2 * 2;
        }
        setMeasuredDimension(iMeasureDimension, iMeasureDimension2);
        initDrawingVal();
    }

    public void initDrawingVal() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.backRect = new Rect(0, 0, measuredWidth, measuredHeight);
        this.min_left = 3;
        if (this.shape == 1) {
            this.max_left = measuredWidth / 2;
        } else {
            this.max_left = (measuredWidth - (measuredHeight - 6)) - 3;
        }
        if (this.isOpen) {
            this.frontRect_left = this.max_left;
            this.alpha = 255;
        } else {
            this.frontRect_left = 3;
            this.alpha = 0;
        }
        this.frontRect_left_begin = this.frontRect_left;
    }

    public int measureDimension(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i, size) : i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.shape == 1) {
            this.paint.setColor(-7829368);
            canvas.drawRect(this.backRect, this.paint);
            this.paint.setColor(this.color_theme);
            this.paint.setAlpha(this.alpha);
            canvas.drawRect(this.backRect, this.paint);
            int i = this.frontRect_left;
            this.frontRect = new Rect(i, 3, ((getMeasuredWidth() / 2) + i) - 3, getMeasuredHeight() - 3);
            this.paint.setColor(-1);
            canvas.drawRect(this.frontRect, this.paint);
            return;
        }
        this.paint.setColor(-7829368);
        float fHeight = ((int) (this.backRect.height() / 1.8d)) - 3;
        canvas.drawRoundRect(new RectF(this.backRect), fHeight, fHeight, this.paint);
        this.paint.setColor(this.color_theme);
        this.paint.setAlpha(this.alpha);
        canvas.drawRoundRect(new RectF(this.backRect), fHeight, fHeight, this.paint);
        this.frontRect = new Rect(this.frontRect_left, 3, (this.backRect.height() + r4) - 6, this.backRect.height() - 3);
        this.paint.setColor(-1);
        canvas.drawRoundRect(new RectF(this.frontRect), fHeight, fHeight, this.paint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.eventStartX = (int) motionEvent.getRawX();
        } else if (actionMasked == 1) {
            int rawX = (int) (motionEvent.getRawX() - this.eventStartX);
            this.frontRect_left_begin = this.frontRect_left;
            boolean z = this.frontRect_left_begin > this.max_left / 2;
            if (Math.abs(rawX) < 3) {
                z = !z;
            }
            moveToDest(z);
        } else if (actionMasked == 2) {
            this.eventLastX = (int) motionEvent.getRawX();
            this.diffX = this.eventLastX - this.eventStartX;
            int i2 = this.diffX + this.frontRect_left_begin;
            int i3 = this.max_left;
            if (i2 > i3) {
                i2 = i3;
            }
            int i4 = this.min_left;
            if (i2 < i4) {
                i2 = i4;
            }
            if (i2 >= this.min_left && i2 <= (i = this.max_left)) {
                this.frontRect_left = i2;
                this.alpha = (int) ((i2 * 255.0f) / i);
                invalidateView();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateView() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public void setSlideListener(SlideListener slideListener) {
        this.listener = slideListener;
    }

    public void moveToDest(final boolean z) {
        final Handler handler = new Handler() { // from class: cn.highlight.core.view.SlideSwitch.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    SlideSwitch.this.listener.open();
                } else {
                    SlideSwitch.this.listener.close();
                }
            }
        };
        new Thread(new Runnable() { // from class: cn.highlight.core.view.SlideSwitch.2
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                if (z) {
                    while (SlideSwitch.this.frontRect_left <= SlideSwitch.this.max_left) {
                        SlideSwitch.this.alpha = (int) ((r0.frontRect_left * 255.0f) / SlideSwitch.this.max_left);
                        SlideSwitch.this.invalidateView();
                        SlideSwitch.this.frontRect_left += 3;
                        try {
                            Thread.sleep(3L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    SlideSwitch.this.alpha = 255;
                    SlideSwitch slideSwitch = SlideSwitch.this;
                    slideSwitch.frontRect_left = slideSwitch.max_left;
                    SlideSwitch.this.isOpen = true;
                    if (SlideSwitch.this.listener != null) {
                        handler.sendEmptyMessage(1);
                    }
                    SlideSwitch slideSwitch2 = SlideSwitch.this;
                    slideSwitch2.frontRect_left_begin = slideSwitch2.max_left;
                    return;
                }
                while (SlideSwitch.this.frontRect_left >= SlideSwitch.this.min_left) {
                    SlideSwitch.this.alpha = (int) ((r0.frontRect_left * 255.0f) / SlideSwitch.this.max_left);
                    SlideSwitch.this.invalidateView();
                    SlideSwitch slideSwitch3 = SlideSwitch.this;
                    slideSwitch3.frontRect_left -= 3;
                    try {
                        Thread.sleep(3L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                SlideSwitch.this.alpha = 0;
                SlideSwitch slideSwitch4 = SlideSwitch.this;
                slideSwitch4.frontRect_left = slideSwitch4.min_left;
                SlideSwitch.this.isOpen = false;
                if (SlideSwitch.this.listener != null) {
                    handler.sendEmptyMessage(0);
                }
                SlideSwitch slideSwitch5 = SlideSwitch.this;
                slideSwitch5.frontRect_left_begin = slideSwitch5.min_left;
            }
        }).start();
    }

    public void setState(boolean z) {
        this.isOpen = z;
        initDrawingVal();
        invalidateView();
        SlideListener slideListener = this.listener;
        if (slideListener != null) {
            if (z) {
                slideListener.open();
            } else {
                slideListener.close();
            }
        }
    }

    public void setShapeType(int i) {
        this.shape = i;
    }
}
