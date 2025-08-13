package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import cn.forward.androids.C0428R;
import cn.forward.androids.utils.ImageUtils;

/* loaded from: classes.dex */
public class ShapeImageView extends ImageView {
    public static int SHAPE_CIRCLE = 2;
    public static int SHAPE_OVAL = 3;
    public static int SHAPE_REC = 1;
    private Bitmap mBitmap;
    private Paint mBitmapPaint;
    private BitmapShader mBitmapShader;
    private int mBorderColor;
    private Paint mBorderPaint;
    private RectF mBorderRect;
    private float mBorderSize;
    private Path mPath;
    private float mRoundRadius;
    private float mRoundRadiusLeftBottom;
    private float mRoundRadiusLeftTop;
    private float mRoundRadiusRightBottom;
    private float mRoundRadiusRightTop;
    private final Matrix mShaderMatrix;
    private int mShape;
    private RectF mViewRect;

    public ShapeImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShapeImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBorderSize = 0.0f;
        this.mBorderColor = -1;
        this.mShape = SHAPE_REC;
        this.mRoundRadius = 0.0f;
        this.mBorderPaint = new Paint(1);
        this.mViewRect = new RectF();
        this.mBorderRect = new RectF();
        this.mShaderMatrix = new Matrix();
        this.mBitmapPaint = new Paint();
        this.mPath = new Path();
        init(attributeSet);
        this.mBorderPaint.setStyle(Paint.Style.STROKE);
        this.mBorderPaint.setStrokeWidth(this.mBorderSize);
        this.mBorderPaint.setColor(this.mBorderColor);
        this.mBorderPaint.setAntiAlias(true);
        this.mBitmapPaint.setAntiAlias(true);
        super.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        this.mBitmap = ImageUtils.getBitmapFromDrawable(getDrawable());
        setupBitmapShader();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.mBitmap = ImageUtils.getBitmapFromDrawable(drawable);
        setupBitmapShader();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != ImageView.ScaleType.CENTER_CROP) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0428R.styleable.ShapeImageView);
        this.mShape = typedArrayObtainStyledAttributes.getInt(C0428R.styleable.ShapeImageView_siv_shape, this.mShape);
        this.mRoundRadius = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_round_radius, this.mRoundRadius);
        this.mBorderSize = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_border_size, this.mBorderSize);
        this.mBorderColor = typedArrayObtainStyledAttributes.getColor(C0428R.styleable.ShapeImageView_siv_border_color, this.mBorderColor);
        this.mRoundRadiusLeftBottom = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_round_radius_leftBottom, this.mRoundRadius);
        this.mRoundRadiusLeftTop = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_round_radius_leftTop, this.mRoundRadius);
        this.mRoundRadiusRightBottom = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_round_radius_rightBottom, this.mRoundRadius);
        this.mRoundRadiusRightTop = typedArrayObtainStyledAttributes.getDimension(C0428R.styleable.ShapeImageView_siv_round_radius_rightTop, this.mRoundRadius);
        typedArrayObtainStyledAttributes.recycle();
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mBitmap != null) {
            int i = this.mShape;
            if (i == SHAPE_CIRCLE) {
                canvas.drawCircle(this.mViewRect.right / 2.0f, this.mViewRect.bottom / 2.0f, Math.min(this.mViewRect.right, this.mViewRect.bottom) / 2.0f, this.mBitmapPaint);
            } else if (i == SHAPE_OVAL) {
                canvas.drawOval(this.mViewRect, this.mBitmapPaint);
            } else {
                this.mPath.reset();
                Path path = this.mPath;
                RectF rectF = this.mViewRect;
                float f = this.mRoundRadiusLeftTop;
                float f2 = this.mRoundRadiusRightTop;
                float f3 = this.mRoundRadiusRightBottom;
                float f4 = this.mRoundRadiusLeftBottom;
                path.addRoundRect(rectF, new float[]{f, f, f2, f2, f3, f3, f4, f4}, Path.Direction.CW);
                canvas.drawPath(this.mPath, this.mBitmapPaint);
            }
        }
        if (this.mBorderSize > 0.0f) {
            int i2 = this.mShape;
            if (i2 == SHAPE_CIRCLE) {
                canvas.drawCircle(this.mViewRect.right / 2.0f, this.mViewRect.bottom / 2.0f, (Math.min(this.mViewRect.right, this.mViewRect.bottom) / 2.0f) - (this.mBorderSize / 2.0f), this.mBorderPaint);
                return;
            }
            if (i2 == SHAPE_OVAL) {
                canvas.drawOval(this.mBorderRect, this.mBorderPaint);
                return;
            }
            this.mPath.reset();
            Path path2 = this.mPath;
            RectF rectF2 = this.mBorderRect;
            float f5 = this.mRoundRadiusLeftTop;
            float f6 = this.mRoundRadiusRightTop;
            float f7 = this.mRoundRadiusRightBottom;
            float f8 = this.mRoundRadiusLeftBottom;
            path2.addRoundRect(rectF2, new float[]{f5, f5, f6, f6, f7, f7, f8, f8}, Path.Direction.CW);
            canvas.drawPath(this.mPath, this.mBorderPaint);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        initRect();
        setupBitmapShader();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    private void setupBitmapShader() {
        if (this.mBitmapPaint == null) {
            return;
        }
        Bitmap bitmap = this.mBitmap;
        if (bitmap == null) {
            invalidate();
            return;
        }
        this.mBitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        this.mBitmapPaint.setShader(this.mBitmapShader);
        this.mShaderMatrix.set(null);
        float fMax = Math.max((getWidth() * 1.0f) / this.mBitmap.getWidth(), (getHeight() * 1.0f) / this.mBitmap.getHeight());
        this.mShaderMatrix.setScale(fMax, fMax);
        this.mShaderMatrix.postTranslate((getWidth() - (this.mBitmap.getWidth() * fMax)) / 2.0f, (getHeight() - (this.mBitmap.getHeight() * fMax)) / 2.0f);
        this.mBitmapShader.setLocalMatrix(this.mShaderMatrix);
        invalidate();
    }

    private void initRect() {
        RectF rectF = this.mViewRect;
        rectF.top = 0.0f;
        rectF.left = 0.0f;
        rectF.right = getWidth();
        this.mViewRect.bottom = getHeight();
        RectF rectF2 = this.mBorderRect;
        float f = this.mBorderSize;
        rectF2.top = f / 2.0f;
        rectF2.left = f / 2.0f;
        rectF2.right = getWidth() - (this.mBorderSize / 2.0f);
        this.mBorderRect.bottom = getHeight() - (this.mBorderSize / 2.0f);
    }

    public int getShape() {
        return this.mShape;
    }

    public void setShape(int i) {
        this.mShape = i;
    }

    public float getBorderSize() {
        return this.mBorderSize;
    }

    public void setBorderSize(int i) {
        float f = i;
        this.mBorderSize = f;
        this.mBorderPaint.setStrokeWidth(f);
        initRect();
        invalidate();
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public void setBorderColor(int i) {
        this.mBorderColor = i;
        this.mBorderPaint.setColor(i);
        invalidate();
    }

    public float getRoundRadius() {
        return this.mRoundRadius;
    }

    public void setRoundRadius(float f) {
        this.mRoundRadius = f;
        invalidate();
    }

    public void setRoundRadiis(float f, float f2, float f3, float f4) {
        this.mRoundRadiusLeftBottom = f;
        this.mRoundRadiusLeftTop = f2;
        this.mRoundRadiusRightBottom = f3;
        this.mRoundRadiusRightTop = f4;
        invalidate();
    }

    public float[] getRoundRadiis() {
        return new float[]{this.mRoundRadiusLeftBottom, this.mRoundRadiusLeftTop, this.mRoundRadiusRightBottom, this.mRoundRadiusRightTop};
    }
}
