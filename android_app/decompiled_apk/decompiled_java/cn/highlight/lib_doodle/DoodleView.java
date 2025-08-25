package cn.highlight.lib_doodle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import cn.forward.androids.utils.ImageUtils;
import cn.forward.androids.utils.LogUtil;
import cn.forward.androids.utils.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DoodleView extends FrameLayout implements IDoodle {
    public static final int DEFAULT_SIZE = 6;
    private static final int FLAG_DRAW_PENDINGS_TO_BACKGROUND = 4;
    private static final int FLAG_REFRESH_BACKGROUND = 8;
    private static final int FLAG_RESET_BACKGROUND = 2;
    public static final float MAX_SCALE = 2.0f;
    public static final float MIN_SCALE = 0.5f;
    public static final String TAG = "DoodleView";
    private List<DoodleRecord> allRecord;
    private boolean isJustDrawOriginal;
    private BackgroundView mBackgroundView;
    private Bitmap mBitmap;
    private int mCenterHeight;
    private float mCenterScale;
    private int mCenterWidth;
    private float mCentreTranX;
    private float mCentreTranY;
    private IDoodleColor mColor;
    private IDoodleTouchDetector mDefaultTouchDetector;
    public Bitmap mDoodleBitmap;
    private Canvas mDoodleBitmapCanvas;
    private RectF mDoodleBound;
    private IDoodleListener mDoodleListener;
    private int mDoodleRotateDegree;
    private float mDoodleSizeUnit;
    private boolean mEnableOverview;
    private boolean mEnableZoomer;
    private int mFlags;
    private ForegroundView mForegroundView;
    private boolean mIsDrawableOutside;
    private boolean mIsEditMode;
    private boolean mIsSaving;
    private boolean mIsScrollingDoodle;
    private List<IDoodleItem> mItemStack;
    private List<IDoodleItem> mItemStackOnViewCanvas;
    private float mLastZoomerY;
    private float mMaxScale;
    private float mMinScale;
    private View.OnTouchListener mOnTouchListener;
    private final boolean mOptimizeDrawing;
    private IDoodlePen mPen;
    private List<IDoodleItem> mPendingItemsDrawToBitmap;
    private boolean mReady;
    private List<IDoodleItem> mRedoItemStack;
    private float mRotateScale;
    private float mRotateTranX;
    private float mRotateTranY;
    private float mScale;
    private IDoodleShape mShape;
    private float mSize;
    private PointF mTempPoint;
    private Map<IDoodlePen, IDoodleTouchDetector> mTouchDetectorMap;
    private Matrix mTouchEventMatrix;
    private float mTouchX;
    private float mTouchY;
    private float mTransX;
    private float mTransY;
    private int mZoomerHorizonX;
    private Path mZoomerPath;
    private float mZoomerRadius;
    private float mZoomerScale;
    private Paint mZoomerTouchPaint;
    private Paint mZooomerPaint;
    private List<DoodleRecord> redoRecord;

    public DoodleView(Context context, Bitmap bitmap, IDoodleListener iDoodleListener) {
        this(context, bitmap, false, iDoodleListener, null);
    }

    public DoodleView(Context context, Bitmap bitmap, IDoodleListener iDoodleListener, IDoodleTouchDetector iDoodleTouchDetector) {
        this(context, bitmap, false, iDoodleListener, iDoodleTouchDetector);
    }

    public DoodleView(Context context, Bitmap bitmap, boolean z, IDoodleListener iDoodleListener) {
        this(context, bitmap, z, iDoodleListener, null);
    }

    public DoodleView(Context context, Bitmap bitmap, boolean z, IDoodleListener iDoodleListener, IDoodleTouchDetector iDoodleTouchDetector) {
        super(context);
        this.mRotateScale = 1.0f;
        this.mScale = 1.0f;
        this.mTransX = 0.0f;
        this.mTransY = 0.0f;
        this.mMinScale = 0.5f;
        this.mMaxScale = 2.0f;
        this.mIsDrawableOutside = false;
        this.mReady = false;
        this.mItemStack = new ArrayList();
        this.mRedoItemStack = new ArrayList();
        this.mEnableZoomer = false;
        this.mEnableOverview = true;
        this.mZoomerScale = 0.0f;
        this.mIsScrollingDoodle = false;
        this.mDoodleSizeUnit = 1.0f;
        this.mDoodleRotateDegree = 0;
        this.mTouchDetectorMap = new HashMap();
        this.mDoodleBound = new RectF();
        this.mTempPoint = new PointF();
        this.mIsEditMode = false;
        this.mIsSaving = false;
        this.allRecord = new ArrayList();
        this.redoRecord = new ArrayList();
        this.mItemStackOnViewCanvas = new ArrayList();
        this.mPendingItemsDrawToBitmap = new ArrayList();
        this.mFlags = 0;
        this.mTouchEventMatrix = new Matrix();
        setClipChildren(false);
        this.mBitmap = bitmap;
        Bitmap bitmap2 = this.mBitmap;
        if (bitmap2 == null) {
            throw new RuntimeException("Bitmap is null!!!");
        }
        if (bitmap2.getConfig() != Bitmap.Config.RGB_565) {
            LogUtil.w(TAG, "the bitmap may contain alpha, which will cause eraser don't work well.");
        }
        this.mDoodleListener = iDoodleListener;
        if (this.mDoodleListener == null) {
            throw new RuntimeException("IDoodleListener is null!!!");
        }
        this.mOptimizeDrawing = z;
        this.mScale = 1.0f;
        this.mColor = new DoodleColor(SupportMenu.CATEGORY_MASK);
        this.mPen = DoodlePen.BRUSH;
        this.mShape = DoodleShape.HAND_WRITE;
        this.mZooomerPaint = new Paint();
        this.mZooomerPaint.setColor(-1426063361);
        this.mZooomerPaint.setStyle(Paint.Style.STROKE);
        this.mZooomerPaint.setAntiAlias(true);
        this.mZooomerPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mZooomerPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mZooomerPaint.setStrokeWidth(Util.dp2px(getContext(), 10.0f));
        this.mZoomerTouchPaint = new Paint();
        this.mZoomerTouchPaint.setStyle(Paint.Style.STROKE);
        this.mZoomerTouchPaint.setAntiAlias(true);
        this.mZoomerTouchPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mZoomerTouchPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mDefaultTouchDetector = iDoodleTouchDetector;
        this.mForegroundView = new ForegroundView(context);
        this.mBackgroundView = new BackgroundView(context);
        addView(this.mBackgroundView, new ViewGroup.LayoutParams(-1, -1));
        addView(this.mForegroundView, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        init();
        if (this.mReady) {
            return;
        }
        this.mDoodleListener.onReady(this);
        this.mReady = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.mOnTouchListener;
        if (onTouchListener != null && onTouchListener.onTouch(this, motionEvent)) {
            return true;
        }
        this.mTouchX = motionEvent.getX();
        this.mTouchY = motionEvent.getY();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        this.mTouchEventMatrix.reset();
        this.mTouchEventMatrix.setRotate(-this.mDoodleRotateDegree, getWidth() / 2, getHeight() / 2);
        motionEventObtain.transform(this.mTouchEventMatrix);
        boolean zOnTouchEvent = this.mForegroundView.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mOnTouchListener = onTouchListener;
        super.setOnTouchListener(onTouchListener);
    }

    private void init() {
        int width = this.mBitmap.getWidth();
        float f = width;
        float width2 = (f * 1.0f) / getWidth();
        float height = this.mBitmap.getHeight();
        float height2 = (height * 1.0f) / getHeight();
        if (width2 > height2) {
            this.mCenterScale = 1.0f / width2;
            this.mCenterWidth = getWidth();
            this.mCenterHeight = (int) (height * this.mCenterScale);
        } else {
            this.mCenterScale = 1.0f / height2;
            this.mCenterWidth = (int) (f * this.mCenterScale);
            this.mCenterHeight = getHeight();
        }
        this.mCentreTranX = (getWidth() - this.mCenterWidth) / 2.0f;
        this.mCentreTranY = (getHeight() - this.mCenterHeight) / 2.0f;
        this.mZoomerRadius = Math.min(getWidth(), getHeight()) / 4;
        this.mZoomerPath = new Path();
        Path path = this.mZoomerPath;
        float f2 = this.mZoomerRadius;
        path.addCircle(f2, f2, f2, Path.Direction.CCW);
        this.mZoomerHorizonX = (int) ((Math.min(getWidth(), getHeight()) / 2) - this.mZoomerRadius);
        this.mDoodleSizeUnit = Util.dp2px(getContext(), 1.0f) / this.mCenterScale;
        if (!this.mReady) {
            this.mSize = this.mDoodleSizeUnit * 6.0f;
        }
        this.mTransY = 0.0f;
        this.mTransX = 0.0f;
        this.mScale = 1.0f;
        initDoodleBitmap();
        refreshWithBackground();
    }

    private void initDoodleBitmap() {
        if (this.mOptimizeDrawing) {
            Bitmap bitmap = this.mDoodleBitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            Bitmap bitmap2 = this.mBitmap;
            this.mDoodleBitmap = bitmap2.copy(bitmap2.getConfig(), true);
            this.mDoodleBitmapCanvas = new Canvas(this.mDoodleBitmap);
        }
    }

    public RectF getDoodleBound() {
        float f = this.mCenterWidth;
        float f2 = this.mRotateScale;
        float f3 = this.mScale;
        float f4 = f * f2 * f3;
        float f5 = this.mCenterHeight * f2 * f3;
        int i = this.mDoodleRotateDegree;
        if (i % 90 == 0) {
            if (i == 0) {
                this.mTempPoint.x = toTouchX(0.0f);
                this.mTempPoint.y = toTouchY(0.0f);
            } else {
                if (i == 90) {
                    this.mTempPoint.x = toTouchX(0.0f);
                    this.mTempPoint.y = toTouchY(this.mBitmap.getHeight());
                } else if (i == 180) {
                    this.mTempPoint.x = toTouchX(this.mBitmap.getWidth());
                    this.mTempPoint.y = toTouchY(this.mBitmap.getHeight());
                } else if (i == 270) {
                    this.mTempPoint.x = toTouchX(this.mBitmap.getWidth());
                    this.mTempPoint.y = toTouchY(0.0f);
                }
                f5 = f4;
                f4 = f5;
            }
            PointF pointF = this.mTempPoint;
            DrawUtil.rotatePoint(pointF, this.mDoodleRotateDegree, pointF.x, this.mTempPoint.y, getWidth() / 2, getHeight() / 2);
            this.mDoodleBound.set(this.mTempPoint.x, this.mTempPoint.y, this.mTempPoint.x + f4, this.mTempPoint.y + f5);
        } else {
            float touchX = toTouchX(0.0f);
            float touchY = toTouchY(0.0f);
            float touchX2 = toTouchX(this.mBitmap.getWidth());
            float touchY2 = toTouchY(this.mBitmap.getHeight());
            float touchX3 = toTouchX(0.0f);
            float touchY3 = toTouchY(this.mBitmap.getHeight());
            float touchX4 = toTouchX(this.mBitmap.getWidth());
            float touchY4 = toTouchY(0.0f);
            DrawUtil.rotatePoint(this.mTempPoint, this.mDoodleRotateDegree, touchX, touchY, getWidth() / 2, getHeight() / 2);
            float f6 = this.mTempPoint.x;
            float f7 = this.mTempPoint.y;
            DrawUtil.rotatePoint(this.mTempPoint, this.mDoodleRotateDegree, touchX2, touchY2, getWidth() / 2, getHeight() / 2);
            float f8 = this.mTempPoint.x;
            float f9 = this.mTempPoint.y;
            DrawUtil.rotatePoint(this.mTempPoint, this.mDoodleRotateDegree, touchX3, touchY3, getWidth() / 2, getHeight() / 2);
            float f10 = this.mTempPoint.x;
            float f11 = this.mTempPoint.y;
            DrawUtil.rotatePoint(this.mTempPoint, this.mDoodleRotateDegree, touchX4, touchY4, getWidth() / 2, getHeight() / 2);
            float f12 = this.mTempPoint.x;
            float f13 = this.mTempPoint.y;
            this.mDoodleBound.left = Math.min(Math.min(f6, f8), Math.min(f10, f12));
            this.mDoodleBound.top = Math.min(Math.min(f7, f9), Math.min(f11, f13));
            this.mDoodleBound.right = Math.max(Math.max(f6, f8), Math.max(f10, f12));
            this.mDoodleBound.bottom = Math.max(Math.max(f7, f9), Math.max(f11, f13));
        }
        return this.mDoodleBound;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mBitmap.isRecycled()) {
            return;
        }
        if (hasFlag(2)) {
            LogUtil.d(TAG, "FLAG_RESET_BACKGROUND");
            clearFlag(2);
            clearFlag(4);
            clearFlag(8);
            refreshDoodleBitmap(false);
            this.mPendingItemsDrawToBitmap.clear();
            this.mBackgroundView.invalidate();
        } else if (hasFlag(4)) {
            LogUtil.d(TAG, "FLAG_DRAW_PENDINGS_TO_BACKGROUND");
            clearFlag(4);
            clearFlag(8);
            drawToDoodleBitmap(this.mPendingItemsDrawToBitmap);
            this.mPendingItemsDrawToBitmap.clear();
            this.mBackgroundView.invalidate();
        } else if (hasFlag(8)) {
            LogUtil.d(TAG, "FLAG_REFRESH_BACKGROUND");
            clearFlag(8);
            this.mBackgroundView.invalidate();
        }
        int iSave = canvas.save();
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
        if (this.mIsScrollingDoodle && this.mEnableZoomer && this.mZoomerScale > 0.0f) {
            canvas.save();
            float unitSize = getUnitSize();
            float f = this.mTouchY;
            if (f <= this.mZoomerRadius * 2.0f) {
                this.mLastZoomerY = getHeight() - (this.mZoomerRadius * 2.0f);
            } else if (f >= getHeight() - (this.mZoomerRadius * 2.0f)) {
                this.mLastZoomerY = 0.0f;
            }
            canvas.translate(this.mZoomerHorizonX, this.mLastZoomerY);
            canvas.clipPath(this.mZoomerPath);
            canvas.drawColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.save();
            float f2 = this.mZoomerScale / this.mScale;
            canvas.scale(f2, f2);
            float f3 = -this.mTouchX;
            float f4 = this.mZoomerRadius;
            canvas.translate(f3 + (f4 / f2), (-this.mTouchY) + (f4 / f2));
            super.dispatchDraw(canvas);
            canvas.translate(getAllTranX(), getAllTranY());
            float allScale = getAllScale();
            canvas.scale(allScale, allScale);
            float f5 = unitSize / 2.0f;
            this.mZoomerTouchPaint.setStrokeWidth(f5);
            float f6 = this.mSize;
            float f7 = (f6 / 2.0f) - f5;
            float f8 = f7 - f5;
            if (f7 <= 1.0f) {
                f8 = 0.5f;
                this.mZoomerTouchPaint.setStrokeWidth(f6);
                f7 = 1.0f;
            }
            this.mZoomerTouchPaint.setColor(-1442840576);
            DrawUtil.drawCircle(canvas, toX(this.mTouchX), toY(this.mTouchY), f7, this.mZoomerTouchPaint);
            this.mZoomerTouchPaint.setColor(-1426063361);
            DrawUtil.drawCircle(canvas, toX(this.mTouchX), toY(this.mTouchY), f8, this.mZoomerTouchPaint);
            canvas.restore();
            float f9 = this.mZoomerRadius;
            DrawUtil.drawCircle(canvas, f9, f9, f9, this.mZooomerPaint);
            canvas.restore();
            canvas.save();
            canvas.translate(this.mZoomerHorizonX, this.mLastZoomerY);
            float width = (this.mZoomerRadius / 2.0f) / getWidth();
            canvas.scale(width, width);
            float f10 = 1.0f / width;
            float f11 = -f10;
            canvas.clipRect(f11, f11, getWidth() + f10, getHeight() + f10);
            canvas.drawColor(-2004318072);
            canvas.save();
            float f12 = this.mScale;
            float f13 = this.mTransX;
            float f14 = this.mTransY;
            this.mScale = 1.0f;
            this.mTransY = 0.0f;
            this.mTransX = 0.0f;
            super.dispatchDraw(canvas);
            this.mScale = f12;
            this.mTransX = f13;
            this.mTransY = f14;
            canvas.restore();
            this.mZoomerTouchPaint.setStrokeWidth(f10);
            this.mZoomerTouchPaint.setColor(-1442840576);
            DrawUtil.drawRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.mZoomerTouchPaint);
            this.mZoomerTouchPaint.setColor(-1426063361);
            DrawUtil.drawRect(canvas, f10, f10, getWidth() - f10, getHeight() - f10, this.mZoomerTouchPaint);
            canvas.restore();
        }
    }

    private boolean hasFlag(int i) {
        return (i & this.mFlags) != 0;
    }

    private void addFlag(int i) {
        this.mFlags = i | this.mFlags;
    }

    private void clearFlag(int i) {
        this.mFlags = (~i) & this.mFlags;
    }

    public float getAllScale() {
        return this.mCenterScale * this.mRotateScale * this.mScale;
    }

    public float getAllTranX() {
        return this.mCentreTranX + this.mRotateTranX + this.mTransX;
    }

    public float getAllTranY() {
        return this.mCentreTranY + this.mRotateTranY + this.mTransY;
    }

    public final float toX(float f) {
        return (f - getAllTranX()) / getAllScale();
    }

    public final float toY(float f) {
        return (f - getAllTranY()) / getAllScale();
    }

    public final float toTouchX(float f) {
        return (f * getAllScale()) + getAllTranX();
    }

    public final float toTouchY(float f) {
        return (f * getAllScale()) + getAllTranY();
    }

    public final float toTransX(float f, float f2) {
        return ((((-f2) * getAllScale()) + f) - this.mCentreTranX) - this.mRotateTranX;
    }

    public final float toTransY(float f, float f2) {
        return ((((-f2) * getAllScale()) + f) - this.mCentreTranY) - this.mRotateTranY;
    }

    public void bindTouchDetector(IDoodlePen iDoodlePen, IDoodleTouchDetector iDoodleTouchDetector) {
        if (iDoodlePen == null) {
            return;
        }
        this.mTouchDetectorMap.put(iDoodlePen, iDoodleTouchDetector);
    }

    public IDoodleTouchDetector getDefaultTouchDetector(IDoodlePen iDoodlePen) {
        return this.mTouchDetectorMap.get(iDoodlePen);
    }

    public void removeTouchDetector(IDoodlePen iDoodlePen) {
        if (iDoodlePen == null) {
            return;
        }
        this.mTouchDetectorMap.remove(iDoodlePen);
    }

    public void setDefaultTouchDetector(IDoodleTouchDetector iDoodleTouchDetector) {
        this.mDefaultTouchDetector = iDoodleTouchDetector;
    }

    public IDoodleTouchDetector getDefaultTouchDetector() {
        return this.mDefaultTouchDetector;
    }

    private void drawToDoodleBitmap(List<IDoodleItem> list) {
        if (this.mOptimizeDrawing) {
            Iterator<IDoodleItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().draw(this.mDoodleBitmapCanvas);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshDoodleBitmap(boolean z) {
        List arrayList;
        if (this.mOptimizeDrawing) {
            initDoodleBitmap();
            if (z) {
                arrayList = this.mItemStack;
            } else {
                arrayList = new ArrayList(this.mItemStack);
                arrayList.removeAll(this.mItemStackOnViewCanvas);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((IDoodleItem) it.next()).draw(this.mDoodleBitmapCanvas);
            }
        }
    }

    private void refreshWithBackground() {
        addFlag(8);
        refresh();
    }

    @Override // android.view.View
    public void invalidate() {
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void refresh() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.invalidate();
            this.mForegroundView.invalidate();
        } else {
            super.postInvalidate();
            this.mForegroundView.postInvalidate();
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public int getDoodleRotation() {
        return this.mDoodleRotateDegree;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleRotation(int i) {
        this.mDoodleRotateDegree = i;
        this.mDoodleRotateDegree %= 360;
        int i2 = this.mDoodleRotateDegree;
        if (i2 < 0) {
            this.mDoodleRotateDegree = i2 + 360;
        }
        RectF doodleBound = getDoodleBound();
        int iWidth = (int) (doodleBound.width() / getAllScale());
        float width = (iWidth * 1.0f) / getWidth();
        float fHeight = (((int) (doodleBound.height() / getAllScale())) * 1.0f) / getHeight();
        float f = width > fHeight ? 1.0f / width : 1.0f / fHeight;
        int width2 = this.mBitmap.getWidth() / 2;
        int height = this.mBitmap.getHeight() / 2;
        this.mTransY = 0.0f;
        this.mTransX = 0.0f;
        this.mRotateTranY = 0.0f;
        this.mRotateTranX = 0.0f;
        this.mScale = 1.0f;
        this.mRotateScale = 1.0f;
        float f2 = width2;
        float touchX = toTouchX(f2);
        float f3 = height;
        float touchY = toTouchY(f3);
        this.mRotateScale = f / this.mCenterScale;
        float transX = toTransX(touchX, f2);
        float transY = toTransY(touchY, f3);
        this.mRotateTranX = transX;
        this.mRotateTranY = transY;
        refreshWithBackground();
    }

    public boolean isOptimizeDrawing() {
        return this.mOptimizeDrawing;
    }

    public void markItemToOptimizeDrawing(IDoodleItem iDoodleItem) {
        if (this.mOptimizeDrawing) {
            if (this.mItemStackOnViewCanvas.contains(iDoodleItem)) {
                throw new RuntimeException("The item has been added");
            }
            this.mItemStackOnViewCanvas.add(iDoodleItem);
            if (this.mItemStack.contains(iDoodleItem)) {
                addFlag(2);
            }
            refresh();
        }
    }

    public void notifyItemFinishedDrawing(IDoodleItem iDoodleItem) {
        if (this.mOptimizeDrawing) {
            if (this.mItemStackOnViewCanvas.remove(iDoodleItem)) {
                if (this.mItemStack.contains(iDoodleItem)) {
                    addFlag(2);
                } else {
                    addItem(iDoodleItem);
                }
            }
            refresh();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [cn.highlight.lib_doodle.DoodleView$1] */
    @Override // cn.highlight.lib_doodle.IDoodle
    public void save() {
        if (this.mIsSaving) {
            return;
        }
        this.mIsSaving = true;
        new AsyncTask<Void, Void, Bitmap>() { // from class: cn.highlight.lib_doodle.DoodleView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Void... voidArr) {
                Bitmap bitmapCopy;
                if (DoodleView.this.mOptimizeDrawing) {
                    DoodleView.this.refreshDoodleBitmap(true);
                    bitmapCopy = DoodleView.this.mDoodleBitmap;
                } else {
                    bitmapCopy = DoodleView.this.mBitmap.copy(DoodleView.this.mBitmap.getConfig(), true);
                    Canvas canvas = new Canvas(bitmapCopy);
                    Iterator it = DoodleView.this.mItemStack.iterator();
                    while (it.hasNext()) {
                        ((IDoodleItem) it.next()).draw(canvas);
                    }
                }
                return ImageUtils.rotate(bitmapCopy, DoodleView.this.mDoodleRotateDegree, true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                DoodleView.this.mDoodleListener.onSaved(DoodleView.this, bitmap, new Runnable() { // from class: cn.highlight.lib_doodle.DoodleView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DoodleView.this.mIsSaving = false;
                        if (DoodleView.this.mOptimizeDrawing) {
                            DoodleView.this.refreshDoodleBitmap(false);
                        }
                        DoodleView.this.refresh();
                    }
                });
            }
        }.execute(new Void[0]);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void clear() {
        ArrayList arrayList = new ArrayList(this.mItemStack);
        this.mItemStack.clear();
        this.mRedoItemStack.clear();
        this.mItemStackOnViewCanvas.clear();
        this.mPendingItemsDrawToBitmap.clear();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((IDoodleItem) arrayList.get(size)).onRemove();
        }
        addFlag(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean undo(int i) {
        if (this.mItemStack.size() <= 0) {
            return false;
        }
        int iMin = Math.min(this.mItemStack.size(), i);
        List<IDoodleItem> list = this.mItemStack;
        for (IDoodleItem iDoodleItem : new ArrayList(list.subList(list.size() - iMin, this.mItemStack.size()))) {
            removeItem(iDoodleItem);
            this.mRedoItemStack.add(0, iDoodleItem);
        }
        return true;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean redo(int i) {
        if (this.mRedoItemStack.isEmpty()) {
            return false;
        }
        for (int i2 = 0; i2 < i && !this.mRedoItemStack.isEmpty(); i2++) {
            addItemInner(this.mRedoItemStack.remove(0));
        }
        return true;
    }

    public void replace(List<IDoodleItem> list) {
        Iterator<IDoodleItem> it = list.iterator();
        while (it.hasNext()) {
            this.mRedoItemStack.add(0, it.next());
        }
        for (int i = 0; i < this.mRedoItemStack.size() && !this.mRedoItemStack.isEmpty(); i++) {
            addItemInner(this.mRedoItemStack.remove(0));
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean undo() {
        return undo(1);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void undoRecord(int i) {
        if (this.allRecord.size() > i) {
            int size = this.allRecord.size();
            DoodleRecord doodleRecord = this.allRecord.get(size - 1);
            int type = doodleRecord.getType();
            if (type == 0) {
                removeItem(doodleRecord.getDoodleItem());
            } else {
                boolean z = true;
                if (type == 1) {
                    int identity = doodleRecord.getIdentity();
                    if (doodleRecord.getDoodleItem().getPen() == DoodlePen.BG) {
                        int i2 = size - 2;
                        while (true) {
                            if (i2 < 0) {
                                break;
                            }
                            if (this.allRecord.get(i2).getIdentity() == identity) {
                                ((DoodleBg) this.mItemStack.get(0)).setBitmap(this.allRecord.get(i2).getmBitmap());
                                ((DoodleBg) this.mItemStack.get(0)).setText(this.allRecord.get(i2).getmText0());
                                break;
                            }
                            i2--;
                        }
                        this.redoRecord.add(doodleRecord);
                        this.allRecord.remove(doodleRecord);
                        return;
                    }
                    int i3 = size - 2;
                    while (true) {
                        if (i3 < 0) {
                            z = false;
                            break;
                        }
                        if (this.allRecord.get(i3).getIdentity() == identity) {
                            removeItem(doodleRecord.getDoodleItem());
                            IDoodleItem doodleItem = this.allRecord.get(i3).getDoodleItem();
                            if (doodleItem.getPen() == DoodlePen.TEXT) {
                                DoodleText doodleText = (DoodleText) doodleItem;
                                doodleText.setText0(this.allRecord.get(i3).getmText0());
                                doodleText.setText1(this.allRecord.get(i3).getmText1());
                                doodleText.setTypeface(getContext(), this.allRecord.get(i3).getmTextStyle());
                                doodleText.setBgColor(this.allRecord.get(i3).getmTextBgColor());
                                doodleText.setBold(this.allRecord.get(i3).getmTextBold());
                                doodleText.setItalic(this.allRecord.get(i3).getmTextItalic());
                                doodleText.setUnderline(this.allRecord.get(i3).getmTextUnderline());
                            } else if (doodleItem.getPen() == DoodlePen.BITMAP) {
                                ((DoodleBitmap) doodleItem).setBitmap(this.allRecord.get(i3).getmBitmap());
                            } else if (doodleItem.getPen() == DoodlePen.QRCODE) {
                                ((DoodleQRCode) doodleItem).setBitmap(this.allRecord.get(i3).getmBitmap(), this.allRecord.get(i3).getmText1(), this.allRecord.get(i3).getBgColor(), this.allRecord.get(i3).getFgColor());
                            } else if (doodleItem.getPen() == DoodlePen.BARCODE) {
                                ((DoodleBarCode) doodleItem).setBitmap(this.allRecord.get(i3).getmBitmap(), this.allRecord.get(i3).getmText1(), this.allRecord.get(i3).getBgColor(), this.allRecord.get(i3).getFgColor());
                            } else if (doodleItem.getPen() == DoodlePen.SHAPE) {
                                ((DoodleShape1) doodleItem).setBitmap(this.allRecord.get(i3).getmBitmap(), this.allRecord.get(i3).getFgColor(), this.allRecord.get(i3).getShape1(), this.allRecord.get(i3).getWidth(), this.allRecord.get(i3).getHeight(), this.allRecord.get(i3).getEffects());
                            }
                            doodleItem.setSize(this.allRecord.get(i3).getmSize());
                            doodleItem.setColor(new DoodleColor(this.allRecord.get(i3).getmColor()));
                            doodleItem.setLocation(this.allRecord.get(i3).getmLocationX(), this.allRecord.get(i3).getmLocationY());
                            doodleItem.setPivotX(this.allRecord.get(i3).getmPivotX());
                            doodleItem.setPivotY(this.allRecord.get(i3).getmPivotY());
                            doodleItem.setItemRotate(this.allRecord.get(i3).getmRotate());
                            doodleItem.setNeedClipOutside(this.allRecord.get(i3).ismIsNeedClipOutside());
                            doodleItem.setScale(this.allRecord.get(i3).getmScale());
                            addItem(doodleItem);
                        } else {
                            i3--;
                        }
                    }
                    if (!z) {
                        return;
                    }
                } else if (type == 2) {
                    IDoodleItem doodleItem2 = doodleRecord.getDoodleItem();
                    if (doodleItem2.getPen() == DoodlePen.TEXT) {
                        DoodleText doodleText2 = (DoodleText) doodleItem2;
                        doodleText2.setText0(doodleRecord.getmText0());
                        doodleText2.setText1(doodleRecord.getmText1());
                        doodleText2.setTypeface(getContext(), doodleRecord.getmTextStyle());
                        doodleText2.setBgColor(doodleRecord.getmTextBgColor());
                        doodleText2.setBold(doodleRecord.getmTextBold());
                        doodleText2.setItalic(doodleRecord.getmTextItalic());
                        doodleText2.setUnderline(doodleRecord.getmTextUnderline());
                    } else if (doodleItem2.getPen() == DoodlePen.BITMAP) {
                        ((DoodleBitmap) doodleItem2).setBitmap(doodleRecord.getmBitmap());
                    } else if (doodleItem2.getPen() == DoodlePen.QRCODE) {
                        ((DoodleQRCode) doodleItem2).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                    } else if (doodleItem2.getPen() == DoodlePen.BARCODE) {
                        ((DoodleBarCode) doodleItem2).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                    }
                    doodleItem2.setSize(doodleRecord.getmSize());
                    doodleItem2.setColor(new DoodleColor(doodleRecord.getmColor()));
                    doodleItem2.setLocation(doodleRecord.getmLocationX(), doodleRecord.getmLocationY());
                    doodleItem2.setPivotX(doodleRecord.getmPivotX());
                    doodleItem2.setPivotY(doodleRecord.getmPivotY());
                    doodleItem2.setItemRotate(doodleRecord.getmRotate());
                    doodleItem2.setNeedClipOutside(doodleRecord.ismIsNeedClipOutside());
                    doodleItem2.setScale(doodleRecord.getmScale());
                    addItem(doodleItem2);
                } else if (type == 3) {
                    downItem(doodleRecord.getDoodleItem());
                } else if (type == 4) {
                    upItem(doodleRecord.getDoodleItem());
                }
            }
            this.redoRecord.add(doodleRecord);
            this.allRecord.remove(doodleRecord);
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void redoRecord() {
        if (this.redoRecord.size() > 0) {
            DoodleRecord doodleRecord = this.redoRecord.get(this.redoRecord.size() - 1);
            int type = doodleRecord.getType();
            if (type == 0) {
                IDoodleItem doodleItem = doodleRecord.getDoodleItem();
                if (doodleItem.getPen() == DoodlePen.TEXT) {
                    DoodleText doodleText = (DoodleText) doodleItem;
                    doodleText.setText0(doodleRecord.getmText0());
                    doodleText.setText1(doodleRecord.getmText1());
                    doodleText.setTypeface(getContext(), doodleRecord.getmTextStyle());
                    doodleText.setBgColor(doodleRecord.getmTextBgColor());
                    doodleText.setBold(doodleRecord.getmTextBold());
                    doodleText.setItalic(doodleRecord.getmTextItalic());
                    doodleText.setUnderline(doodleRecord.getmTextUnderline());
                } else if (doodleItem.getPen() == DoodlePen.BITMAP) {
                    ((DoodleBitmap) doodleItem).setBitmap(doodleRecord.getmBitmap());
                } else if (doodleItem.getPen() == DoodlePen.QRCODE) {
                    ((DoodleQRCode) doodleItem).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                } else if (doodleItem.getPen() == DoodlePen.BARCODE) {
                    ((DoodleBarCode) doodleItem).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                } else if (doodleItem.getPen() == DoodlePen.SHAPE) {
                    ((DoodleShape1) doodleItem).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getFgColor(), doodleRecord.getShape1(), doodleRecord.getWidth(), doodleRecord.getHeight(), doodleRecord.getEffects());
                }
                doodleItem.setSize(doodleRecord.getmSize());
                doodleItem.setColor(new DoodleColor(doodleRecord.getmColor()));
                doodleItem.setLocation(doodleRecord.getmLocationX(), doodleRecord.getmLocationY());
                doodleItem.setPivotX(doodleRecord.getmPivotX());
                doodleItem.setPivotY(doodleRecord.getmPivotY());
                doodleItem.setItemRotate(doodleRecord.getmRotate());
                doodleItem.setNeedClipOutside(doodleRecord.ismIsNeedClipOutside());
                doodleItem.setScale(doodleRecord.getmScale());
                addItem(doodleItem);
            } else if (type == 1) {
                int identity = doodleRecord.getIdentity();
                if (doodleRecord.getDoodleItem().getPen() == DoodlePen.BG) {
                    ((DoodleBg) this.mItemStack.get(0)).setBitmap(doodleRecord.getmBitmap());
                    ((DoodleBg) this.mItemStack.get(0)).setText(doodleRecord.getmText0());
                    this.allRecord.add(doodleRecord);
                    this.redoRecord.remove(doodleRecord);
                    return;
                }
                if (this.allRecord.size() > 0) {
                    int size = this.allRecord.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        if (this.allRecord.get(size).getIdentity() == identity) {
                            removeItem(this.allRecord.get(size).getDoodleItem());
                            break;
                        }
                        size--;
                    }
                }
                IDoodleItem doodleItem2 = doodleRecord.getDoodleItem();
                if (doodleItem2.getPen() == DoodlePen.TEXT) {
                    DoodleText doodleText2 = (DoodleText) doodleItem2;
                    doodleText2.setText0(doodleRecord.getmText0());
                    doodleText2.setText1(doodleRecord.getmText1());
                    doodleText2.setTypeface(getContext(), doodleRecord.getmTextStyle());
                    doodleText2.setBgColor(doodleRecord.getmTextBgColor());
                    doodleText2.setBold(doodleRecord.getmTextBold());
                    doodleText2.setItalic(doodleRecord.getmTextItalic());
                    doodleText2.setUnderline(doodleRecord.getmTextUnderline());
                } else if (doodleItem2.getPen() == DoodlePen.BITMAP) {
                    ((DoodleBitmap) doodleItem2).setBitmap(doodleRecord.getmBitmap());
                } else if (doodleItem2.getPen() == DoodlePen.QRCODE) {
                    ((DoodleQRCode) doodleItem2).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                } else if (doodleItem2.getPen() == DoodlePen.BARCODE) {
                    ((DoodleBarCode) doodleItem2).setBitmap(doodleRecord.getmBitmap(), doodleRecord.getmText1(), doodleRecord.getBgColor(), doodleRecord.getFgColor());
                }
                doodleItem2.setSize(doodleRecord.getmSize());
                doodleItem2.setColor(new DoodleColor(doodleRecord.getmColor()));
                doodleItem2.setLocation(doodleRecord.getmLocationX(), doodleRecord.getmLocationY());
                doodleItem2.setPivotX(doodleRecord.getmPivotX());
                doodleItem2.setPivotY(doodleRecord.getmPivotY());
                doodleItem2.setItemRotate(doodleRecord.getmRotate());
                doodleItem2.setNeedClipOutside(doodleRecord.ismIsNeedClipOutside());
                doodleItem2.setScale(doodleRecord.getmScale());
                addItem(doodleItem2);
            } else if (type == 2) {
                removeItem(doodleRecord.getDoodleItem());
            } else if (type == 3) {
                upItem(doodleRecord.getDoodleItem());
            } else if (type == 4) {
                downItem(doodleRecord.getDoodleItem());
            }
            this.allRecord.add(doodleRecord);
            this.redoRecord.remove(doodleRecord);
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void clearRedoRecord() {
        this.redoRecord.clear();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setShowOriginal(boolean z) {
        this.isJustDrawOriginal = z;
        refreshWithBackground();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean isShowOriginal() {
        return this.isJustDrawOriginal;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setColor(IDoodleColor iDoodleColor) {
        this.mColor = iDoodleColor;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public IDoodleColor getColor() {
        return this.mColor;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleScale(float f, float f2, float f3) {
        float f4 = this.mMinScale;
        if (f >= f4) {
            f4 = this.mMaxScale;
            if (f <= f4) {
                f4 = f;
            }
        }
        float touchX = toTouchX(f2);
        float touchY = toTouchY(f3);
        this.mScale = f4;
        this.mTransX = toTransX(touchX, f2);
        this.mTransY = toTransY(touchY, f3);
        addFlag(8);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getDoodleScale() {
        return this.mScale;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setPen(IDoodlePen iDoodlePen) {
        if (iDoodlePen == null) {
            throw new RuntimeException("Pen can't be null");
        }
        IDoodlePen iDoodlePen2 = this.mPen;
        this.mPen = iDoodlePen;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public IDoodlePen getPen() {
        return this.mPen;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setShape(IDoodleShape iDoodleShape) {
        if (iDoodleShape == null) {
            throw new RuntimeException("Shape can't be null");
        }
        this.mShape = iDoodleShape;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public IDoodleShape getShape() {
        return this.mShape;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleTranslation(float f, float f2) {
        this.mTransX = f;
        this.mTransY = f2;
        refreshWithBackground();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleTranslationX(float f) {
        this.mTransX = f;
        refreshWithBackground();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getDoodleTranslationX() {
        return this.mTransX;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleTranslationY(float f) {
        this.mTransY = f;
        refreshWithBackground();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getDoodleTranslationY() {
        return this.mTransY;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setSize(float f) {
        this.mSize = f;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getSize() {
        return this.mSize;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setIsDrawableOutside(boolean z) {
        this.mIsDrawableOutside = z;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean isDrawableOutside() {
        return this.mIsDrawableOutside;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setZoomerScale(float f) {
        this.mZoomerScale = f;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getZoomerScale() {
        return this.mZoomerScale;
    }

    public void enableZoomer(boolean z) {
        this.mEnableZoomer = z;
    }

    public boolean isEnableZoomer() {
        return this.mEnableZoomer;
    }

    public void enableOverview(boolean z) {
        this.mEnableOverview = z;
    }

    public boolean isEnableOverview() {
        return this.mEnableOverview;
    }

    public boolean isScrollingDoodle() {
        return this.mIsScrollingDoodle;
    }

    public void setScrollingDoodle(boolean z) {
        this.mIsScrollingDoodle = z;
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void topItem(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        this.mItemStack.remove(iDoodleItem);
        this.mItemStack.add(iDoodleItem);
        addFlag(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void upItem(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        int iIndexOf = this.mItemStack.indexOf(iDoodleItem);
        if (iIndexOf < 0 || iIndexOf >= this.mItemStack.size() || iIndexOf == this.mItemStack.size() - 1) {
            return;
        }
        this.mItemStack.remove(iDoodleItem);
        this.mItemStack.add(iIndexOf + 1, iDoodleItem);
        addFlag(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean isUp(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        int iIndexOf = this.mItemStack.indexOf(iDoodleItem);
        boolean z = iIndexOf >= 0 && iIndexOf < this.mItemStack.size();
        if (iIndexOf == this.mItemStack.size() - 1) {
            return false;
        }
        return z;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void bottomItem(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        this.mItemStack.remove(iDoodleItem);
        this.mItemStack.add(0, iDoodleItem);
        addFlag(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void downItem(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        int iIndexOf = this.mItemStack.indexOf(iDoodleItem);
        if (iIndexOf < 1 || iIndexOf >= this.mItemStack.size() || iIndexOf == 1) {
            return;
        }
        this.mItemStack.remove(iDoodleItem);
        this.mItemStack.add(iIndexOf - 1, iDoodleItem);
        addFlag(2);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public boolean isDown(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        int iIndexOf = this.mItemStack.indexOf(iDoodleItem);
        boolean z = iIndexOf >= 1 && iIndexOf < this.mItemStack.size();
        if (iIndexOf == 1) {
            return false;
        }
        return z;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleMinScale(float f) {
        this.mMinScale = f;
        setDoodleScale(this.mScale, 0.0f, 0.0f);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getDoodleMinScale() {
        return this.mMinScale;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void setDoodleMaxScale(float f) {
        this.mMaxScale = f;
        setDoodleScale(this.mScale, 0.0f, 0.0f);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getDoodleMaxScale() {
        return this.mMaxScale;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public float getUnitSize() {
        return this.mDoodleSizeUnit;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void addItem(IDoodleItem iDoodleItem) {
        addItemInner(iDoodleItem);
        this.mRedoItemStack.clear();
    }

    private void addItemInner(IDoodleItem iDoodleItem) {
        if (iDoodleItem == null) {
            throw new RuntimeException("item is null");
        }
        if (this != iDoodleItem.getDoodle()) {
            throw new RuntimeException("the object Doodle is illegal");
        }
        if (this.mItemStack.contains(iDoodleItem)) {
            throw new RuntimeException("the item has been added");
        }
        this.mItemStack.add(iDoodleItem);
        iDoodleItem.onAdd();
        this.mPendingItemsDrawToBitmap.add(iDoodleItem);
        addFlag(4);
        refresh();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void removeItem(IDoodleItem iDoodleItem) {
        if (this.mItemStack.remove(iDoodleItem)) {
            this.mItemStackOnViewCanvas.remove(iDoodleItem);
            this.mPendingItemsDrawToBitmap.remove(iDoodleItem);
            iDoodleItem.onRemove();
            addFlag(2);
            refresh();
        }
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public void addItemRecord(IDoodleItem iDoodleItem, int i) {
        if (iDoodleItem == null) {
            return;
        }
        DoodleRecord doodleRecord = new DoodleRecord();
        doodleRecord.setIdentity(System.identityHashCode(iDoodleItem));
        doodleRecord.setType(i);
        doodleRecord.setDoodleItem(iDoodleItem);
        doodleRecord.setmSize(iDoodleItem.getSize());
        doodleRecord.setmColor(iDoodleItem.getColor() == null ? -1 : ((DoodleColor) iDoodleItem.getColor()).getColor());
        doodleRecord.setmLocationX(iDoodleItem.getLocation().x);
        doodleRecord.setmLocationY(iDoodleItem.getLocation().y);
        doodleRecord.setmPivotX(iDoodleItem.getPivotX());
        doodleRecord.setmPivotY(iDoodleItem.getPivotY());
        doodleRecord.setmRotate(iDoodleItem.getItemRotate());
        doodleRecord.setmIsNeedClipOutside(iDoodleItem.isNeedClipOutside());
        doodleRecord.setmScale(iDoodleItem.getScale());
        if (iDoodleItem.getPen() == DoodlePen.BG) {
            doodleRecord.setmIDoodlePen(0);
            DoodleBg doodleBg = (DoodleBg) iDoodleItem;
            doodleRecord.setmBitmap(doodleBg.getBitmap());
            doodleRecord.setmText0(doodleBg.getText());
        } else if (iDoodleItem.getPen() == DoodlePen.TEXT) {
            doodleRecord.setmIDoodlePen(1);
            DoodleText doodleText = (DoodleText) iDoodleItem;
            doodleRecord.setmText0(doodleText.getText0());
            doodleRecord.setmText1(doodleText.getText1());
            doodleRecord.setmTextStyle(doodleText.getTypeface());
            doodleRecord.setmTextBgColor(doodleText.getBgColor());
            doodleRecord.setmTextBold(doodleText.getBold());
            doodleRecord.setmTextItalic(doodleText.getItalic());
            doodleRecord.setmTextUnderline(doodleText.getUnderline());
        } else if (iDoodleItem.getPen() == DoodlePen.BITMAP) {
            doodleRecord.setmIDoodlePen(2);
            doodleRecord.setmBitmap(((DoodleBitmap) iDoodleItem).getBitmap());
        } else if (iDoodleItem.getPen() == DoodlePen.QRCODE) {
            doodleRecord.setmIDoodlePen(3);
            DoodleQRCode doodleQRCode = (DoodleQRCode) iDoodleItem;
            doodleRecord.setmBitmap(doodleQRCode.getBitmap());
            doodleRecord.setmText1(doodleQRCode.getText());
            doodleRecord.setBgColor(doodleQRCode.getBgColor());
            doodleRecord.setFgColor(doodleQRCode.getFgColor());
        } else if (iDoodleItem.getPen() == DoodlePen.BARCODE) {
            doodleRecord.setmIDoodlePen(4);
            DoodleBarCode doodleBarCode = (DoodleBarCode) iDoodleItem;
            doodleRecord.setmBitmap(doodleBarCode.getBitmap());
            doodleRecord.setmText1(doodleBarCode.getText());
            doodleRecord.setBgColor(doodleBarCode.getBgColor());
            doodleRecord.setFgColor(doodleBarCode.getFgColor());
        } else if (iDoodleItem.getPen() == DoodlePen.SHAPE) {
            doodleRecord.setmIDoodlePen(5);
            DoodleShape1 doodleShape1 = (DoodleShape1) iDoodleItem;
            doodleRecord.setmBitmap(doodleShape1.getBitmap());
            doodleRecord.setFgColor(doodleShape1.getFgColor());
            doodleRecord.setShape1(doodleShape1.getShape1());
            doodleRecord.setWidth(doodleShape1.getWidth());
            doodleRecord.setHeight(doodleShape1.getHeight());
            doodleRecord.setEffects(doodleShape1.getEffects());
        }
        this.allRecord.add(doodleRecord);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<DoodleRecord> getItemRecord() {
        return this.allRecord;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<DoodleRecord> getItemRedoRecord() {
        return this.redoRecord;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public int getItemCount() {
        return this.mItemStack.size();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<IDoodleItem> getAllItem() {
        return new ArrayList(this.mItemStack);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<IDoodleItem> getAllItem(boolean z) {
        return this.mItemStack;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public int getRedoItemCount() {
        return this.mRedoItemStack.size();
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<IDoodleItem> getAllRedoItem() {
        return new ArrayList(this.mRedoItemStack);
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public List<IDoodleItem> getAllRedoItem(boolean z) {
        return this.mRedoItemStack;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    @Override // cn.highlight.lib_doodle.IDoodle
    public Bitmap getDoodleBitmap() {
        return this.mDoodleBitmap;
    }

    public int getCenterWidth() {
        return this.mCenterWidth;
    }

    public int getCenterHeight() {
        return this.mCenterHeight;
    }

    public float getCenterScale() {
        return this.mCenterScale;
    }

    public float getCentreTranX() {
        return this.mCentreTranX;
    }

    public float getCentreTranY() {
        return this.mCentreTranY;
    }

    public float getRotateScale() {
        return this.mRotateScale;
    }

    public float getRotateTranX() {
        return this.mRotateTranX;
    }

    public float getRotateTranY() {
        return this.mRotateTranY;
    }

    public boolean isEditMode() {
        return this.mIsEditMode;
    }

    public void setEditMode(boolean z) {
        this.mIsEditMode = z;
        refresh();
    }

    private class BackgroundView extends View {
        public BackgroundView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (LogUtil.sIsLog) {
                LogUtil.d(DoodleView.TAG, "BackgroundView>>onDraw");
            }
            int iSave = canvas.save();
            canvas.rotate(DoodleView.this.mDoodleRotateDegree, getWidth() / 2, getHeight() / 2);
            doDraw(canvas);
            canvas.restoreToCount(iSave);
        }

        private void doDraw(Canvas canvas) {
            canvas.translate(DoodleView.this.getAllTranX(), DoodleView.this.getAllTranY());
            float allScale = DoodleView.this.getAllScale();
            canvas.scale(allScale, allScale);
            if (DoodleView.this.isJustDrawOriginal) {
                canvas.drawBitmap(DoodleView.this.mBitmap, 0.0f, 0.0f, (Paint) null);
                return;
            }
            Bitmap bitmap = DoodleView.this.mOptimizeDrawing ? DoodleView.this.mDoodleBitmap : DoodleView.this.mBitmap;
            if (bitmap.isRecycled()) {
                bitmap = DoodleView.this.mBitmap;
            }
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    private class ForegroundView extends View {
        public ForegroundView(Context context) {
            super(context);
            setLayerType(1, null);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            IDoodleTouchDetector iDoodleTouchDetector = (IDoodleTouchDetector) DoodleView.this.mTouchDetectorMap.get(DoodleView.this.mPen);
            if (iDoodleTouchDetector == null) {
                if (DoodleView.this.mDefaultTouchDetector != null) {
                    return DoodleView.this.mDefaultTouchDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
            return iDoodleTouchDetector.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (LogUtil.sIsLog) {
                LogUtil.d(DoodleView.TAG, "ForegroundView>>onDraw");
            }
            int iSave = canvas.save();
            canvas.rotate(DoodleView.this.mDoodleRotateDegree, getWidth() / 2, getHeight() / 2);
            doDraw(canvas);
            canvas.restoreToCount(iSave);
        }

        private void doDraw(Canvas canvas) {
            boolean z;
            if (DoodleView.this.isJustDrawOriginal) {
                return;
            }
            canvas.translate(DoodleView.this.getAllTranX(), DoodleView.this.getAllTranY());
            float allScale = DoodleView.this.getAllScale();
            canvas.scale(allScale, allScale);
            Bitmap bitmap = DoodleView.this.mOptimizeDrawing ? DoodleView.this.mDoodleBitmap : DoodleView.this.mBitmap;
            int iSave = canvas.save();
            List<IDoodleItem> list = DoodleView.this.mItemStack;
            if (DoodleView.this.mOptimizeDrawing) {
                list = DoodleView.this.mItemStackOnViewCanvas;
            }
            if (DoodleView.this.mIsDrawableOutside) {
                z = false;
            } else {
                z = true;
                canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            }
            for (IDoodleItem iDoodleItem : list) {
                if (!iDoodleItem.isNeedClipOutside()) {
                    if (z) {
                        canvas.restore();
                    }
                    iDoodleItem.draw(canvas);
                    if (z) {
                        canvas.save();
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    }
                } else {
                    iDoodleItem.draw(canvas);
                }
            }
            for (IDoodleItem iDoodleItem2 : list) {
                if (!iDoodleItem2.isNeedClipOutside()) {
                    if (z) {
                        canvas.restore();
                    }
                    iDoodleItem2.drawAtTheTop(canvas);
                    if (z) {
                        canvas.save();
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    }
                } else {
                    iDoodleItem2.drawAtTheTop(canvas);
                }
            }
            canvas.restoreToCount(iSave);
            if (DoodleView.this.mPen != null) {
                DoodleView.this.mPen.drawHelpers(canvas, DoodleView.this);
            }
            if (DoodleView.this.mShape != null) {
                DoodleView.this.mShape.drawHelpers(canvas, DoodleView.this);
            }
        }
    }
}
