package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import cn.highlight.lib_doodle.DoodleColor;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class DoodlePath extends DoodleRotatableItemBase {
    public static final int MOSAIC_LEVEL_1 = 5;
    public static final int MOSAIC_LEVEL_2 = 20;
    public static final int MOSAIC_LEVEL_3 = 50;
    private static WeakHashMap<IDoodle, HashMap<Integer, Bitmap>> sMosaicBitmapMap = new WeakHashMap<>();
    private Path mArrowTrianglePath;
    private Matrix mBitmapColorMatrix;
    private RectF mBound;
    private CopyLocation mCopyLocation;
    private PointF mDxy;
    private final Path mOriginPath;
    private Paint mPaint;
    private final Path mPath;
    private Rect mRect;
    private PointF mSxy;
    private final Matrix mTransform;

    public DoodlePath(IDoodle iDoodle) {
        super(iDoodle, 0, 0.0f, 0.0f);
        this.mPath = new Path();
        this.mOriginPath = new Path();
        this.mSxy = new PointF();
        this.mDxy = new PointF();
        this.mPaint = new Paint();
        this.mTransform = new Matrix();
        this.mRect = new Rect();
        this.mBitmapColorMatrix = new Matrix();
        this.mBound = new RectF();
    }

    public DoodlePath(IDoodle iDoodle, DoodlePaintAttrs doodlePaintAttrs) {
        super(iDoodle, doodlePaintAttrs, 0, 0.0f, 0.0f);
        this.mPath = new Path();
        this.mOriginPath = new Path();
        this.mSxy = new PointF();
        this.mDxy = new PointF();
        this.mPaint = new Paint();
        this.mTransform = new Matrix();
        this.mRect = new Rect();
        this.mBitmapColorMatrix = new Matrix();
        this.mBound = new RectF();
    }

    public void updateXY(float f, float f2, float f3, float f4) {
        this.mSxy.set(f, f2);
        this.mDxy.set(f3, f4);
        this.mOriginPath.reset();
        if (DoodleShape.ARROW.equals(getShape())) {
            updateArrowPath(this.mOriginPath, this.mSxy.x, this.mSxy.y, this.mDxy.x, this.mDxy.y, getSize());
        } else if (DoodleShape.LINE.equals(getShape())) {
            updateLinePath(this.mOriginPath, this.mSxy.x, this.mSxy.y, this.mDxy.x, this.mDxy.y, getSize());
        } else if (DoodleShape.FILL_CIRCLE.equals(getShape()) || DoodleShape.HOLLOW_CIRCLE.equals(getShape())) {
            updateCirclePath(this.mOriginPath, this.mSxy.x, this.mSxy.y, this.mDxy.x, this.mDxy.y, getSize());
        } else if (DoodleShape.FILL_RECT.equals(getShape()) || DoodleShape.HOLLOW_RECT.equals(getShape())) {
            updateRectPath(this.mOriginPath, this.mSxy.x, this.mSxy.y, this.mDxy.x, this.mDxy.y, getSize());
        }
        adjustPath(true);
    }

    public void updatePath(Path path) {
        this.mOriginPath.reset();
        this.mOriginPath.addPath(path);
        adjustPath(true);
    }

    public CopyLocation getCopyLocation() {
        return this.mCopyLocation;
    }

    public Path getPath() {
        return this.mPath;
    }

    private PointF getDxy() {
        return this.mDxy;
    }

    private PointF getSxy() {
        return this.mSxy;
    }

    public static DoodlePath toShape(IDoodle iDoodle, float f, float f2, float f3, float f4) {
        DoodlePath doodlePath = new DoodlePath(iDoodle);
        doodlePath.setPen(iDoodle.getPen().copy());
        doodlePath.setShape(iDoodle.getShape().copy());
        doodlePath.setSize(iDoodle.getSize());
        doodlePath.setColor(iDoodle.getColor().copy());
        doodlePath.updateXY(f, f2, f3, f4);
        if (doodlePath.getPen() == DoodlePen.COPY && (iDoodle instanceof DoodleView)) {
            doodlePath.mCopyLocation = DoodlePen.COPY.getCopyLocation().copy();
        }
        return doodlePath;
    }

    public static DoodlePath toPath(IDoodle iDoodle, Path path) {
        DoodlePath doodlePath = new DoodlePath(iDoodle);
        doodlePath.setPen(iDoodle.getPen().copy());
        doodlePath.setShape(iDoodle.getShape().copy());
        doodlePath.setSize(iDoodle.getSize());
        doodlePath.setColor(iDoodle.getColor().copy());
        doodlePath.updatePath(path);
        if (iDoodle instanceof DoodleView) {
            doodlePath.mCopyLocation = DoodlePen.COPY.getCopyLocation().copy();
        } else {
            doodlePath.mCopyLocation = null;
        }
        return doodlePath;
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    protected void doDraw(Canvas canvas) {
        this.mPaint.reset();
        this.mPaint.setStrokeWidth(getSize());
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setDither(true);
        this.mPaint.setAntiAlias(true);
        getPen().config(this, this.mPaint);
        getColor().config(this, this.mPaint);
        getShape().config(this, this.mPaint);
        canvas.drawPath(getPath(), this.mPaint);
    }

    private void resetLocationBounds(Rect rect) {
        if (this.mOriginPath == null) {
            return;
        }
        int size = (int) ((getSize() / 2.0f) + 0.5f);
        this.mOriginPath.computeBounds(this.mBound, false);
        if (getShape() == DoodleShape.ARROW || getShape() == DoodleShape.FILL_CIRCLE || getShape() == DoodleShape.FILL_RECT) {
            size = (int) getDoodle().getUnitSize();
        }
        float f = size;
        rect.set((int) (this.mBound.left - f), (int) (this.mBound.top - f), (int) (this.mBound.right + f), (int) (this.mBound.bottom + f));
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    protected void resetBounds(Rect rect) {
        resetLocationBounds(rect);
        rect.set(0, 0, rect.width(), rect.height());
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase, cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public boolean isDoodleEditable() {
        if (getPen() == DoodlePen.ERASER) {
            return false;
        }
        return super.isDoodleEditable();
    }

    private void updateArrowPath(Path path, float f, float f2, float f3, float f4, float f5) {
        double d = f5;
        double d2 = f5 / 2.0f;
        double d3 = d2 / 2.0d;
        double dAtan = Math.atan(d3 / d);
        double d4 = d * d;
        double dSqrt = Math.sqrt(((d3 * d2) / 2.0d) + d4) - 5.0d;
        float f6 = f3 - f;
        float f7 = f4 - f2;
        double[] dArrRotateVec = DrawUtil.rotateVec(f6, f7, dAtan, true, dSqrt);
        double[] dArrRotateVec2 = DrawUtil.rotateVec(f6, f7, -dAtan, true, dSqrt);
        double d5 = f3;
        float f8 = (float) (d5 - dArrRotateVec[0]);
        double d6 = f4;
        float f9 = (float) (d6 - dArrRotateVec[1]);
        float f10 = (float) (d5 - dArrRotateVec2[0]);
        float f11 = (float) (d6 - dArrRotateVec2[1]);
        path.moveTo(f, f2);
        path.lineTo(f8, f9);
        path.lineTo(f10, f11);
        path.close();
        double dAtan2 = Math.atan(d2 / d);
        double dSqrt2 = Math.sqrt((d2 * d2) + d4);
        double[] dArrRotateVec3 = DrawUtil.rotateVec(f6, f7, dAtan2, true, dSqrt2);
        double[] dArrRotateVec4 = DrawUtil.rotateVec(f6, f7, -dAtan2, true, dSqrt2);
        float f12 = (float) (d5 - dArrRotateVec3[0]);
        float f13 = (float) (d6 - dArrRotateVec3[1]);
        float f14 = (float) (d5 - dArrRotateVec4[0]);
        float f15 = (float) (d6 - dArrRotateVec4[1]);
        if (this.mArrowTrianglePath == null) {
            this.mArrowTrianglePath = new Path();
        }
        this.mArrowTrianglePath.reset();
        this.mArrowTrianglePath.moveTo(f3, f4);
        this.mArrowTrianglePath.lineTo(f14, f15);
        this.mArrowTrianglePath.lineTo(f12, f13);
        this.mArrowTrianglePath.close();
        path.addPath(this.mArrowTrianglePath);
    }

    private void updateLinePath(Path path, float f, float f2, float f3, float f4, float f5) {
        path.moveTo(f, f2);
        path.lineTo(f3, f4);
    }

    private void updateCirclePath(Path path, float f, float f2, float f3, float f4, float f5) {
        float f6 = f - f3;
        float f7 = f2 - f4;
        path.addCircle(f, f2, (float) Math.sqrt((f6 * f6) + (f7 * f7)), Path.Direction.CCW);
    }

    private void updateRectPath(Path path, float f, float f2, float f3, float f4, float f5) {
        if (f < f3) {
            if (f2 < f4) {
                path.addRect(f, f2, f3, f4, Path.Direction.CCW);
                return;
            } else {
                path.addRect(f, f4, f3, f2, Path.Direction.CCW);
                return;
            }
        }
        if (f2 < f4) {
            path.addRect(f3, f2, f, f4, Path.Direction.CCW);
        } else {
            path.addRect(f3, f4, f, f2, Path.Direction.CCW);
        }
    }

    public static DoodleColor getMosaicColor(IDoodle iDoodle, int i) {
        HashMap<Integer, Bitmap> map = sMosaicBitmapMap.get(iDoodle);
        if (map == null) {
            map = new HashMap<>();
            sMosaicBitmapMap.put(iDoodle, map);
        }
        Matrix matrix = new Matrix();
        float f = i;
        float f2 = 1.0f / f;
        matrix.setScale(f2, f2);
        Bitmap bitmapCreateBitmap = map.get(Integer.valueOf(i));
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = Bitmap.createBitmap(iDoodle.getBitmap(), 0, 0, iDoodle.getBitmap().getWidth(), iDoodle.getBitmap().getHeight(), matrix, true);
            map.put(Integer.valueOf(i), bitmapCreateBitmap);
        }
        matrix.reset();
        matrix.setScale(f, f);
        DoodleColor doodleColor = new DoodleColor(bitmapCreateBitmap, matrix, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        doodleColor.setLevel(i);
        return doodleColor;
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void setLocation(float f, float f2, boolean z) {
        super.setLocation(f, f2, z);
        adjustMosaic();
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setColor(IDoodleColor iDoodleColor) {
        super.setColor(iDoodleColor);
        if (getPen() == DoodlePen.MOSAIC) {
            setLocation(getLocation().x, getLocation().y, false);
        }
        adjustPath(false);
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase, cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setSize(float f) {
        super.setSize(f);
        if (this.mTransform == null) {
            return;
        }
        if (DoodleShape.ARROW.equals(getShape())) {
            this.mOriginPath.reset();
            updateArrowPath(this.mOriginPath, this.mSxy.x, this.mSxy.y, this.mDxy.x, this.mDxy.y, getSize());
        }
        adjustPath(false);
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase, cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setScale(float f) {
        super.setScale(f);
        adjustMosaic();
    }

    private void adjustMosaic() {
        if (getPen() == DoodlePen.MOSAIC && (getColor() instanceof DoodleColor)) {
            DoodleColor doodleColor = (DoodleColor) getColor();
            Matrix matrix = doodleColor.getMatrix();
            matrix.reset();
            matrix.preScale(1.0f / getScale(), 1.0f / getScale(), getPivotX(), getPivotY());
            matrix.preTranslate((-getLocation().x) * getScale(), (-getLocation().y) * getScale());
            matrix.preRotate(-getItemRotate(), getPivotX(), getPivotY());
            matrix.preScale(doodleColor.getLevel(), doodleColor.getLevel());
            doodleColor.setMatrix(matrix);
            refresh();
        }
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase, cn.highlight.lib_doodle.IDoodleItem
    public void setItemRotate(float f) {
        super.setItemRotate(f);
        adjustMosaic();
    }

    private void adjustPath(boolean z) {
        float touchStartY;
        resetLocationBounds(this.mRect);
        this.mPath.reset();
        this.mPath.addPath(this.mOriginPath);
        this.mTransform.reset();
        this.mTransform.setTranslate(-this.mRect.left, -this.mRect.top);
        this.mPath.transform(this.mTransform);
        if (z) {
            setPivotX(this.mRect.left + (this.mRect.width() / 2));
            setPivotY(this.mRect.top + (this.mRect.height() / 2));
            setLocation(this.mRect.left, this.mRect.top, false);
        }
        if (getColor() instanceof DoodleColor) {
            DoodleColor doodleColor = (DoodleColor) getColor();
            if (doodleColor.getType() == DoodleColor.Type.BITMAP && doodleColor.getBitmap() != null) {
                this.mBitmapColorMatrix.reset();
                if (getPen() == DoodlePen.MOSAIC) {
                    adjustMosaic();
                } else {
                    if (getPen() == DoodlePen.COPY) {
                        CopyLocation copyLocation = getCopyLocation();
                        float touchStartX = 0.0f;
                        if (copyLocation != null) {
                            touchStartX = copyLocation.getTouchStartX() - copyLocation.getCopyStartX();
                            touchStartY = copyLocation.getTouchStartY() - copyLocation.getCopyStartY();
                        } else {
                            touchStartY = 0.0f;
                        }
                        resetLocationBounds(this.mRect);
                        this.mBitmapColorMatrix.setTranslate(touchStartX - this.mRect.left, touchStartY - this.mRect.top);
                    } else {
                        this.mBitmapColorMatrix.setTranslate(-this.mRect.left, -this.mRect.top);
                    }
                    float level = doodleColor.getLevel();
                    this.mBitmapColorMatrix.preScale(level, level);
                    doodleColor.setMatrix(this.mBitmapColorMatrix);
                    refresh();
                }
            }
        }
        refresh();
    }
}
