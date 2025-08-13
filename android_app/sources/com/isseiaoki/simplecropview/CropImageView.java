package com.isseiaoki.simplecropview;

import android.content.Context;
import android.content.res.TypedArray;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.Registry;
import com.isseiaoki.simplecropview.animation.SimpleValueAnimator;
import com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener;
import com.isseiaoki.simplecropview.animation.ValueAnimatorV14;
import com.isseiaoki.simplecropview.animation.ValueAnimatorV8;
import com.isseiaoki.simplecropview.callback.Callback;
import com.isseiaoki.simplecropview.callback.CropCallback;
import com.isseiaoki.simplecropview.callback.LoadCallback;
import com.isseiaoki.simplecropview.callback.SaveCallback;
import com.isseiaoki.simplecropview.util.Logger;
import com.isseiaoki.simplecropview.util.Utils;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class CropImageView extends ImageView {
    private static final int DEBUG_TEXT_SIZE_IN_DP = 15;
    private static final int DEFAULT_ANIMATION_DURATION_MILLIS = 100;
    private static final float DEFAULT_INITIAL_FRAME_SCALE = 1.0f;
    private static final int FRAME_STROKE_WEIGHT_IN_DP = 1;
    private static final int GUIDE_STROKE_WEIGHT_IN_DP = 1;
    private static final int HANDLE_SIZE_IN_DP = 14;
    private static final int MIN_FRAME_SIZE_IN_DP = 50;
    private static final String TAG = CropImageView.class.getSimpleName();
    private static final int TRANSLUCENT_BLACK = -1157627904;
    private static final int TRANSLUCENT_WHITE = -1140850689;
    private static final int TRANSPARENT = 0;
    private static final int WHITE = -1;
    private final Interpolator DEFAULT_INTERPOLATOR;
    private float mAngle;
    private int mAnimationDurationMillis;
    private SimpleValueAnimator mAnimator;
    private int mBackgroundColor;
    private PointF mCenter;
    private Bitmap.CompressFormat mCompressFormat;
    private int mCompressQuality;
    private CropMode mCropMode;
    private PointF mCustomRatio;
    private ExecutorService mExecutor;
    private int mExifRotation;
    private int mFrameColor;
    private RectF mFrameRect;
    private float mFrameStrokeWeight;
    private int mGuideColor;
    private ShowMode mGuideShowMode;
    private float mGuideStrokeWeight;
    private int mHandleColor;
    private ShowMode mHandleShowMode;
    private int mHandleSize;
    private Handler mHandler;
    private RectF mImageRect;
    private float mImgHeight;
    private float mImgWidth;
    private RectF mInitialFrameRect;
    private float mInitialFrameScale;
    private int mInputImageHeight;
    private int mInputImageWidth;
    private Interpolator mInterpolator;
    private boolean mIsAnimating;
    private boolean mIsAnimationEnabled;
    private boolean mIsCropEnabled;
    private AtomicBoolean mIsCropping;
    private boolean mIsDebug;
    private boolean mIsEnabled;
    private boolean mIsHandleShadowEnabled;
    private boolean mIsInitialized;
    private AtomicBoolean mIsLoading;
    private boolean mIsRotating;
    private AtomicBoolean mIsSaving;
    private float mLastX;
    private float mLastY;
    private Matrix mMatrix;
    private float mMinFrameSize;
    private int mOutputHeight;
    private int mOutputImageHeight;
    private int mOutputImageWidth;
    private int mOutputMaxHeight;
    private int mOutputMaxWidth;
    private int mOutputWidth;
    private int mOverlayColor;
    private Paint mPaintBitmap;
    private Paint mPaintDebug;
    private Paint mPaintFrame;
    private Paint mPaintTranslucent;
    private Uri mSaveUri;
    private float mScale;
    private boolean mShowGuide;
    private boolean mShowHandle;
    private Uri mSourceUri;
    private TouchArea mTouchArea;
    private int mTouchPadding;
    private int mViewHeight;
    private int mViewWidth;

    private enum TouchArea {
        OUT_OF_BOUNDS,
        CENTER,
        LEFT_TOP,
        RIGHT_TOP,
        LEFT_BOTTOM,
        RIGHT_BOTTOM
    }

    private float constrain(float f, float f2, float f3, float f4) {
        return (f < f2 || f > f3) ? f4 : f;
    }

    private float getRotatedHeight(float f, float f2, float f3) {
        return f % 180.0f == 0.0f ? f3 : f2;
    }

    private float getRotatedWidth(float f, float f2, float f3) {
        return f % 180.0f == 0.0f ? f2 : f3;
    }

    /* renamed from: sq */
    private float m308sq(float f) {
        return f * f;
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mScale = 1.0f;
        this.mAngle = 0.0f;
        this.mImgWidth = 0.0f;
        this.mImgHeight = 0.0f;
        this.mIsInitialized = false;
        this.mMatrix = null;
        this.mCenter = new PointF();
        this.mIsRotating = false;
        this.mIsAnimating = false;
        this.mAnimator = null;
        this.DEFAULT_INTERPOLATOR = new DecelerateInterpolator();
        this.mInterpolator = this.DEFAULT_INTERPOLATOR;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mSourceUri = null;
        this.mSaveUri = null;
        this.mExifRotation = 0;
        this.mOutputWidth = 0;
        this.mOutputHeight = 0;
        this.mIsDebug = false;
        this.mCompressFormat = Bitmap.CompressFormat.PNG;
        this.mCompressQuality = 100;
        this.mInputImageWidth = 0;
        this.mInputImageHeight = 0;
        this.mOutputImageWidth = 0;
        this.mOutputImageHeight = 0;
        this.mIsLoading = new AtomicBoolean(false);
        this.mIsCropping = new AtomicBoolean(false);
        this.mIsSaving = new AtomicBoolean(false);
        this.mTouchArea = TouchArea.OUT_OF_BOUNDS;
        this.mCropMode = CropMode.SQUARE;
        this.mGuideShowMode = ShowMode.SHOW_ALWAYS;
        this.mHandleShowMode = ShowMode.SHOW_ALWAYS;
        this.mTouchPadding = 0;
        this.mShowGuide = true;
        this.mShowHandle = true;
        this.mIsCropEnabled = true;
        this.mIsEnabled = true;
        this.mCustomRatio = new PointF(1.0f, 1.0f);
        this.mFrameStrokeWeight = 2.0f;
        this.mGuideStrokeWeight = 2.0f;
        this.mIsAnimationEnabled = true;
        this.mAnimationDurationMillis = 100;
        this.mIsHandleShadowEnabled = true;
        this.mExecutor = Executors.newSingleThreadExecutor();
        float density = getDensity();
        this.mHandleSize = (int) (14.0f * density);
        this.mMinFrameSize = 50.0f * density;
        float f = density * 1.0f;
        this.mFrameStrokeWeight = f;
        this.mGuideStrokeWeight = f;
        this.mPaintFrame = new Paint();
        this.mPaintTranslucent = new Paint();
        this.mPaintBitmap = new Paint();
        this.mPaintBitmap.setFilterBitmap(true);
        this.mPaintDebug = new Paint();
        this.mPaintDebug.setAntiAlias(true);
        this.mPaintDebug.setStyle(Paint.Style.STROKE);
        this.mPaintDebug.setColor(-1);
        this.mPaintDebug.setTextSize(15.0f * density);
        this.mMatrix = new Matrix();
        this.mScale = 1.0f;
        this.mBackgroundColor = 0;
        this.mFrameColor = -1;
        this.mOverlayColor = TRANSLUCENT_BLACK;
        this.mHandleColor = -1;
        this.mGuideColor = TRANSLUCENT_WHITE;
        handleStyleable(context, attributeSet, i, density);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mode = this.mCropMode;
        savedState.backgroundColor = this.mBackgroundColor;
        savedState.overlayColor = this.mOverlayColor;
        savedState.frameColor = this.mFrameColor;
        savedState.guideShowMode = this.mGuideShowMode;
        savedState.handleShowMode = this.mHandleShowMode;
        savedState.showGuide = this.mShowGuide;
        savedState.showHandle = this.mShowHandle;
        savedState.handleSize = this.mHandleSize;
        savedState.touchPadding = this.mTouchPadding;
        savedState.minFrameSize = this.mMinFrameSize;
        savedState.customRatioX = this.mCustomRatio.x;
        savedState.customRatioY = this.mCustomRatio.y;
        savedState.frameStrokeWeight = this.mFrameStrokeWeight;
        savedState.guideStrokeWeight = this.mGuideStrokeWeight;
        savedState.isCropEnabled = this.mIsCropEnabled;
        savedState.handleColor = this.mHandleColor;
        savedState.guideColor = this.mGuideColor;
        savedState.initialFrameScale = this.mInitialFrameScale;
        savedState.angle = this.mAngle;
        savedState.isAnimationEnabled = this.mIsAnimationEnabled;
        savedState.animationDuration = this.mAnimationDurationMillis;
        savedState.exifRotation = this.mExifRotation;
        savedState.sourceUri = this.mSourceUri;
        savedState.saveUri = this.mSaveUri;
        savedState.compressFormat = this.mCompressFormat;
        savedState.compressQuality = this.mCompressQuality;
        savedState.isDebug = this.mIsDebug;
        savedState.outputMaxWidth = this.mOutputMaxWidth;
        savedState.outputMaxHeight = this.mOutputMaxHeight;
        savedState.outputWidth = this.mOutputWidth;
        savedState.outputHeight = this.mOutputHeight;
        savedState.isHandleShadowEnabled = this.mIsHandleShadowEnabled;
        savedState.inputImageWidth = this.mInputImageWidth;
        savedState.inputImageHeight = this.mInputImageHeight;
        savedState.outputImageWidth = this.mOutputImageWidth;
        savedState.outputImageHeight = this.mOutputImageHeight;
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mCropMode = savedState.mode;
        this.mBackgroundColor = savedState.backgroundColor;
        this.mOverlayColor = savedState.overlayColor;
        this.mFrameColor = savedState.frameColor;
        this.mGuideShowMode = savedState.guideShowMode;
        this.mHandleShowMode = savedState.handleShowMode;
        this.mShowGuide = savedState.showGuide;
        this.mShowHandle = savedState.showHandle;
        this.mHandleSize = savedState.handleSize;
        this.mTouchPadding = savedState.touchPadding;
        this.mMinFrameSize = savedState.minFrameSize;
        this.mCustomRatio = new PointF(savedState.customRatioX, savedState.customRatioY);
        this.mFrameStrokeWeight = savedState.frameStrokeWeight;
        this.mGuideStrokeWeight = savedState.guideStrokeWeight;
        this.mIsCropEnabled = savedState.isCropEnabled;
        this.mHandleColor = savedState.handleColor;
        this.mGuideColor = savedState.guideColor;
        this.mInitialFrameScale = savedState.initialFrameScale;
        this.mAngle = savedState.angle;
        this.mIsAnimationEnabled = savedState.isAnimationEnabled;
        this.mAnimationDurationMillis = savedState.animationDuration;
        this.mExifRotation = savedState.exifRotation;
        this.mSourceUri = savedState.sourceUri;
        this.mSaveUri = savedState.saveUri;
        this.mCompressFormat = savedState.compressFormat;
        this.mCompressQuality = savedState.compressQuality;
        this.mIsDebug = savedState.isDebug;
        this.mOutputMaxWidth = savedState.outputMaxWidth;
        this.mOutputMaxHeight = savedState.outputMaxHeight;
        this.mOutputWidth = savedState.outputWidth;
        this.mOutputHeight = savedState.outputHeight;
        this.mIsHandleShadowEnabled = savedState.isHandleShadowEnabled;
        this.mInputImageWidth = savedState.inputImageWidth;
        this.mInputImageHeight = savedState.inputImageHeight;
        this.mOutputImageWidth = savedState.outputImageWidth;
        this.mOutputImageHeight = savedState.outputImageHeight;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        this.mViewWidth = (size - getPaddingLeft()) - getPaddingRight();
        this.mViewHeight = (size2 - getPaddingTop()) - getPaddingBottom();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getDrawable() != null) {
            setupLayout(this.mViewWidth, this.mViewHeight);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawColor(this.mBackgroundColor);
        if (this.mIsInitialized) {
            setMatrix();
            Bitmap bitmap = getBitmap();
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, this.mMatrix, this.mPaintBitmap);
                drawCropFrame(canvas);
            }
            if (this.mIsDebug) {
                drawDebugInfo(canvas);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        this.mExecutor.shutdown();
        super.onDetachedFromWindow();
    }

    private void handleStyleable(Context context, AttributeSet attributeSet, int i, float f) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1248R.styleable.scv_CropImageView, i, 0);
        this.mCropMode = CropMode.SQUARE;
        try {
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(C1248R.styleable.scv_CropImageView_scv_img_src);
                if (drawable != null) {
                    setImageDrawable(drawable);
                }
                CropMode[] cropModeArrValues = CropMode.values();
                int length = cropModeArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    CropMode cropMode = cropModeArrValues[i2];
                    if (typedArrayObtainStyledAttributes.getInt(C1248R.styleable.scv_CropImageView_scv_crop_mode, 3) == cropMode.getId()) {
                        this.mCropMode = cropMode;
                        break;
                    }
                    i2++;
                }
                this.mBackgroundColor = typedArrayObtainStyledAttributes.getColor(C1248R.styleable.scv_CropImageView_scv_background_color, 0);
                this.mOverlayColor = typedArrayObtainStyledAttributes.getColor(C1248R.styleable.scv_CropImageView_scv_overlay_color, TRANSLUCENT_BLACK);
                this.mFrameColor = typedArrayObtainStyledAttributes.getColor(C1248R.styleable.scv_CropImageView_scv_frame_color, -1);
                this.mHandleColor = typedArrayObtainStyledAttributes.getColor(C1248R.styleable.scv_CropImageView_scv_handle_color, -1);
                this.mGuideColor = typedArrayObtainStyledAttributes.getColor(C1248R.styleable.scv_CropImageView_scv_guide_color, TRANSLUCENT_WHITE);
                ShowMode[] showModeArrValues = ShowMode.values();
                int length2 = showModeArrValues.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        break;
                    }
                    ShowMode showMode = showModeArrValues[i3];
                    if (typedArrayObtainStyledAttributes.getInt(C1248R.styleable.scv_CropImageView_scv_guide_show_mode, 1) == showMode.getId()) {
                        this.mGuideShowMode = showMode;
                        break;
                    }
                    i3++;
                }
                ShowMode[] showModeArrValues2 = ShowMode.values();
                int length3 = showModeArrValues2.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length3) {
                        break;
                    }
                    ShowMode showMode2 = showModeArrValues2[i4];
                    if (typedArrayObtainStyledAttributes.getInt(C1248R.styleable.scv_CropImageView_scv_handle_show_mode, 1) == showMode2.getId()) {
                        this.mHandleShowMode = showMode2;
                        break;
                    }
                    i4++;
                }
                setGuideShowMode(this.mGuideShowMode);
                setHandleShowMode(this.mHandleShowMode);
                this.mHandleSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1248R.styleable.scv_CropImageView_scv_handle_size, (int) (14.0f * f));
                this.mTouchPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1248R.styleable.scv_CropImageView_scv_touch_padding, 0);
                this.mMinFrameSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1248R.styleable.scv_CropImageView_scv_min_frame_size, (int) (50.0f * f));
                int i5 = (int) (f * 1.0f);
                this.mFrameStrokeWeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1248R.styleable.scv_CropImageView_scv_frame_stroke_weight, i5);
                this.mGuideStrokeWeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1248R.styleable.scv_CropImageView_scv_guide_stroke_weight, i5);
                this.mIsCropEnabled = typedArrayObtainStyledAttributes.getBoolean(C1248R.styleable.scv_CropImageView_scv_crop_enabled, true);
                this.mInitialFrameScale = constrain(typedArrayObtainStyledAttributes.getFloat(C1248R.styleable.scv_CropImageView_scv_initial_frame_scale, 1.0f), 0.01f, 1.0f, 1.0f);
                this.mIsAnimationEnabled = typedArrayObtainStyledAttributes.getBoolean(C1248R.styleable.scv_CropImageView_scv_animation_enabled, true);
                this.mAnimationDurationMillis = typedArrayObtainStyledAttributes.getInt(C1248R.styleable.scv_CropImageView_scv_animation_duration, 100);
                this.mIsHandleShadowEnabled = typedArrayObtainStyledAttributes.getBoolean(C1248R.styleable.scv_CropImageView_scv_handle_shadow_enabled, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void drawDebugInfo(Canvas canvas) {
        int i;
        StringBuilder sb;
        Paint.FontMetrics fontMetrics = this.mPaintDebug.getFontMetrics();
        this.mPaintDebug.measureText(ExifInterface.LONGITUDE_WEST);
        int i2 = (int) (fontMetrics.descent - fontMetrics.ascent);
        int density = (int) (this.mImageRect.left + (this.mHandleSize * 0.5f * getDensity()));
        int density2 = (int) (this.mImageRect.top + i2 + (this.mHandleSize * 0.5f * getDensity()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LOADED FROM: ");
        sb2.append(this.mSourceUri != null ? "Uri" : Registry.BUCKET_BITMAP);
        float f = density;
        canvas.drawText(sb2.toString(), f, density2, this.mPaintDebug);
        StringBuilder sb3 = new StringBuilder();
        if (this.mSourceUri == null) {
            sb3.append("INPUT_IMAGE_SIZE: ");
            sb3.append((int) this.mImgWidth);
            sb3.append("x");
            sb3.append((int) this.mImgHeight);
            i = density2 + i2;
            canvas.drawText(sb3.toString(), f, i, this.mPaintDebug);
            sb = new StringBuilder();
        } else {
            i = density2 + i2;
            canvas.drawText("INPUT_IMAGE_SIZE: " + this.mInputImageWidth + "x" + this.mInputImageHeight, f, i, this.mPaintDebug);
            sb = new StringBuilder();
        }
        sb.append("LOADED_IMAGE_SIZE: ");
        sb.append(getBitmap().getWidth());
        sb.append("x");
        sb.append(getBitmap().getHeight());
        int i3 = i + i2;
        canvas.drawText(sb.toString(), f, i3, this.mPaintDebug);
        StringBuilder sb4 = new StringBuilder();
        if (this.mOutputImageWidth > 0 && this.mOutputImageHeight > 0) {
            sb4.append("OUTPUT_IMAGE_SIZE: ");
            sb4.append(this.mOutputImageWidth);
            sb4.append("x");
            sb4.append(this.mOutputImageHeight);
            int i4 = i3 + i2;
            canvas.drawText(sb4.toString(), f, i4, this.mPaintDebug);
            int i5 = i4 + i2;
            canvas.drawText("EXIF ROTATION: " + this.mExifRotation, f, i5, this.mPaintDebug);
            i3 = i5 + i2;
            canvas.drawText("CURRENT_ROTATION: " + ((int) this.mAngle), f, i3, this.mPaintDebug);
        }
        canvas.drawText("FRAME_RECT: " + this.mFrameRect.toString(), f, i3 + i2, this.mPaintDebug);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("ACTUAL_CROP_RECT: ");
        sb5.append(getActualCropRect() != null ? getActualCropRect().toString() : "");
        canvas.drawText(sb5.toString(), f, r2 + i2, this.mPaintDebug);
    }

    private void drawCropFrame(Canvas canvas) {
        if (this.mIsCropEnabled && !this.mIsRotating) {
            drawOverlay(canvas);
            drawFrame(canvas);
            if (this.mShowGuide) {
                drawGuidelines(canvas);
            }
            if (this.mShowHandle) {
                drawHandles(canvas);
            }
        }
    }

    private void drawOverlay(Canvas canvas) {
        this.mPaintTranslucent.setAntiAlias(true);
        this.mPaintTranslucent.setFilterBitmap(true);
        this.mPaintTranslucent.setColor(this.mOverlayColor);
        this.mPaintTranslucent.setStyle(Paint.Style.FILL);
        Path path = new Path();
        RectF rectF = new RectF((float) Math.floor(this.mImageRect.left), (float) Math.floor(this.mImageRect.top), (float) Math.ceil(this.mImageRect.right), (float) Math.ceil(this.mImageRect.bottom));
        if (!this.mIsAnimating && (this.mCropMode == CropMode.CIRCLE || this.mCropMode == CropMode.CIRCLE_SQUARE)) {
            path.addRect(rectF, Path.Direction.CW);
            PointF pointF = new PointF((this.mFrameRect.left + this.mFrameRect.right) / 2.0f, (this.mFrameRect.top + this.mFrameRect.bottom) / 2.0f);
            path.addCircle(pointF.x, pointF.y, (this.mFrameRect.right - this.mFrameRect.left) / 2.0f, Path.Direction.CCW);
            canvas.drawPath(path, this.mPaintTranslucent);
            return;
        }
        path.addRect(rectF, Path.Direction.CW);
        path.addRect(this.mFrameRect, Path.Direction.CCW);
        canvas.drawPath(path, this.mPaintTranslucent);
    }

    private void drawFrame(Canvas canvas) {
        this.mPaintFrame.setAntiAlias(true);
        this.mPaintFrame.setFilterBitmap(true);
        this.mPaintFrame.setStyle(Paint.Style.STROKE);
        this.mPaintFrame.setColor(this.mFrameColor);
        this.mPaintFrame.setStrokeWidth(this.mFrameStrokeWeight);
        canvas.drawRect(this.mFrameRect, this.mPaintFrame);
    }

    private void drawGuidelines(Canvas canvas) {
        this.mPaintFrame.setColor(this.mGuideColor);
        this.mPaintFrame.setStrokeWidth(this.mGuideStrokeWeight);
        float f = this.mFrameRect.left + ((this.mFrameRect.right - this.mFrameRect.left) / 3.0f);
        float f2 = this.mFrameRect.right - ((this.mFrameRect.right - this.mFrameRect.left) / 3.0f);
        float f3 = this.mFrameRect.top + ((this.mFrameRect.bottom - this.mFrameRect.top) / 3.0f);
        float f4 = this.mFrameRect.bottom - ((this.mFrameRect.bottom - this.mFrameRect.top) / 3.0f);
        canvas.drawLine(f, this.mFrameRect.top, f, this.mFrameRect.bottom, this.mPaintFrame);
        canvas.drawLine(f2, this.mFrameRect.top, f2, this.mFrameRect.bottom, this.mPaintFrame);
        canvas.drawLine(this.mFrameRect.left, f3, this.mFrameRect.right, f3, this.mPaintFrame);
        canvas.drawLine(this.mFrameRect.left, f4, this.mFrameRect.right, f4, this.mPaintFrame);
    }

    private void drawHandles(Canvas canvas) {
        if (this.mIsHandleShadowEnabled) {
            drawHandleShadows(canvas);
        }
        this.mPaintFrame.setStyle(Paint.Style.FILL);
        this.mPaintFrame.setColor(this.mHandleColor);
        canvas.drawCircle(this.mFrameRect.left, this.mFrameRect.top, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(this.mFrameRect.right, this.mFrameRect.top, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(this.mFrameRect.left, this.mFrameRect.bottom, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(this.mFrameRect.right, this.mFrameRect.bottom, this.mHandleSize, this.mPaintFrame);
    }

    private void drawHandleShadows(Canvas canvas) {
        this.mPaintFrame.setStyle(Paint.Style.FILL);
        this.mPaintFrame.setColor(TRANSLUCENT_BLACK);
        RectF rectF = new RectF(this.mFrameRect);
        rectF.offset(0.0f, 1.0f);
        canvas.drawCircle(rectF.left, rectF.top, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(rectF.right, rectF.top, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(rectF.left, rectF.bottom, this.mHandleSize, this.mPaintFrame);
        canvas.drawCircle(rectF.right, rectF.bottom, this.mHandleSize, this.mPaintFrame);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMatrix() {
        this.mMatrix.reset();
        this.mMatrix.setTranslate(this.mCenter.x - (this.mImgWidth * 0.5f), this.mCenter.y - (this.mImgHeight * 0.5f));
        Matrix matrix = this.mMatrix;
        float f = this.mScale;
        matrix.postScale(f, f, this.mCenter.x, this.mCenter.y);
        this.mMatrix.postRotate(this.mAngle, this.mCenter.x, this.mCenter.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupLayout(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        setCenter(new PointF(getPaddingLeft() + (i * 0.5f), getPaddingTop() + (i2 * 0.5f)));
        setScale(calcScale(i, i2, this.mAngle));
        setMatrix();
        this.mImageRect = calcImageRect(new RectF(0.0f, 0.0f, this.mImgWidth, this.mImgHeight), this.mMatrix);
        RectF rectF = this.mInitialFrameRect;
        if (rectF != null) {
            this.mFrameRect = applyInitialFrameRect(rectF);
        } else {
            this.mFrameRect = calcFrameRect(this.mImageRect);
        }
        this.mIsInitialized = true;
        invalidate();
    }

    private float calcScale(int i, int i2, float f) {
        this.mImgWidth = getDrawable().getIntrinsicWidth();
        this.mImgHeight = getDrawable().getIntrinsicHeight();
        if (this.mImgWidth <= 0.0f) {
            this.mImgWidth = i;
        }
        if (this.mImgHeight <= 0.0f) {
            this.mImgHeight = i2;
        }
        float f2 = i;
        float f3 = i2;
        float f4 = f2 / f3;
        float rotatedWidth = getRotatedWidth(f) / getRotatedHeight(f);
        if (rotatedWidth >= f4) {
            return f2 / getRotatedWidth(f);
        }
        if (rotatedWidth < f4) {
            return f3 / getRotatedHeight(f);
        }
        return 1.0f;
    }

    private RectF calcImageRect(RectF rectF, Matrix matrix) {
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        return rectF2;
    }

    private RectF calcFrameRect(RectF rectF) {
        float ratioX = getRatioX(rectF.width());
        float ratioY = getRatioY(rectF.height());
        float fWidth = rectF.width() / rectF.height();
        float f = ratioX / ratioY;
        float f2 = rectF.left;
        float f3 = rectF.top;
        float f4 = rectF.right;
        float f5 = rectF.bottom;
        if (f >= fWidth) {
            f2 = rectF.left;
            f4 = rectF.right;
            float f6 = (rectF.top + rectF.bottom) * 0.5f;
            float fWidth2 = (rectF.width() / f) * 0.5f;
            f3 = f6 - fWidth2;
            f5 = f6 + fWidth2;
        } else if (f < fWidth) {
            f3 = rectF.top;
            f5 = rectF.bottom;
            float f7 = (rectF.left + rectF.right) * 0.5f;
            float fHeight = rectF.height() * f * 0.5f;
            f4 = f7 + fHeight;
            f2 = f7 - fHeight;
        }
        float f8 = f4 - f2;
        float f9 = f5 - f3;
        float f10 = f2 + (f8 / 2.0f);
        float f11 = f3 + (f9 / 2.0f);
        float f12 = this.mInitialFrameScale;
        float f13 = (f8 * f12) / 2.0f;
        float f14 = (f9 * f12) / 2.0f;
        return new RectF(f10 - f13, f11 - f14, f10 + f13, f11 + f14);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mIsInitialized || !this.mIsCropEnabled || !this.mIsEnabled || this.mIsRotating || this.mIsAnimating || this.mIsLoading.get() || this.mIsCropping.get()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            onDown(motionEvent);
            return true;
        }
        if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            onUp(motionEvent);
            return true;
        }
        if (action == 2) {
            onMove(motionEvent);
            if (this.mTouchArea != TouchArea.OUT_OF_BOUNDS) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
        if (action != 3) {
            return false;
        }
        getParent().requestDisallowInterceptTouchEvent(false);
        onCancel();
        return true;
    }

    private void onDown(MotionEvent motionEvent) {
        invalidate();
        this.mLastX = motionEvent.getX();
        this.mLastY = motionEvent.getY();
        checkTouchArea(motionEvent.getX(), motionEvent.getY());
    }

    private void onMove(MotionEvent motionEvent) {
        float x = motionEvent.getX() - this.mLastX;
        float y = motionEvent.getY() - this.mLastY;
        int i = C123818.$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[this.mTouchArea.ordinal()];
        if (i == 1) {
            moveFrame(x, y);
        } else if (i == 2) {
            moveHandleLT(x, y);
        } else if (i == 3) {
            moveHandleRT(x, y);
        } else if (i == 4) {
            moveHandleLB(x, y);
        } else if (i == 5) {
            moveHandleRB(x, y);
        }
        invalidate();
        this.mLastX = motionEvent.getX();
        this.mLastY = motionEvent.getY();
    }

    private void onUp(MotionEvent motionEvent) {
        if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
            this.mShowGuide = false;
        }
        if (this.mHandleShowMode == ShowMode.SHOW_ON_TOUCH) {
            this.mShowHandle = false;
        }
        this.mTouchArea = TouchArea.OUT_OF_BOUNDS;
        invalidate();
    }

    private void onCancel() {
        this.mTouchArea = TouchArea.OUT_OF_BOUNDS;
        invalidate();
    }

    private void checkTouchArea(float f, float f2) {
        if (isInsideCornerLeftTop(f, f2)) {
            this.mTouchArea = TouchArea.LEFT_TOP;
            if (this.mHandleShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowHandle = true;
            }
            if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowGuide = true;
                return;
            }
            return;
        }
        if (isInsideCornerRightTop(f, f2)) {
            this.mTouchArea = TouchArea.RIGHT_TOP;
            if (this.mHandleShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowHandle = true;
            }
            if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowGuide = true;
                return;
            }
            return;
        }
        if (isInsideCornerLeftBottom(f, f2)) {
            this.mTouchArea = TouchArea.LEFT_BOTTOM;
            if (this.mHandleShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowHandle = true;
            }
            if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowGuide = true;
                return;
            }
            return;
        }
        if (isInsideCornerRightBottom(f, f2)) {
            this.mTouchArea = TouchArea.RIGHT_BOTTOM;
            if (this.mHandleShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowHandle = true;
            }
            if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowGuide = true;
                return;
            }
            return;
        }
        if (isInsideFrame(f, f2)) {
            if (this.mGuideShowMode == ShowMode.SHOW_ON_TOUCH) {
                this.mShowGuide = true;
            }
            this.mTouchArea = TouchArea.CENTER;
            return;
        }
        this.mTouchArea = TouchArea.OUT_OF_BOUNDS;
    }

    private boolean isInsideFrame(float f, float f2) {
        if (this.mFrameRect.left > f || this.mFrameRect.right < f || this.mFrameRect.top > f2 || this.mFrameRect.bottom < f2) {
            return false;
        }
        this.mTouchArea = TouchArea.CENTER;
        return true;
    }

    private boolean isInsideCornerLeftTop(float f, float f2) {
        float f3 = f - this.mFrameRect.left;
        float f4 = f2 - this.mFrameRect.top;
        return m308sq((float) (this.mHandleSize + this.mTouchPadding)) >= (f3 * f3) + (f4 * f4);
    }

    private boolean isInsideCornerRightTop(float f, float f2) {
        float f3 = f - this.mFrameRect.right;
        float f4 = f2 - this.mFrameRect.top;
        return m308sq((float) (this.mHandleSize + this.mTouchPadding)) >= (f3 * f3) + (f4 * f4);
    }

    private boolean isInsideCornerLeftBottom(float f, float f2) {
        float f3 = f - this.mFrameRect.left;
        float f4 = f2 - this.mFrameRect.bottom;
        return m308sq((float) (this.mHandleSize + this.mTouchPadding)) >= (f3 * f3) + (f4 * f4);
    }

    private boolean isInsideCornerRightBottom(float f, float f2) {
        float f3 = f - this.mFrameRect.right;
        float f4 = f2 - this.mFrameRect.bottom;
        return m308sq((float) (this.mHandleSize + this.mTouchPadding)) >= (f3 * f3) + (f4 * f4);
    }

    private void moveFrame(float f, float f2) {
        this.mFrameRect.left += f;
        this.mFrameRect.right += f;
        this.mFrameRect.top += f2;
        this.mFrameRect.bottom += f2;
        checkMoveBounds();
    }

    private void moveHandleLT(float f, float f2) {
        if (this.mCropMode == CropMode.FREE) {
            this.mFrameRect.left += f;
            this.mFrameRect.top += f2;
            if (isWidthTooSmall()) {
                this.mFrameRect.left -= this.mMinFrameSize - getFrameW();
            }
            if (isHeightTooSmall()) {
                this.mFrameRect.top -= this.mMinFrameSize - getFrameH();
            }
            checkScaleBounds();
            return;
        }
        float ratioY = (getRatioY() * f) / getRatioX();
        this.mFrameRect.left += f;
        this.mFrameRect.top += ratioY;
        if (isWidthTooSmall()) {
            float frameW = this.mMinFrameSize - getFrameW();
            this.mFrameRect.left -= frameW;
            this.mFrameRect.top -= (frameW * getRatioY()) / getRatioX();
        }
        if (isHeightTooSmall()) {
            float frameH = this.mMinFrameSize - getFrameH();
            this.mFrameRect.top -= frameH;
            this.mFrameRect.left -= (frameH * getRatioX()) / getRatioY();
        }
        if (!isInsideHorizontal(this.mFrameRect.left)) {
            float f3 = this.mImageRect.left - this.mFrameRect.left;
            this.mFrameRect.left += f3;
            this.mFrameRect.top += (f3 * getRatioY()) / getRatioX();
        }
        if (isInsideVertical(this.mFrameRect.top)) {
            return;
        }
        float f4 = this.mImageRect.top - this.mFrameRect.top;
        this.mFrameRect.top += f4;
        this.mFrameRect.left += (f4 * getRatioX()) / getRatioY();
    }

    private void moveHandleRT(float f, float f2) {
        if (this.mCropMode == CropMode.FREE) {
            this.mFrameRect.right += f;
            this.mFrameRect.top += f2;
            if (isWidthTooSmall()) {
                this.mFrameRect.right += this.mMinFrameSize - getFrameW();
            }
            if (isHeightTooSmall()) {
                this.mFrameRect.top -= this.mMinFrameSize - getFrameH();
            }
            checkScaleBounds();
            return;
        }
        float ratioY = (getRatioY() * f) / getRatioX();
        this.mFrameRect.right += f;
        this.mFrameRect.top -= ratioY;
        if (isWidthTooSmall()) {
            float frameW = this.mMinFrameSize - getFrameW();
            this.mFrameRect.right += frameW;
            this.mFrameRect.top -= (frameW * getRatioY()) / getRatioX();
        }
        if (isHeightTooSmall()) {
            float frameH = this.mMinFrameSize - getFrameH();
            this.mFrameRect.top -= frameH;
            this.mFrameRect.right += (frameH * getRatioX()) / getRatioY();
        }
        if (!isInsideHorizontal(this.mFrameRect.right)) {
            float f3 = this.mFrameRect.right - this.mImageRect.right;
            this.mFrameRect.right -= f3;
            this.mFrameRect.top += (f3 * getRatioY()) / getRatioX();
        }
        if (isInsideVertical(this.mFrameRect.top)) {
            return;
        }
        float f4 = this.mImageRect.top - this.mFrameRect.top;
        this.mFrameRect.top += f4;
        this.mFrameRect.right -= (f4 * getRatioX()) / getRatioY();
    }

    private void moveHandleLB(float f, float f2) {
        if (this.mCropMode == CropMode.FREE) {
            this.mFrameRect.left += f;
            this.mFrameRect.bottom += f2;
            if (isWidthTooSmall()) {
                this.mFrameRect.left -= this.mMinFrameSize - getFrameW();
            }
            if (isHeightTooSmall()) {
                this.mFrameRect.bottom += this.mMinFrameSize - getFrameH();
            }
            checkScaleBounds();
            return;
        }
        float ratioY = (getRatioY() * f) / getRatioX();
        this.mFrameRect.left += f;
        this.mFrameRect.bottom -= ratioY;
        if (isWidthTooSmall()) {
            float frameW = this.mMinFrameSize - getFrameW();
            this.mFrameRect.left -= frameW;
            this.mFrameRect.bottom += (frameW * getRatioY()) / getRatioX();
        }
        if (isHeightTooSmall()) {
            float frameH = this.mMinFrameSize - getFrameH();
            this.mFrameRect.bottom += frameH;
            this.mFrameRect.left -= (frameH * getRatioX()) / getRatioY();
        }
        if (!isInsideHorizontal(this.mFrameRect.left)) {
            float f3 = this.mImageRect.left - this.mFrameRect.left;
            this.mFrameRect.left += f3;
            this.mFrameRect.bottom -= (f3 * getRatioY()) / getRatioX();
        }
        if (isInsideVertical(this.mFrameRect.bottom)) {
            return;
        }
        float f4 = this.mFrameRect.bottom - this.mImageRect.bottom;
        this.mFrameRect.bottom -= f4;
        this.mFrameRect.left += (f4 * getRatioX()) / getRatioY();
    }

    private void moveHandleRB(float f, float f2) {
        if (this.mCropMode == CropMode.FREE) {
            this.mFrameRect.right += f;
            this.mFrameRect.bottom += f2;
            if (isWidthTooSmall()) {
                this.mFrameRect.right += this.mMinFrameSize - getFrameW();
            }
            if (isHeightTooSmall()) {
                this.mFrameRect.bottom += this.mMinFrameSize - getFrameH();
            }
            checkScaleBounds();
            return;
        }
        float ratioY = (getRatioY() * f) / getRatioX();
        this.mFrameRect.right += f;
        this.mFrameRect.bottom += ratioY;
        if (isWidthTooSmall()) {
            float frameW = this.mMinFrameSize - getFrameW();
            this.mFrameRect.right += frameW;
            this.mFrameRect.bottom += (frameW * getRatioY()) / getRatioX();
        }
        if (isHeightTooSmall()) {
            float frameH = this.mMinFrameSize - getFrameH();
            this.mFrameRect.bottom += frameH;
            this.mFrameRect.right += (frameH * getRatioX()) / getRatioY();
        }
        if (!isInsideHorizontal(this.mFrameRect.right)) {
            float f3 = this.mFrameRect.right - this.mImageRect.right;
            this.mFrameRect.right -= f3;
            this.mFrameRect.bottom -= (f3 * getRatioY()) / getRatioX();
        }
        if (isInsideVertical(this.mFrameRect.bottom)) {
            return;
        }
        float f4 = this.mFrameRect.bottom - this.mImageRect.bottom;
        this.mFrameRect.bottom -= f4;
        this.mFrameRect.right -= (f4 * getRatioX()) / getRatioY();
    }

    private void checkScaleBounds() {
        float f = this.mFrameRect.left - this.mImageRect.left;
        float f2 = this.mFrameRect.right - this.mImageRect.right;
        float f3 = this.mFrameRect.top - this.mImageRect.top;
        float f4 = this.mFrameRect.bottom - this.mImageRect.bottom;
        if (f < 0.0f) {
            this.mFrameRect.left -= f;
        }
        if (f2 > 0.0f) {
            this.mFrameRect.right -= f2;
        }
        if (f3 < 0.0f) {
            this.mFrameRect.top -= f3;
        }
        if (f4 > 0.0f) {
            this.mFrameRect.bottom -= f4;
        }
    }

    private void checkMoveBounds() {
        float f = this.mFrameRect.left - this.mImageRect.left;
        if (f < 0.0f) {
            this.mFrameRect.left -= f;
            this.mFrameRect.right -= f;
        }
        float f2 = this.mFrameRect.right - this.mImageRect.right;
        if (f2 > 0.0f) {
            this.mFrameRect.left -= f2;
            this.mFrameRect.right -= f2;
        }
        float f3 = this.mFrameRect.top - this.mImageRect.top;
        if (f3 < 0.0f) {
            this.mFrameRect.top -= f3;
            this.mFrameRect.bottom -= f3;
        }
        float f4 = this.mFrameRect.bottom - this.mImageRect.bottom;
        if (f4 > 0.0f) {
            this.mFrameRect.top -= f4;
            this.mFrameRect.bottom -= f4;
        }
    }

    private boolean isInsideHorizontal(float f) {
        return this.mImageRect.left <= f && this.mImageRect.right >= f;
    }

    private boolean isInsideVertical(float f) {
        return this.mImageRect.top <= f && this.mImageRect.bottom >= f;
    }

    private boolean isWidthTooSmall() {
        return getFrameW() < this.mMinFrameSize;
    }

    private boolean isHeightTooSmall() {
        return getFrameH() < this.mMinFrameSize;
    }

    private void recalculateFrameRect(int i) {
        if (this.mImageRect == null) {
            return;
        }
        if (this.mIsAnimating) {
            getAnimator().cancelAnimation();
        }
        final RectF rectF = new RectF(this.mFrameRect);
        final RectF rectFCalcFrameRect = calcFrameRect(this.mImageRect);
        final float f = rectFCalcFrameRect.left - rectF.left;
        final float f2 = rectFCalcFrameRect.top - rectF.top;
        final float f3 = rectFCalcFrameRect.right - rectF.right;
        final float f4 = rectFCalcFrameRect.bottom - rectF.bottom;
        if (this.mIsAnimationEnabled) {
            SimpleValueAnimator animator = getAnimator();
            animator.addAnimatorListener(new SimpleValueAnimatorListener() { // from class: com.isseiaoki.simplecropview.CropImageView.1
                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationStarted() {
                    CropImageView.this.mIsAnimating = true;
                }

                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationUpdated(float f5) {
                    CropImageView.this.mFrameRect = new RectF(rectF.left + (f * f5), rectF.top + (f2 * f5), rectF.right + (f3 * f5), rectF.bottom + (f4 * f5));
                    CropImageView.this.invalidate();
                }

                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationFinished() {
                    CropImageView.this.mFrameRect = rectFCalcFrameRect;
                    CropImageView.this.invalidate();
                    CropImageView.this.mIsAnimating = false;
                }
            });
            animator.startAnimation(i);
        } else {
            this.mFrameRect = calcFrameRect(this.mImageRect);
            invalidate();
        }
    }

    private float getRatioX(float f) {
        switch (this.mCropMode) {
            case FIT_IMAGE:
                return this.mImageRect.width();
            case FREE:
                return f;
            case RATIO_4_3:
                return 4.0f;
            case RATIO_3_4:
                return 3.0f;
            case RATIO_16_9:
                return 16.0f;
            case RATIO_9_16:
                return 9.0f;
            case SQUARE:
            case CIRCLE:
            case CIRCLE_SQUARE:
                return 1.0f;
            case CUSTOM:
                return this.mCustomRatio.x;
            default:
                return f;
        }
    }

    private float getRatioY(float f) {
        switch (this.mCropMode) {
            case FIT_IMAGE:
                return this.mImageRect.height();
            case FREE:
                return f;
            case RATIO_4_3:
                return 3.0f;
            case RATIO_3_4:
                return 4.0f;
            case RATIO_16_9:
                return 9.0f;
            case RATIO_9_16:
                return 16.0f;
            case SQUARE:
            case CIRCLE:
            case CIRCLE_SQUARE:
                return 1.0f;
            case CUSTOM:
                return this.mCustomRatio.y;
            default:
                return f;
        }
    }

    private float getRatioX() {
        switch (this.mCropMode) {
            case FIT_IMAGE:
                return this.mImageRect.width();
            case FREE:
            default:
                return 1.0f;
            case RATIO_4_3:
                return 4.0f;
            case RATIO_3_4:
                return 3.0f;
            case RATIO_16_9:
                return 16.0f;
            case RATIO_9_16:
                return 9.0f;
            case SQUARE:
            case CIRCLE:
            case CIRCLE_SQUARE:
                return 1.0f;
            case CUSTOM:
                return this.mCustomRatio.x;
        }
    }

    private float getRatioY() {
        switch (this.mCropMode) {
            case FIT_IMAGE:
                return this.mImageRect.height();
            case FREE:
            default:
                return 1.0f;
            case RATIO_4_3:
                return 3.0f;
            case RATIO_3_4:
                return 4.0f;
            case RATIO_16_9:
                return 9.0f;
            case RATIO_9_16:
                return 16.0f;
            case SQUARE:
            case CIRCLE:
            case CIRCLE_SQUARE:
                return 1.0f;
            case CUSTOM:
                return this.mCustomRatio.y;
        }
    }

    private float getDensity() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postErrorOnMainThread(final Callback callback, final Throwable th) {
        if (callback == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            callback.onError(th);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.2
                @Override // java.lang.Runnable
                public void run() {
                    callback.onError(th);
                }
            });
        }
    }

    private Bitmap getBitmap() {
        Drawable drawable = getDrawable();
        if (drawable == null || !(drawable instanceof BitmapDrawable)) {
            return null;
        }
        return ((BitmapDrawable) drawable).getBitmap();
    }

    private float getRotatedWidth(float f) {
        return getRotatedWidth(f, this.mImgWidth, this.mImgHeight);
    }

    private float getRotatedHeight(float f) {
        return getRotatedHeight(f, this.mImgWidth, this.mImgHeight);
    }

    private Bitmap getRotatedBitmap(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.setRotate(this.mAngle, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private SimpleValueAnimator getAnimator() {
        setupAnimatorIfNeeded();
        return this.mAnimator;
    }

    private void setupAnimatorIfNeeded() {
        if (this.mAnimator == null) {
            if (Build.VERSION.SDK_INT < 14) {
                this.mAnimator = new ValueAnimatorV8(this.mInterpolator);
            } else {
                this.mAnimator = new ValueAnimatorV14(this.mInterpolator);
            }
        }
    }

    private Bitmap getCroppedBitmapFromUri() throws IOException {
        InputStream inputStreamOpenInputStream = null;
        try {
            inputStreamOpenInputStream = getContext().getContentResolver().openInputStream(this.mSourceUri);
            BitmapRegionDecoder bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
            int width = bitmapRegionDecoderNewInstance.getWidth();
            int height = bitmapRegionDecoderNewInstance.getHeight();
            Rect rectCalcCropRect = calcCropRect(width, height);
            if (this.mAngle != 0.0f) {
                Matrix matrix = new Matrix();
                matrix.setRotate(-this.mAngle);
                RectF rectF = new RectF();
                matrix.mapRect(rectF, new RectF(rectCalcCropRect));
                rectF.offset(rectF.left < 0.0f ? width : 0.0f, rectF.top < 0.0f ? height : 0.0f);
                rectCalcCropRect = new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            }
            Bitmap bitmapDecodeRegion = bitmapRegionDecoderNewInstance.decodeRegion(rectCalcCropRect, new BitmapFactory.Options());
            if (this.mAngle != 0.0f) {
                Bitmap rotatedBitmap = getRotatedBitmap(bitmapDecodeRegion);
                if (bitmapDecodeRegion != getBitmap() && bitmapDecodeRegion != rotatedBitmap) {
                    bitmapDecodeRegion.recycle();
                }
                bitmapDecodeRegion = rotatedBitmap;
            }
            return bitmapDecodeRegion;
        } finally {
            Utils.closeQuietly(inputStreamOpenInputStream);
        }
    }

    private Rect calcCropRect(int i, int i2) {
        float f = i;
        float f2 = i2;
        float rotatedWidth = getRotatedWidth(this.mAngle, f, f2) / this.mImageRect.width();
        float f3 = this.mImageRect.left * rotatedWidth;
        float f4 = this.mImageRect.top * rotatedWidth;
        return new Rect(Math.max(Math.round((this.mFrameRect.left * rotatedWidth) - f3), 0), Math.max(Math.round((this.mFrameRect.top * rotatedWidth) - f4), 0), Math.min(Math.round((this.mFrameRect.right * rotatedWidth) - f3), Math.round(getRotatedWidth(this.mAngle, f, f2))), Math.min(Math.round((this.mFrameRect.bottom * rotatedWidth) - f4), Math.round(getRotatedHeight(this.mAngle, f, f2))));
    }

    private Bitmap scaleBitmapIfNeeded(Bitmap bitmap) {
        int i;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float ratioX = getRatioX(this.mFrameRect.width()) / getRatioY(this.mFrameRect.height());
        int iRound = this.mOutputWidth;
        int iRound2 = 0;
        if (iRound > 0) {
            iRound2 = Math.round(iRound / ratioX);
        } else {
            int i2 = this.mOutputHeight;
            if (i2 > 0) {
                iRound2 = i2;
                iRound = Math.round(i2 * ratioX);
            } else {
                int i3 = this.mOutputMaxWidth;
                if (i3 <= 0 || (i = this.mOutputMaxHeight) <= 0 || (width <= i3 && height <= i)) {
                    iRound = 0;
                } else {
                    iRound = this.mOutputMaxWidth;
                    iRound2 = this.mOutputMaxHeight;
                    if (iRound / iRound2 >= ratioX) {
                        iRound = Math.round(iRound2 * ratioX);
                    } else {
                        iRound2 = Math.round(iRound / ratioX);
                    }
                }
            }
        }
        if (iRound <= 0 || iRound2 <= 0) {
            return bitmap;
        }
        Bitmap scaledBitmap = Utils.getScaledBitmap(bitmap, iRound, iRound2);
        if (bitmap != getBitmap() && bitmap != scaledBitmap) {
            bitmap.recycle();
        }
        return scaledBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri saveImage(Bitmap bitmap, Uri uri) throws IllegalStateException, IOException {
        this.mSaveUri = uri;
        if (this.mSaveUri == null) {
            throw new IllegalStateException("Save uri must not be null.");
        }
        OutputStream outputStreamOpenOutputStream = null;
        try {
            outputStreamOpenOutputStream = getContext().getContentResolver().openOutputStream(uri);
            bitmap.compress(this.mCompressFormat, this.mCompressQuality, outputStreamOpenOutputStream);
            Utils.copyExifInfo(getContext(), this.mSourceUri, uri, bitmap.getWidth(), bitmap.getHeight());
            Utils.updateGalleryInfo(getContext(), uri);
            return uri;
        } finally {
            Utils.closeQuietly(outputStreamOpenOutputStream);
        }
    }

    public Bitmap getImageBitmap() {
        return getBitmap();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.mIsInitialized = false;
        resetImageInfo();
        super.setImageResource(i);
        updateLayout();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.mIsInitialized = false;
        resetImageInfo();
        setImageDrawableInternal(drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageDrawableInternal(Drawable drawable) {
        super.setImageDrawable(drawable);
        updateLayout();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        this.mIsInitialized = false;
        super.setImageURI(uri);
        updateLayout();
    }

    private void updateLayout() {
        if (getDrawable() != null) {
            setupLayout(this.mViewWidth, this.mViewHeight);
        }
    }

    private void resetImageInfo() {
        if (this.mIsLoading.get()) {
            return;
        }
        this.mSourceUri = null;
        this.mSaveUri = null;
        this.mInputImageWidth = 0;
        this.mInputImageHeight = 0;
        this.mOutputImageWidth = 0;
        this.mOutputImageHeight = 0;
        this.mAngle = this.mExifRotation;
    }

    public void startLoad(Uri uri, LoadCallback loadCallback) {
        loadAsync(uri, loadCallback);
    }

    public void loadAsync(Uri uri, LoadCallback loadCallback) {
        loadAsync(uri, false, null, loadCallback);
    }

    public void loadAsync(final Uri uri, final boolean z, final RectF rectF, final LoadCallback loadCallback) {
        this.mExecutor.submit(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        CropImageView.this.mIsLoading.set(true);
                        CropImageView.this.mSourceUri = uri;
                        CropImageView.this.mInitialFrameRect = rectF;
                        if (z) {
                            CropImageView.this.applyThumbnail(uri);
                        }
                        final Bitmap image = CropImageView.this.getImage(uri);
                        CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                CropImageView.this.mAngle = CropImageView.this.mExifRotation;
                                CropImageView.this.setImageDrawableInternal(new BitmapDrawable(CropImageView.this.getResources(), image));
                                if (loadCallback != null) {
                                    loadCallback.onSuccess();
                                }
                            }
                        });
                    } catch (Exception e) {
                        CropImageView.this.postErrorOnMainThread(loadCallback, e);
                    }
                } finally {
                    CropImageView.this.mIsLoading.set(false);
                }
            }
        });
    }

    public Completable loadAsCompletable(Uri uri) {
        return loadAsCompletable(uri, false, null);
    }

    public Completable loadAsCompletable(final Uri uri, final boolean z, final RectF rectF) {
        return Completable.create(new CompletableOnSubscribe() { // from class: com.isseiaoki.simplecropview.CropImageView.6
            public void subscribe(final CompletableEmitter completableEmitter) throws Exception {
                CropImageView.this.mInitialFrameRect = rectF;
                CropImageView.this.mSourceUri = uri;
                if (z) {
                    CropImageView.this.applyThumbnail(uri);
                }
                final Bitmap image = CropImageView.this.getImage(uri);
                CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CropImageView.this.mAngle = CropImageView.this.mExifRotation;
                        CropImageView.this.setImageDrawableInternal(new BitmapDrawable(CropImageView.this.getResources(), image));
                        completableEmitter.onComplete();
                    }
                });
            }
        }).doOnSubscribe(new Consumer<Disposable>() { // from class: com.isseiaoki.simplecropview.CropImageView.5
            public void accept(Disposable disposable) throws Exception {
                CropImageView.this.mIsLoading.set(true);
            }
        }).doFinally(new Action() { // from class: com.isseiaoki.simplecropview.CropImageView.4
            public void run() throws Exception {
                CropImageView.this.mIsLoading.set(false);
            }
        });
    }

    public LoadRequest load(Uri uri) {
        return new LoadRequest(this, uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyThumbnail(Uri uri) throws Throwable {
        final Bitmap thumbnail = getThumbnail(uri);
        if (thumbnail == null) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.7
            @Override // java.lang.Runnable
            public void run() {
                CropImageView.this.mAngle = r0.mExifRotation;
                CropImageView cropImageView = CropImageView.this;
                cropImageView.setImageDrawableInternal(new BitmapDrawable(cropImageView.getResources(), thumbnail));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getImage(Uri uri) throws Throwable {
        if (uri == null) {
            throw new IllegalStateException("Source Uri must not be null.");
        }
        this.mExifRotation = Utils.getExifOrientation(getContext(), this.mSourceUri);
        int maxSize = Utils.getMaxSize();
        int iMax = Math.max(this.mViewWidth, this.mViewHeight);
        if (iMax != 0) {
            maxSize = iMax;
        }
        Bitmap bitmapDecodeSampledBitmapFromUri = Utils.decodeSampledBitmapFromUri(getContext(), this.mSourceUri, maxSize);
        this.mInputImageWidth = Utils.sInputImageWidth;
        this.mInputImageHeight = Utils.sInputImageHeight;
        return bitmapDecodeSampledBitmapFromUri;
    }

    private Bitmap getThumbnail(Uri uri) throws Throwable {
        if (uri == null) {
            throw new IllegalStateException("Source Uri must not be null.");
        }
        this.mExifRotation = Utils.getExifOrientation(getContext(), this.mSourceUri);
        int iMax = (int) (Math.max(this.mViewWidth, this.mViewHeight) * 0.1f);
        if (iMax == 0) {
            return null;
        }
        Bitmap bitmapDecodeSampledBitmapFromUri = Utils.decodeSampledBitmapFromUri(getContext(), this.mSourceUri, iMax);
        this.mInputImageWidth = Utils.sInputImageWidth;
        this.mInputImageHeight = Utils.sInputImageHeight;
        return bitmapDecodeSampledBitmapFromUri;
    }

    public void rotateImage(RotateDegrees rotateDegrees, int i) {
        if (this.mIsRotating) {
            getAnimator().cancelAnimation();
        }
        final float f = this.mAngle;
        final float value = f + rotateDegrees.getValue();
        final float f2 = value - f;
        final float f3 = this.mScale;
        final float fCalcScale = calcScale(this.mViewWidth, this.mViewHeight, value);
        if (this.mIsAnimationEnabled) {
            final float f4 = fCalcScale - f3;
            SimpleValueAnimator animator = getAnimator();
            animator.addAnimatorListener(new SimpleValueAnimatorListener() { // from class: com.isseiaoki.simplecropview.CropImageView.8
                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationStarted() {
                    CropImageView.this.mIsRotating = true;
                }

                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationUpdated(float f5) {
                    CropImageView.this.mAngle = f + (f2 * f5);
                    CropImageView.this.mScale = f3 + (f4 * f5);
                    CropImageView.this.setMatrix();
                    CropImageView.this.invalidate();
                }

                @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
                public void onAnimationFinished() {
                    CropImageView.this.mAngle = value % 360.0f;
                    CropImageView.this.mScale = fCalcScale;
                    CropImageView.this.mInitialFrameRect = null;
                    CropImageView cropImageView = CropImageView.this;
                    cropImageView.setupLayout(cropImageView.mViewWidth, CropImageView.this.mViewHeight);
                    CropImageView.this.mIsRotating = false;
                }
            });
            animator.startAnimation(i);
            return;
        }
        this.mAngle = value % 360.0f;
        this.mScale = fCalcScale;
        setupLayout(this.mViewWidth, this.mViewHeight);
    }

    public void rotateImage(RotateDegrees rotateDegrees) {
        rotateImage(rotateDegrees, this.mAnimationDurationMillis);
    }

    public Bitmap getCroppedBitmap() {
        Bitmap bitmap = getBitmap();
        if (bitmap == null) {
            return null;
        }
        Bitmap rotatedBitmap = getRotatedBitmap(bitmap);
        Rect rectCalcCropRect = calcCropRect(bitmap.getWidth(), bitmap.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rotatedBitmap, rectCalcCropRect.left, rectCalcCropRect.top, rectCalcCropRect.width(), rectCalcCropRect.height(), (Matrix) null, false);
        if (rotatedBitmap != bitmapCreateBitmap && rotatedBitmap != bitmap) {
            rotatedBitmap.recycle();
        }
        if (this.mCropMode != CropMode.CIRCLE) {
            return bitmapCreateBitmap;
        }
        Bitmap circularBitmap = getCircularBitmap(bitmapCreateBitmap);
        if (bitmapCreateBitmap == getBitmap()) {
            return circularBitmap;
        }
        bitmapCreateBitmap.recycle();
        return circularBitmap;
    }

    public Bitmap getCircularBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int width = bitmap.getWidth() / 2;
        int height = bitmap.getHeight() / 2;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawCircle(width, height, Math.min(width, height), paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    public void startCrop(final Uri uri, final CropCallback cropCallback, final SaveCallback saveCallback) {
        this.mExecutor.submit(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.9
            @Override // java.lang.Runnable
            public void run() {
                final Bitmap bitmapCropImage = null;
                try {
                    try {
                        CropImageView.this.mIsCropping.set(true);
                        bitmapCropImage = CropImageView.this.cropImage();
                        CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (cropCallback != null) {
                                    cropCallback.onSuccess(bitmapCropImage);
                                }
                                if (CropImageView.this.mIsDebug) {
                                    CropImageView.this.invalidate();
                                }
                            }
                        });
                        CropImageView.this.saveImage(bitmapCropImage, uri);
                        CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.9.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (saveCallback != null) {
                                    saveCallback.onSuccess(uri);
                                }
                            }
                        });
                    } catch (Exception e) {
                        if (bitmapCropImage == null) {
                            CropImageView.this.postErrorOnMainThread(cropCallback, e);
                        } else {
                            CropImageView.this.postErrorOnMainThread(saveCallback, e);
                        }
                    }
                } finally {
                    CropImageView.this.mIsCropping.set(false);
                }
            }
        });
    }

    public void cropAsync(final Uri uri, final CropCallback cropCallback) {
        this.mExecutor.submit(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        CropImageView.this.mIsCropping.set(true);
                        if (uri != null) {
                            CropImageView.this.mSourceUri = uri;
                        }
                        final Bitmap bitmapCropImage = CropImageView.this.cropImage();
                        CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (cropCallback != null) {
                                    cropCallback.onSuccess(bitmapCropImage);
                                }
                                if (CropImageView.this.mIsDebug) {
                                    CropImageView.this.invalidate();
                                }
                            }
                        });
                    } catch (Exception e) {
                        CropImageView.this.postErrorOnMainThread(cropCallback, e);
                    }
                } finally {
                    CropImageView.this.mIsCropping.set(false);
                }
            }
        });
    }

    public void cropAsync(CropCallback cropCallback) {
        cropAsync(null, cropCallback);
    }

    public Single<Bitmap> cropAsSingle(final Uri uri) {
        return Single.fromCallable(new Callable<Bitmap>() { // from class: com.isseiaoki.simplecropview.CropImageView.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Bitmap call() throws Exception {
                Uri uri2 = uri;
                if (uri2 != null) {
                    CropImageView.this.mSourceUri = uri2;
                }
                return CropImageView.this.cropImage();
            }
        }).doOnSubscribe(new Consumer<Disposable>() { // from class: com.isseiaoki.simplecropview.CropImageView.12
            public void accept(Disposable disposable) throws Exception {
                CropImageView.this.mIsCropping.set(true);
            }
        }).doFinally(new Action() { // from class: com.isseiaoki.simplecropview.CropImageView.11
            public void run() throws Exception {
                CropImageView.this.mIsCropping.set(false);
            }
        });
    }

    public Single<Bitmap> cropAsSingle() {
        return cropAsSingle(null);
    }

    public CropRequest crop(Uri uri) {
        return new CropRequest(this, uri);
    }

    public void saveAsync(final Uri uri, final Bitmap bitmap, final SaveCallback saveCallback) {
        this.mExecutor.submit(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        CropImageView.this.mIsSaving.set(true);
                        CropImageView.this.saveImage(bitmap, uri);
                        CropImageView.this.mHandler.post(new Runnable() { // from class: com.isseiaoki.simplecropview.CropImageView.14.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (saveCallback != null) {
                                    saveCallback.onSuccess(uri);
                                }
                            }
                        });
                    } catch (Exception e) {
                        CropImageView.this.postErrorOnMainThread(saveCallback, e);
                    }
                } finally {
                    CropImageView.this.mIsSaving.set(false);
                }
            }
        });
    }

    public Single<Uri> saveAsSingle(final Bitmap bitmap, final Uri uri) {
        return Single.fromCallable(new Callable<Uri>() { // from class: com.isseiaoki.simplecropview.CropImageView.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Uri call() throws Exception {
                return CropImageView.this.saveImage(bitmap, uri);
            }
        }).doOnSubscribe(new Consumer<Disposable>() { // from class: com.isseiaoki.simplecropview.CropImageView.16
            public void accept(Disposable disposable) throws Exception {
                CropImageView.this.mIsSaving.set(true);
            }
        }).doFinally(new Action() { // from class: com.isseiaoki.simplecropview.CropImageView.15
            public void run() throws Exception {
                CropImageView.this.mIsSaving.set(false);
            }
        });
    }

    public SaveRequest save(Bitmap bitmap) {
        return new SaveRequest(this, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap cropImage() throws IllegalStateException, IOException {
        Bitmap croppedBitmapFromUri;
        if (this.mSourceUri == null) {
            croppedBitmapFromUri = getCroppedBitmap();
        } else {
            croppedBitmapFromUri = getCroppedBitmapFromUri();
            if (this.mCropMode == CropMode.CIRCLE) {
                Bitmap circularBitmap = getCircularBitmap(croppedBitmapFromUri);
                if (croppedBitmapFromUri != getBitmap()) {
                    croppedBitmapFromUri.recycle();
                }
                croppedBitmapFromUri = circularBitmap;
            }
        }
        Bitmap bitmapScaleBitmapIfNeeded = scaleBitmapIfNeeded(croppedBitmapFromUri);
        this.mOutputImageWidth = bitmapScaleBitmapIfNeeded.getWidth();
        this.mOutputImageHeight = bitmapScaleBitmapIfNeeded.getHeight();
        return bitmapScaleBitmapIfNeeded;
    }

    public RectF getActualCropRect() {
        RectF rectF = this.mImageRect;
        if (rectF == null) {
            return null;
        }
        float f = rectF.left / this.mScale;
        float f2 = this.mImageRect.top / this.mScale;
        return new RectF(Math.max(0.0f, (this.mFrameRect.left / this.mScale) - f), Math.max(0.0f, (this.mFrameRect.top / this.mScale) - f2), Math.min(this.mImageRect.right / this.mScale, (this.mFrameRect.right / this.mScale) - f), Math.min(this.mImageRect.bottom / this.mScale, (this.mFrameRect.bottom / this.mScale) - f2));
    }

    private RectF applyInitialFrameRect(RectF rectF) {
        RectF rectF2 = new RectF();
        rectF2.set(rectF.left * this.mScale, rectF.top * this.mScale, rectF.right * this.mScale, rectF.bottom * this.mScale);
        rectF2.offset(this.mImageRect.left, this.mImageRect.top);
        rectF2.set(Math.max(this.mImageRect.left, rectF2.left), Math.max(this.mImageRect.top, rectF2.top), Math.min(this.mImageRect.right, rectF2.right), Math.min(this.mImageRect.bottom, rectF2.bottom));
        return rectF2;
    }

    public void setCropMode(CropMode cropMode, int i) {
        if (cropMode == CropMode.CUSTOM) {
            setCustomRatio(1, 1);
        } else {
            this.mCropMode = cropMode;
            recalculateFrameRect(i);
        }
    }

    public void setCropMode(CropMode cropMode) {
        setCropMode(cropMode, this.mAnimationDurationMillis);
    }

    public void setCustomRatio(int i, int i2, int i3) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.mCropMode = CropMode.CUSTOM;
        this.mCustomRatio = new PointF(i, i2);
        recalculateFrameRect(i3);
    }

    public void setCustomRatio(int i, int i2) {
        setCustomRatio(i, i2, this.mAnimationDurationMillis);
    }

    public void setOverlayColor(int i) {
        this.mOverlayColor = i;
        invalidate();
    }

    public void setFrameColor(int i) {
        this.mFrameColor = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.mHandleColor = i;
        invalidate();
    }

    public void setGuideColor(int i) {
        this.mGuideColor = i;
        invalidate();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.mBackgroundColor = i;
        invalidate();
    }

    public void setMinFrameSizeInDp(int i) {
        this.mMinFrameSize = i * getDensity();
    }

    public void setMinFrameSizeInPx(int i) {
        this.mMinFrameSize = i;
    }

    public void setHandleSizeInDp(int i) {
        this.mHandleSize = (int) (i * getDensity());
    }

    public void setTouchPaddingInDp(int i) {
        this.mTouchPadding = (int) (i * getDensity());
    }

    /* renamed from: com.isseiaoki.simplecropview.CropImageView$18 */
    static /* synthetic */ class C123818 {
        static final /* synthetic */ int[] $SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode = new int[ShowMode.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea;

        static {
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode[ShowMode.SHOW_ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode[ShowMode.NOT_SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode[ShowMode.SHOW_ON_TOUCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode = new int[CropMode.values().length];
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.FIT_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.RATIO_4_3.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.RATIO_3_4.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.RATIO_16_9.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.RATIO_9_16.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.SQUARE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.CIRCLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.CIRCLE_SQUARE.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode[CropMode.CUSTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea = new int[TouchArea.values().length];
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.LEFT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.RIGHT_TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.LEFT_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.RIGHT_BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea[TouchArea.OUT_OF_BOUNDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public void setGuideShowMode(ShowMode showMode) {
        this.mGuideShowMode = showMode;
        int i = C123818.$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode[showMode.ordinal()];
        if (i == 1) {
            this.mShowGuide = true;
        } else if (i == 2 || i == 3) {
            this.mShowGuide = false;
        }
        invalidate();
    }

    public void setHandleShowMode(ShowMode showMode) {
        this.mHandleShowMode = showMode;
        int i = C123818.$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode[showMode.ordinal()];
        if (i == 1) {
            this.mShowHandle = true;
        } else if (i == 2 || i == 3) {
            this.mShowHandle = false;
        }
        invalidate();
    }

    public void setFrameStrokeWeightInDp(int i) {
        this.mFrameStrokeWeight = i * getDensity();
        invalidate();
    }

    public void setGuideStrokeWeightInDp(int i) {
        this.mGuideStrokeWeight = i * getDensity();
        invalidate();
    }

    public void setCropEnabled(boolean z) {
        this.mIsCropEnabled = z;
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mIsEnabled = z;
    }

    public void setInitialFrameScale(float f) {
        this.mInitialFrameScale = constrain(f, 0.01f, 1.0f, 1.0f);
    }

    public void setAnimationEnabled(boolean z) {
        this.mIsAnimationEnabled = z;
    }

    public void setAnimationDuration(int i) {
        this.mAnimationDurationMillis = i;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
        this.mAnimator = null;
        setupAnimatorIfNeeded();
    }

    public void setDebug(boolean z) {
        this.mIsDebug = z;
        Logger.enabled = true;
        invalidate();
    }

    public void setLoggingEnabled(boolean z) {
        Logger.enabled = z;
    }

    public void setOutputWidth(int i) {
        this.mOutputWidth = i;
        this.mOutputHeight = 0;
    }

    public void setOutputHeight(int i) {
        this.mOutputHeight = i;
        this.mOutputWidth = 0;
    }

    public void setOutputMaxSize(int i, int i2) {
        this.mOutputMaxWidth = i;
        this.mOutputMaxHeight = i2;
    }

    public void setCompressFormat(Bitmap.CompressFormat compressFormat) {
        this.mCompressFormat = compressFormat;
    }

    public void setCompressQuality(int i) {
        this.mCompressQuality = i;
    }

    public void setHandleShadowEnabled(boolean z) {
        this.mIsHandleShadowEnabled = z;
    }

    public boolean isCropping() {
        return this.mIsCropping.get();
    }

    public Uri getSourceUri() {
        return this.mSourceUri;
    }

    public Uri getSaveUri() {
        return this.mSaveUri;
    }

    public boolean isSaving() {
        return this.mIsSaving.get();
    }

    private void setScale(float f) {
        this.mScale = f;
    }

    private void setCenter(PointF pointF) {
        this.mCenter = pointF;
    }

    private float getFrameW() {
        return this.mFrameRect.right - this.mFrameRect.left;
    }

    private float getFrameH() {
        return this.mFrameRect.bottom - this.mFrameRect.top;
    }

    public enum CropMode {
        FIT_IMAGE(0),
        RATIO_4_3(1),
        RATIO_3_4(2),
        SQUARE(3),
        RATIO_16_9(4),
        RATIO_9_16(5),
        FREE(6),
        CUSTOM(7),
        CIRCLE(8),
        CIRCLE_SQUARE(9);


        /* renamed from: ID */
        private final int f404ID;

        CropMode(int i) {
            this.f404ID = i;
        }

        public int getId() {
            return this.f404ID;
        }
    }

    public enum ShowMode {
        SHOW_ALWAYS(1),
        SHOW_ON_TOUCH(2),
        NOT_SHOW(3);


        /* renamed from: ID */
        private final int f405ID;

        ShowMode(int i) {
            this.f405ID = i;
        }

        public int getId() {
            return this.f405ID;
        }
    }

    public enum RotateDegrees {
        ROTATE_90D(90),
        ROTATE_180D(180),
        ROTATE_270D(PropertyID.CHARACTER_DATA_DELAY),
        ROTATE_M90D(-90),
        ROTATE_M180D(-180),
        ROTATE_M270D(-270);

        private final int VALUE;

        RotateDegrees(int i) {
            this.VALUE = i;
        }

        public int getValue() {
            return this.VALUE;
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.isseiaoki.simplecropview.CropImageView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float angle;
        int animationDuration;
        int backgroundColor;
        Bitmap.CompressFormat compressFormat;
        int compressQuality;
        float customRatioX;
        float customRatioY;
        int exifRotation;
        int frameColor;
        float frameStrokeWeight;
        int guideColor;
        ShowMode guideShowMode;
        float guideStrokeWeight;
        int handleColor;
        ShowMode handleShowMode;
        int handleSize;
        float initialFrameScale;
        int inputImageHeight;
        int inputImageWidth;
        boolean isAnimationEnabled;
        boolean isCropEnabled;
        boolean isDebug;
        boolean isHandleShadowEnabled;
        float minFrameSize;
        CropMode mode;
        int outputHeight;
        int outputImageHeight;
        int outputImageWidth;
        int outputMaxHeight;
        int outputMaxWidth;
        int outputWidth;
        int overlayColor;
        Uri saveUri;
        boolean showGuide;
        boolean showHandle;
        Uri sourceUri;
        int touchPadding;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mode = (CropMode) parcel.readSerializable();
            this.backgroundColor = parcel.readInt();
            this.overlayColor = parcel.readInt();
            this.frameColor = parcel.readInt();
            this.guideShowMode = (ShowMode) parcel.readSerializable();
            this.handleShowMode = (ShowMode) parcel.readSerializable();
            this.showGuide = parcel.readInt() != 0;
            this.showHandle = parcel.readInt() != 0;
            this.handleSize = parcel.readInt();
            this.touchPadding = parcel.readInt();
            this.minFrameSize = parcel.readFloat();
            this.customRatioX = parcel.readFloat();
            this.customRatioY = parcel.readFloat();
            this.frameStrokeWeight = parcel.readFloat();
            this.guideStrokeWeight = parcel.readFloat();
            this.isCropEnabled = parcel.readInt() != 0;
            this.handleColor = parcel.readInt();
            this.guideColor = parcel.readInt();
            this.initialFrameScale = parcel.readFloat();
            this.angle = parcel.readFloat();
            this.isAnimationEnabled = parcel.readInt() != 0;
            this.animationDuration = parcel.readInt();
            this.exifRotation = parcel.readInt();
            this.sourceUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
            this.saveUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
            this.compressFormat = (Bitmap.CompressFormat) parcel.readSerializable();
            this.compressQuality = parcel.readInt();
            this.isDebug = parcel.readInt() != 0;
            this.outputMaxWidth = parcel.readInt();
            this.outputMaxHeight = parcel.readInt();
            this.outputWidth = parcel.readInt();
            this.outputHeight = parcel.readInt();
            this.isHandleShadowEnabled = parcel.readInt() != 0;
            this.inputImageWidth = parcel.readInt();
            this.inputImageHeight = parcel.readInt();
            this.outputImageWidth = parcel.readInt();
            this.outputImageHeight = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeSerializable(this.mode);
            parcel.writeInt(this.backgroundColor);
            parcel.writeInt(this.overlayColor);
            parcel.writeInt(this.frameColor);
            parcel.writeSerializable(this.guideShowMode);
            parcel.writeSerializable(this.handleShowMode);
            parcel.writeInt(this.showGuide ? 1 : 0);
            parcel.writeInt(this.showHandle ? 1 : 0);
            parcel.writeInt(this.handleSize);
            parcel.writeInt(this.touchPadding);
            parcel.writeFloat(this.minFrameSize);
            parcel.writeFloat(this.customRatioX);
            parcel.writeFloat(this.customRatioY);
            parcel.writeFloat(this.frameStrokeWeight);
            parcel.writeFloat(this.guideStrokeWeight);
            parcel.writeInt(this.isCropEnabled ? 1 : 0);
            parcel.writeInt(this.handleColor);
            parcel.writeInt(this.guideColor);
            parcel.writeFloat(this.initialFrameScale);
            parcel.writeFloat(this.angle);
            parcel.writeInt(this.isAnimationEnabled ? 1 : 0);
            parcel.writeInt(this.animationDuration);
            parcel.writeInt(this.exifRotation);
            parcel.writeParcelable(this.sourceUri, i);
            parcel.writeParcelable(this.saveUri, i);
            parcel.writeSerializable(this.compressFormat);
            parcel.writeInt(this.compressQuality);
            parcel.writeInt(this.isDebug ? 1 : 0);
            parcel.writeInt(this.outputMaxWidth);
            parcel.writeInt(this.outputMaxHeight);
            parcel.writeInt(this.outputWidth);
            parcel.writeInt(this.outputHeight);
            parcel.writeInt(this.isHandleShadowEnabled ? 1 : 0);
            parcel.writeInt(this.inputImageWidth);
            parcel.writeInt(this.inputImageHeight);
            parcel.writeInt(this.outputImageWidth);
            parcel.writeInt(this.outputImageHeight);
        }
    }
}
