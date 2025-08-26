package me.zhouzhuo.zzhorizontalprogressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class ZzHorizontalProgressBar extends View {
    private int bgColor;
    private Paint bgPaint;
    private int borderColor;
    private Paint borderPaint;
    private int borderWidth;
    private boolean drawBorder;
    private int gradientFrom;
    private Paint gradientPaint;
    private int gradientTo;
    private int max;
    private OnProgressChangedListener onProgressChangedListener;
    private boolean openGradient;
    private boolean openSecondGradient;
    private int padding;
    private int progress;
    private int progressColor;
    private Paint progressPaint;
    private int radius;
    private int secondGradientFrom;
    private Paint secondGradientPaint;
    private int secondGradientTo;
    private int secondProgress;
    private int secondProgressColor;
    private Paint secondProgressPaint;
    private int secondProgressShape;
    private int showMode;
    private boolean showSecondProgress;
    private boolean showZeroPoint;

    public interface OnProgressChangedListener {
        void onProgressChanged(ZzHorizontalProgressBar zzHorizontalProgressBar, int i, int i2);

        void onSecondProgressChanged(ZzHorizontalProgressBar zzHorizontalProgressBar, int i, int i2);
    }

    public enum ShowMode {
        ROUND,
        RECT,
        ROUND_RECT
    }

    public ZzHorizontalProgressBar(Context context) {
        super(context);
        this.drawBorder = false;
        this.showMode = 0;
        init(context, null);
    }

    public ZzHorizontalProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.drawBorder = false;
        this.showMode = 0;
        init(context, attributeSet);
    }

    public ZzHorizontalProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.drawBorder = false;
        this.showMode = 0;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        initAttrs(context, attributeSet);
        initPaths();
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1655R.styleable.ZzHorizontalProgressBar);
        this.max = typedArrayObtainStyledAttributes.getInteger(C1655R.styleable.ZzHorizontalProgressBar_zpb_max, 100);
        this.progress = typedArrayObtainStyledAttributes.getInteger(C1655R.styleable.ZzHorizontalProgressBar_zpb_progress, 0);
        this.bgColor = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_bg_color, -12627531);
        this.progressColor = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_pb_color, -49023);
        this.secondProgressColor = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_second_pb_color, -49023);
        this.padding = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1655R.styleable.ZzHorizontalProgressBar_zpb_padding, 0);
        this.showZeroPoint = typedArrayObtainStyledAttributes.getBoolean(C1655R.styleable.ZzHorizontalProgressBar_zpb_show_zero_point, false);
        this.showSecondProgress = typedArrayObtainStyledAttributes.getBoolean(C1655R.styleable.ZzHorizontalProgressBar_zpb_show_second_progress, false);
        this.secondProgress = typedArrayObtainStyledAttributes.getInteger(C1655R.styleable.ZzHorizontalProgressBar_zpb_second_progress, 0);
        this.secondProgressShape = typedArrayObtainStyledAttributes.getInteger(C1655R.styleable.ZzHorizontalProgressBar_zpb_show_second_point_shape, 0);
        this.openGradient = typedArrayObtainStyledAttributes.getBoolean(C1655R.styleable.ZzHorizontalProgressBar_zpb_open_gradient, false);
        this.gradientFrom = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_gradient_from, -49023);
        this.gradientTo = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_gradient_to, -49023);
        this.openSecondGradient = typedArrayObtainStyledAttributes.getBoolean(C1655R.styleable.ZzHorizontalProgressBar_zpb_open_second_gradient, false);
        this.showMode = typedArrayObtainStyledAttributes.getInt(C1655R.styleable.ZzHorizontalProgressBar_zpb_show_mode, 0);
        this.secondGradientFrom = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_second_gradient_from, -49023);
        this.secondGradientTo = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_second_gradient_to, -49023);
        this.radius = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1655R.styleable.ZzHorizontalProgressBar_zpb_round_rect_radius, 20);
        this.drawBorder = typedArrayObtainStyledAttributes.getBoolean(C1655R.styleable.ZzHorizontalProgressBar_zpb_draw_border, false);
        this.borderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1655R.styleable.ZzHorizontalProgressBar_zpb_border_width, 1);
        this.borderColor = typedArrayObtainStyledAttributes.getColor(C1655R.styleable.ZzHorizontalProgressBar_zpb_border_color, -65505);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initPaths() {
        this.progressPaint = new Paint();
        this.progressPaint.setColor(this.progressColor);
        this.progressPaint.setStyle(Paint.Style.FILL);
        this.progressPaint.setAntiAlias(true);
        this.secondProgressPaint = new Paint();
        this.secondProgressPaint.setColor(this.secondProgressColor);
        this.secondProgressPaint.setStyle(Paint.Style.FILL);
        this.secondProgressPaint.setAntiAlias(true);
        this.gradientPaint = new Paint();
        this.gradientPaint.setStyle(Paint.Style.FILL);
        this.gradientPaint.setAntiAlias(true);
        this.secondGradientPaint = new Paint();
        this.secondGradientPaint.setStyle(Paint.Style.FILL);
        this.secondGradientPaint.setAntiAlias(true);
        this.bgPaint = new Paint();
        this.bgPaint.setColor(this.bgColor);
        this.bgPaint.setStyle(Paint.Style.FILL);
        this.bgPaint.setAntiAlias(true);
        this.borderPaint = new Paint();
        this.borderPaint.setColor(this.borderColor);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(this.borderWidth);
        this.borderPaint.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.showMode;
        if (i == 0) {
            drawBackground(canvas);
            drawProgress(canvas);
            drawBorder(canvas);
        } else if (i == 1) {
            drawBackgroundRectMode(canvas);
            drawProgressRectMode(canvas);
            drawBorderRect(canvas);
        } else {
            if (i != 2) {
                return;
            }
            drawBackgroundRoundRectMode(canvas);
            drawProgressRoundRectMode(canvas);
            drawBorderRoundRect(canvas);
        }
    }

    private void drawProgress(Canvas canvas) {
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        int i = this.max;
        float f = i != 0 ? (this.progress * 1.0f) / i : 0.0f;
        int height = getHeight() - (this.padding * 2);
        if (height % 2 != 0) {
            height--;
        }
        if (this.openGradient) {
            float f2 = (width - (r7 * 2)) * f;
            int i2 = height / 2;
            this.gradientPaint.setShader(new LinearGradient(r7 + i2, this.padding, r7 + i2 + f2, r7 + height, new int[]{this.gradientFrom, this.gradientTo}, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
            int height2 = width > getHeight() ? getHeight() / 2 : width / 2;
            if (f2 < getHeight()) {
                if (this.progress == 0) {
                    if (this.showZeroPoint) {
                        int i3 = this.padding;
                        canvas.drawCircle(i3 + i2, i3 + i2, i2, this.gradientPaint);
                    }
                } else {
                    int i4 = this.padding;
                    canvas.drawCircle(i4 + i2, i4 + i2, i2, this.gradientPaint);
                }
            } else {
                int i5 = this.padding;
                float f3 = height2;
                canvas.drawRoundRect(new RectF(i5, i5, i5 + f2, i5 + height), f3, f3, this.gradientPaint);
            }
        } else {
            float f4 = ((width - (this.padding * 2)) - height) * f;
            this.progressPaint.setColor(this.progressColor);
            if (this.progress == 0) {
                if (this.showZeroPoint) {
                    int i6 = this.padding;
                    canvas.drawCircle(i6 + r5, i6 + r5, height / 2, this.progressPaint);
                }
            } else {
                int i7 = this.padding;
                canvas.drawCircle(i7 + r5, i7 + r5, height / 2, this.progressPaint);
            }
            if (this.progress == 0) {
                if (this.showZeroPoint) {
                    int i8 = this.padding;
                    canvas.drawCircle(i8 + r5 + f4, i8 + r5, height / 2, this.progressPaint);
                }
            } else {
                int i9 = this.padding;
                canvas.drawCircle(i9 + r5 + f4, i9 + r5, height / 2, this.progressPaint);
            }
            int i10 = height / 2;
            canvas.drawRect(new RectF(r5 + i10, this.padding, i10 + r5 + f4, r5 + height), this.progressPaint);
        }
        if (this.showSecondProgress) {
            int i11 = this.max;
            float f5 = i11 != 0 ? (this.secondProgress * 1.0f) / i11 : 0.0f;
            int height3 = getHeight() - (this.padding * 2);
            if (height3 % 2 != 0) {
                height3--;
            }
            if (this.openSecondGradient) {
                float f6 = (width - (r4 * 2)) * f5;
                int i12 = height3 / 2;
                this.secondGradientPaint.setShader(new LinearGradient(r4 + i12, this.padding, r4 + i12 + f6, r4 + height3, new int[]{this.secondGradientFrom, this.secondGradientTo}, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
                if (width > getHeight()) {
                    width = getHeight();
                }
                int i13 = width / 2;
                if (f6 < getHeight()) {
                    if (this.secondProgress == 0) {
                        if (this.showZeroPoint) {
                            int i14 = this.padding;
                            canvas.drawCircle(i14 + i12, i14 + i12, i12, this.secondGradientPaint);
                            return;
                        }
                        return;
                    }
                    int i15 = this.padding;
                    canvas.drawCircle(i15 + i12, i15 + i12, i12, this.secondGradientPaint);
                    return;
                }
                int i16 = this.padding;
                float f7 = i13;
                canvas.drawRoundRect(new RectF(i16, i16, i16 + f6, i16 + height3), f7, f7, this.secondGradientPaint);
                return;
            }
            if (this.secondProgressShape == 0) {
                int i17 = this.padding;
                int i18 = height3 / 2;
                float f8 = i17 + i18 + ((width - (i17 * 2)) * f5);
                if (f8 < (width - i17) - i18) {
                    if (this.secondProgress == 0) {
                        if (this.showZeroPoint) {
                            canvas.drawCircle(f8, i17 + i18, i18, this.secondProgressPaint);
                            return;
                        }
                        return;
                    }
                    canvas.drawCircle(f8, i17 + i18, i18, this.secondProgressPaint);
                    return;
                }
                canvas.drawCircle(f8 - height3, i17 + i18, i18, this.secondProgressPaint);
                return;
            }
            float f9 = ((width - (this.padding * 2)) - height3) * f5;
            this.secondProgressPaint.setColor(this.secondProgressColor);
            if (this.secondProgress == 0) {
                if (this.showZeroPoint) {
                    int i19 = this.padding;
                    canvas.drawCircle(i19 + r5, i19 + r5, height3 / 2, this.secondProgressPaint);
                }
            } else {
                int i20 = this.padding;
                canvas.drawCircle(i20 + r5, i20 + r5, height3 / 2, this.secondProgressPaint);
            }
            if (this.secondProgress == 0) {
                if (this.showZeroPoint) {
                    int i21 = this.padding;
                    canvas.drawCircle(i21 + r5 + f9, i21 + r5, height3 / 2, this.secondProgressPaint);
                }
            } else {
                int i22 = this.padding;
                canvas.drawCircle(i22 + r5 + f9, i22 + r5, height3 / 2, this.secondProgressPaint);
            }
            int i23 = height3 / 2;
            canvas.drawRect(new RectF(r5 + i23, this.padding, i23 + r5 + f9, r5 + height3), this.secondProgressPaint);
        }
    }

    private void drawProgressRectMode(Canvas canvas) {
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        int i = this.max;
        float f = i != 0 ? (this.progress * 1.0f) / i : 0.0f;
        int height = getHeight() - (this.padding * 2);
        if (height % 2 != 0) {
            height--;
        }
        if (this.openGradient) {
            float f2 = (width - (r7 * 2)) * f;
            int i2 = height / 2;
            this.gradientPaint.setShader(new LinearGradient(r7 + i2, this.padding, i2 + r7 + f2, r7 + height, new int[]{this.gradientFrom, this.gradientTo}, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
            if (width > getHeight()) {
                int height2 = getHeight() / 2;
            } else {
                int i3 = width / 2;
            }
            int i4 = this.padding;
            canvas.drawRect(new RectF(i4, i4, i4 + f2, i4 + height), this.gradientPaint);
        } else {
            this.progressPaint.setColor(this.progressColor);
            int i5 = this.padding;
            canvas.drawRect(new RectF(i5, i5, i5 + ((width - (this.padding * 2)) * f), i5 + height), this.progressPaint);
        }
        if (this.showSecondProgress) {
            int i6 = this.max;
            float f3 = i6 != 0 ? (this.secondProgress * 1.0f) / i6 : 0.0f;
            int height3 = getHeight() - (this.padding * 2);
            if (height3 % 2 != 0) {
                height3--;
            }
            if (this.openSecondGradient) {
                float f4 = (width - (r4 * 2)) * f3;
                int i7 = height3 / 2;
                this.secondGradientPaint.setShader(new LinearGradient(r4 + i7, this.padding, i7 + r4 + f4, r4 + height3, new int[]{this.secondGradientFrom, this.secondGradientTo}, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
                int i8 = this.padding;
                canvas.drawRect(new RectF(i8, i8, i8 + f4, i8 + height3), this.secondGradientPaint);
                return;
            }
            this.secondProgressPaint.setColor(this.secondProgressColor);
            int i9 = this.padding;
            canvas.drawRect(new RectF(i9, i9, i9 + ((width - (this.padding * 2)) * f3), i9 + height3), this.secondProgressPaint);
        }
    }

    private void drawProgressRoundRectMode(Canvas canvas) {
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        int i = this.max;
        float f = i != 0 ? (this.progress * 1.0f) / i : 0.0f;
        int height = getHeight() - (this.padding * 2);
        if (height % 2 != 0) {
            height--;
        }
        if (this.openGradient) {
            float f2 = ((width - (r7 * 2)) - this.borderWidth) * f;
            int i2 = height / 2;
            this.gradientPaint.setShader(new LinearGradient(r7 + i2, this.padding, i2 + r7 + f2, r7 + height, new int[]{this.gradientFrom, this.gradientTo}, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
            int i3 = this.padding;
            int i4 = this.borderWidth;
            RectF rectF = new RectF((i4 / 2) + i3, (i4 / 2) + i3, i3 + f2 + (i4 / 2), (i3 + height) - (i4 / 2));
            int i5 = this.radius;
            canvas.drawRoundRect(rectF, i5, i5, this.gradientPaint);
        } else {
            this.progressPaint.setColor(this.progressColor);
            int i6 = this.padding;
            int i7 = this.borderWidth;
            RectF rectF2 = new RectF((i7 / 2) + i6, (i7 / 2) + i6, i6 + (((width - (this.padding * 2)) - this.borderWidth) * f) + (i7 / 2), (i6 + height) - (i7 / 2));
            int i8 = this.radius;
            canvas.drawRoundRect(rectF2, i8, i8, this.progressPaint);
        }
        if (this.showSecondProgress) {
            int i9 = this.max;
            float f3 = i9 != 0 ? (this.secondProgress * 1.0f) / i9 : 0.0f;
            int height2 = getHeight() - (this.padding * 2);
            if (height2 % 2 != 0) {
                height2--;
            }
            if (this.openSecondGradient) {
                int i10 = this.padding;
                float f4 = (width - (i10 * 2)) * f3;
                int[] iArr = {this.secondGradientFrom, this.secondGradientTo};
                int i11 = height2 / 2;
                int i12 = this.borderWidth;
                this.secondGradientPaint.setShader(new LinearGradient(i10 + i11 + (i12 / 2), (i12 / 2) + i10, ((i11 + i10) + f4) - (i12 / 2), (i10 + height2) - (i12 / 2), iArr, new float[]{0.0f, 1.0f}, Shader.TileMode.MIRROR));
                int i13 = this.padding;
                int i14 = this.borderWidth;
                RectF rectF3 = new RectF((i14 / 2) + i13, (i14 / 2) + i13, (i13 + f4) - (i14 / 2), (i13 + height2) - (i14 / 2));
                int i15 = this.radius;
                canvas.drawRoundRect(rectF3, i15, i15, this.secondGradientPaint);
                return;
            }
            this.secondProgressPaint.setColor(this.secondProgressColor);
            int i16 = this.padding;
            int i17 = this.borderWidth;
            RectF rectF4 = new RectF((i17 / 2) + i16, (i17 / 2) + i16, (i16 + ((width - (this.padding * 2)) * f3)) - (i17 / 2), (i16 + height2) - (i17 / 2));
            int i18 = this.radius;
            canvas.drawRoundRect(rectF4, i18, i18, this.secondProgressPaint);
        }
    }

    private void drawBackground(Canvas canvas) {
        int height = getHeight();
        if (height % 2 != 0) {
            height--;
        }
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        int i = height / 2;
        float f = i;
        canvas.drawCircle(f, f, f, this.bgPaint);
        float f2 = width - i;
        canvas.drawCircle(f2, f, f, this.bgPaint);
        canvas.drawRect(new RectF(f, 0.0f, f2, height), this.bgPaint);
    }

    private void drawBorder(Canvas canvas) {
        if (this.drawBorder) {
            int height = getHeight();
            if (height % 2 != 0) {
                height--;
            }
            int width = getWidth();
            if (width % 2 != 0) {
                width--;
            }
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            float f = height / 2;
            canvas.drawRoundRect(rectF, f, f, this.borderPaint);
        }
    }

    private void drawBorderRect(Canvas canvas) {
        if (this.drawBorder) {
            int height = getHeight();
            if (height % 2 != 0) {
                height--;
            }
            int width = getWidth();
            if (width % 2 != 0) {
                width--;
            }
            canvas.drawRect(new RectF(0.0f, 0.0f, width, height), this.borderPaint);
        }
    }

    private void drawBorderRoundRect(Canvas canvas) {
        if (this.drawBorder) {
            int height = getHeight();
            if (height % 2 != 0) {
                height--;
            }
            int width = getWidth();
            if (width % 2 != 0) {
                width--;
            }
            int i = this.borderWidth;
            RectF rectF = new RectF(i / 2, i / 2, width - (i / 2), height - (i / 2));
            int i2 = this.radius;
            canvas.drawRoundRect(rectF, i2, i2, this.borderPaint);
        }
    }

    private void drawBackgroundRectMode(Canvas canvas) {
        int height = getHeight();
        if (height % 2 != 0) {
            height--;
        }
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        canvas.drawRect(new RectF(0.0f, 0.0f, width, height), this.bgPaint);
    }

    private void drawBackgroundRoundRectMode(Canvas canvas) {
        int height = getHeight();
        if (height % 2 != 0) {
            height--;
        }
        int width = getWidth();
        if (width % 2 != 0) {
            width--;
        }
        int i = this.borderWidth;
        RectF rectF = new RectF(i / 2, i / 2, width - (i / 2), height - (i / 2));
        int i2 = this.radius;
        canvas.drawRoundRect(rectF, i2, i2, this.bgPaint);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public int getMax() {
        return this.max;
    }

    public void setMax(int i) {
        this.max = i;
        invalidate();
    }

    public int getProgress() {
        return this.progress;
    }

    public void setProgress(int i) {
        if (i < 0) {
            this.progress = 0;
        } else {
            int i2 = this.max;
            if (i > i2) {
                this.progress = i2;
            } else {
                this.progress = i;
            }
        }
        invalidate();
        OnProgressChangedListener onProgressChangedListener = this.onProgressChangedListener;
        if (onProgressChangedListener != null) {
            onProgressChangedListener.onProgressChanged(this, this.max, this.progress);
        }
    }

    public boolean isShowSecondProgress() {
        return this.showSecondProgress;
    }

    public void setShowSecondProgress(boolean z) {
        this.showSecondProgress = z;
        invalidate();
    }

    public int getSecondProgress() {
        return this.secondProgress;
    }

    public void setSecondProgress(int i) {
        if (i < 0) {
            this.secondProgress = 0;
        } else {
            int i2 = this.max;
            if (i > i2) {
                this.secondProgress = i2;
            } else {
                this.secondProgress = i;
            }
        }
        invalidate();
        OnProgressChangedListener onProgressChangedListener = this.onProgressChangedListener;
        if (onProgressChangedListener != null) {
            onProgressChangedListener.onSecondProgressChanged(this, this.max, this.secondProgress);
        }
    }

    public int getSecondProgressShape() {
        return this.secondProgressShape;
    }

    public void setSecondProgressShape(int i) {
        this.secondProgressShape = i;
        invalidate();
    }

    public int getBgColor() {
        return this.bgColor;
    }

    public void setBgColor(int i) {
        this.bgColor = i;
        this.bgPaint.setColor(i);
        invalidate();
    }

    public boolean isOpenSecondGradient() {
        return this.openSecondGradient;
    }

    public void setOpenSecondGradient(boolean z) {
        this.openSecondGradient = z;
        invalidate();
    }

    public int getSecondGradientFrom() {
        return this.secondGradientFrom;
    }

    public void setSecondGradientFrom(int i) {
        this.secondGradientFrom = i;
        invalidate();
    }

    public int getSecondGradientTo() {
        return this.secondGradientTo;
    }

    public void setSecondGradientTo(int i) {
        this.secondGradientTo = i;
        invalidate();
    }

    public int getSecondProgressColor() {
        return this.secondProgressColor;
    }

    public void setSecondProgressColor(int i) {
        this.secondProgressColor = i;
        this.secondProgressPaint.setColor(i);
        invalidate();
    }

    public int getProgressColor() {
        return this.progressColor;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
        this.progressPaint.setColor(i);
        invalidate();
    }

    public int getPadding() {
        return this.padding;
    }

    public void setPadding(int i) {
        this.padding = i;
        invalidate();
    }

    /* renamed from: me.zhouzhuo.zzhorizontalprogressbar.ZzHorizontalProgressBar$1 */
    static /* synthetic */ class C16561 {

        /* renamed from: $SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode */
        static final /* synthetic */ int[] f1176xae50a080 = new int[ShowMode.values().length];

        static {
            try {
                f1176xae50a080[ShowMode.ROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1176xae50a080[ShowMode.RECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1176xae50a080[ShowMode.ROUND_RECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void setShowMode(ShowMode showMode) {
        int i = C16561.f1176xae50a080[showMode.ordinal()];
        if (i == 1) {
            this.showMode = 0;
        } else if (i == 2) {
            this.showMode = 1;
        } else if (i == 3) {
            this.showMode = 2;
        }
        invalidate();
    }

    public int getPercentage() {
        int i = this.max;
        if (i == 0) {
            return 0;
        }
        return (int) ((this.progress * 100.0d) / i);
    }

    public boolean isOpenGradient() {
        return this.openGradient;
    }

    public void setOpenGradient(boolean z) {
        this.openGradient = z;
        invalidate();
    }

    public int getGradientFrom() {
        return this.gradientFrom;
    }

    public void setGradientFrom(int i) {
        this.gradientFrom = i;
        invalidate();
    }

    public int getGradientTo() {
        return this.gradientTo;
    }

    public void setGradientTo(int i) {
        this.gradientTo = i;
        invalidate();
    }

    public void setBorderColor(int i) {
        this.borderColor = i;
        this.borderPaint.setColor(this.borderColor);
        invalidate();
    }

    public void setGradientColor(int i, int i2) {
        this.gradientFrom = i;
        this.gradientTo = i2;
        invalidate();
    }

    public void setSecondGradientColor(int i, int i2) {
        this.secondGradientFrom = i;
        this.secondGradientTo = i2;
        invalidate();
    }

    public void setGradientColorAndBorderColor(int i, int i2, int i3) {
        this.gradientFrom = i;
        this.gradientTo = i2;
        this.borderColor = i3;
        this.borderPaint.setColor(this.borderColor);
        invalidate();
    }

    public int getBorderColor() {
        return this.borderColor;
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.onProgressChangedListener = onProgressChangedListener;
    }
}
