package net.kotlinandroid.customlibrary.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.view.ViewCompat;
import net.kotlinandroid.customlibrary.C1657R;

/* loaded from: classes2.dex */
public class ArcProgress extends ProgressBar {
    public static final int STYLE_ARC = 0;
    public static final int STYLE_TICK = 1;
    private final int DEFAULT_DENSITY;
    private final int DEFAULT_LINEHEIGHT;
    private final int DEFAULT_OFFSETDEGREE;
    private final int DEFAULT_mProgressColor;
    private final int DEFAULT_mRadius;
    private final int DEFAULT_mTickWidth;
    private final int DEFAULT_mUnmProgressColor;
    private final int MAX_DENSITY;
    private final int MIN_DENSITY;
    private Paint mArcPaint;
    private RectF mArcRectf;
    private int mArcbgColor;
    private boolean mBgShow;
    private int mBoardWidth;
    private Bitmap mCenterBitmap;
    private Canvas mCenterCanvas;
    private int mDegree;
    private Paint mLinePaint;
    private OnCenterDraw mOnCenter;
    private int mProgressColor;
    private float mRadius;
    private int mStylePogress;
    private int mTickDensity;
    private int mTickWidth;
    private int mUnmProgressColor;

    public interface OnCenterDraw {
        void draw(Canvas canvas, RectF rectF, float f, float f2, float f3, int i);
    }

    public ArcProgress(Context context) {
        this(context, null);
    }

    public ArcProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArcProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.DEFAULT_LINEHEIGHT = dp2px(15);
        this.DEFAULT_mTickWidth = dp2px(2);
        this.DEFAULT_mRadius = dp2px(72);
        this.DEFAULT_mUnmProgressColor = -1381654;
        this.DEFAULT_mProgressColor = ViewCompat.MEASURED_STATE_MASK;
        this.DEFAULT_OFFSETDEGREE = 60;
        this.DEFAULT_DENSITY = 4;
        this.MIN_DENSITY = 2;
        this.MAX_DENSITY = 8;
        this.mStylePogress = 1;
        this.mDegree = 60;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1657R.styleable.ArcProgress);
        this.mBoardWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1657R.styleable.ArcProgress_arcborderWidth, this.DEFAULT_LINEHEIGHT);
        this.mUnmProgressColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.ArcProgress_unprogresColor, -1381654);
        this.mProgressColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.ArcProgress_arcprogressColor, ViewCompat.MEASURED_STATE_MASK);
        this.mTickWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1657R.styleable.ArcProgress_tickWidth, this.DEFAULT_mTickWidth);
        this.mTickDensity = typedArrayObtainStyledAttributes.getInt(C1657R.styleable.ArcProgress_tickDensity, 4);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1657R.styleable.ArcProgress_radius, this.DEFAULT_mRadius);
        this.mArcbgColor = typedArrayObtainStyledAttributes.getColor(C1657R.styleable.ArcProgress_arcbgColor, -1381654);
        this.mTickDensity = Math.max(Math.min(this.mTickDensity, 8), 2);
        this.mBgShow = typedArrayObtainStyledAttributes.getBoolean(C1657R.styleable.ArcProgress_bgShow, false);
        this.mDegree = typedArrayObtainStyledAttributes.getInt(C1657R.styleable.ArcProgress_degree, 60);
        this.mStylePogress = typedArrayObtainStyledAttributes.getInt(C1657R.styleable.ArcProgress_progressStyle, 1);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1657R.styleable.ArcProgress_arcCapRound, false);
        this.mArcPaint = new Paint(1);
        this.mArcPaint.setColor(this.mArcbgColor);
        if (z) {
            this.mArcPaint.setStrokeCap(Paint.Cap.ROUND);
        }
        this.mArcPaint.setStrokeWidth(this.mBoardWidth);
        this.mArcPaint.setStyle(Paint.Style.STROKE);
        this.mLinePaint = new Paint(1);
        this.mLinePaint.setStrokeWidth(this.mTickWidth);
    }

    public void setOnCenterDraw(OnCenterDraw onCenterDraw) {
        this.mOnCenter = onCenterDraw;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec((int) ((this.mRadius * 2.0f) + (this.mBoardWidth * 2)), 1073741824);
        }
        if (mode2 != 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) ((this.mRadius * 2.0f) + (this.mBoardWidth * 2)), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        canvas.save();
        float progress = (getProgress() * 1.0f) / getMax();
        float f = (this.mArcRectf.right / 2.0f) + (this.mBoardWidth / 2);
        float f2 = (this.mBoardWidth / 2) + (this.mArcRectf.right / 2.0f);
        if (this.mOnCenter != null) {
            if (this.mCenterCanvas == null) {
                this.mCenterBitmap = Bitmap.createBitmap(((int) this.mRadius) * 2, ((int) this.mRadius) * 2, Bitmap.Config.ARGB_8888);
                this.mCenterCanvas = new Canvas(this.mCenterBitmap);
            }
            this.mCenterCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.mOnCenter.draw(this.mCenterCanvas, this.mArcRectf, f, f2, this.mBoardWidth, getProgress());
            canvas.drawBitmap(this.mCenterBitmap, 0.0f, 0.0f, (Paint) null);
        }
        int i = this.mDegree / 2;
        int i2 = (360 - this.mDegree) / this.mTickDensity;
        int i3 = (int) (i2 * progress);
        if (this.mStylePogress == 0) {
            float f3 = progress * (360 - this.mDegree);
            this.mArcPaint.setColor(this.mProgressColor);
            float f4 = i + 90;
            canvas.drawArc(this.mArcRectf, f4, f3, false, this.mArcPaint);
            this.mArcPaint.setColor(this.mUnmProgressColor);
            canvas.drawArc(this.mArcRectf, f4 + f3, (360 - this.mDegree) - f3, false, this.mArcPaint);
        } else {
            if (this.mBgShow) {
                canvas.drawArc(this.mArcRectf, i + 90, 360 - this.mDegree, false, this.mArcPaint);
            }
            canvas.rotate(i + 180, f, f2);
            for (int i4 = 0; i4 < i2; i4++) {
                if (i4 < i3) {
                    this.mLinePaint.setColor(this.mProgressColor);
                } else {
                    this.mLinePaint.setColor(this.mUnmProgressColor);
                }
                canvas.drawLine(f, this.mBoardWidth + (this.mBoardWidth / 2), f, this.mBoardWidth - (this.mBoardWidth / 2), this.mLinePaint);
                canvas.rotate(this.mTickDensity, f, f2);
            }
        }
        canvas.restore();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = this.mBoardWidth;
        float f = this.mRadius;
        this.mArcRectf = new RectF(i5, i5, (f * 2.0f) - i5, (f * 2.0f) - i5);
        Log.e("DEMO", "right == " + this.mArcRectf.right + "   mRadius == " + (this.mRadius * 2.0f));
    }

    protected int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.mCenterBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mCenterBitmap = null;
        }
    }
}
