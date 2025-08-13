package com.google.android.material.shape;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable {
    private int alpha;
    private final ShapePath[] cornerPaths;
    private final Matrix[] cornerTransforms;
    private final Matrix[] edgeTransforms;
    private float interpolation;
    private final Matrix matrix;
    private final Paint paint;
    private Paint.Style paintStyle;
    private final Path path;
    private final PointF pointF;
    private float scale;
    private final float[] scratch;
    private final float[] scratch2;
    private final Region scratchRegion;
    private int shadowColor;
    private int shadowElevation;
    private boolean shadowEnabled;
    private int shadowRadius;
    private final ShapePath shapePath;
    private ShapePathModel shapedViewModel;
    private float strokeWidth;
    private PorterDuffColorFilter tintFilter;
    private ColorStateList tintList;
    private PorterDuff.Mode tintMode;
    private final Region transparentRegion;
    private boolean useTintColorForShadow;

    private static int modulateAlpha(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public MaterialShapeDrawable() {
        this(null);
    }

    public MaterialShapeDrawable(ShapePathModel shapePathModel) {
        this.paint = new Paint();
        this.cornerTransforms = new Matrix[4];
        this.edgeTransforms = new Matrix[4];
        this.cornerPaths = new ShapePath[4];
        this.matrix = new Matrix();
        this.path = new Path();
        this.pointF = new PointF();
        this.shapePath = new ShapePath();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        this.scratch = new float[2];
        this.scratch2 = new float[2];
        this.shapedViewModel = null;
        this.shadowEnabled = false;
        this.useTintColorForShadow = false;
        this.interpolation = 1.0f;
        this.shadowColor = ViewCompat.MEASURED_STATE_MASK;
        this.shadowElevation = 5;
        this.shadowRadius = 10;
        this.alpha = 255;
        this.scale = 1.0f;
        this.strokeWidth = 0.0f;
        this.paintStyle = Paint.Style.FILL_AND_STROKE;
        this.tintMode = PorterDuff.Mode.SRC_IN;
        this.tintList = null;
        this.shapedViewModel = shapePathModel;
        for (int i = 0; i < 4; i++) {
            this.cornerTransforms[i] = new Matrix();
            this.edgeTransforms[i] = new Matrix();
            this.cornerPaths[i] = new ShapePath();
        }
    }

    public ShapePathModel getShapedViewModel() {
        return this.shapedViewModel;
    }

    public void setShapedViewModel(ShapePathModel shapePathModel) {
        this.shapedViewModel = shapePathModel;
        invalidateSelf();
    }

    public ColorStateList getTintList() {
        return this.tintList;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.tintList = colorStateList;
        updateTintFilter();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.tintMode = mode;
        updateTintFilter();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.transparentRegion.set(bounds);
        getPath(bounds.width(), bounds.height(), this.path);
        this.scratchRegion.setPath(this.path, this.transparentRegion);
        this.transparentRegion.op(this.scratchRegion, Region.Op.DIFFERENCE);
        return this.transparentRegion;
    }

    public boolean isPointInTransparentRegion(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public boolean isShadowEnabled() {
        return this.shadowEnabled;
    }

    public void setShadowEnabled(boolean z) {
        this.shadowEnabled = z;
        invalidateSelf();
    }

    public float getInterpolation() {
        return this.interpolation;
    }

    public void setInterpolation(float f) {
        this.interpolation = f;
        invalidateSelf();
    }

    public int getShadowElevation() {
        return this.shadowElevation;
    }

    public void setShadowElevation(int i) {
        this.shadowElevation = i;
        invalidateSelf();
    }

    public int getShadowRadius() {
        return this.shadowRadius;
    }

    public void setShadowRadius(int i) {
        this.shadowRadius = i;
        invalidateSelf();
    }

    public float getScale() {
        return this.scale;
    }

    public void setScale(float f) {
        this.scale = f;
        invalidateSelf();
    }

    public void setUseTintColorForShadow(boolean z) {
        this.useTintColorForShadow = z;
        invalidateSelf();
    }

    public void setShadowColor(int i) {
        this.shadowColor = i;
        this.useTintColorForShadow = false;
        invalidateSelf();
    }

    public Paint.Style getPaintStyle() {
        return this.paintStyle;
    }

    public void setPaintStyle(Paint.Style style) {
        this.paintStyle = style;
        invalidateSelf();
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.paint.setColorFilter(this.tintFilter);
        int alpha = this.paint.getAlpha();
        this.paint.setAlpha(modulateAlpha(alpha, this.alpha));
        this.paint.setStrokeWidth(this.strokeWidth);
        this.paint.setStyle(this.paintStyle);
        int i = this.shadowElevation;
        if (i > 0 && this.shadowEnabled) {
            this.paint.setShadowLayer(this.shadowRadius, 0.0f, i, this.shadowColor);
        }
        if (this.shapedViewModel != null) {
            getPath(canvas.getWidth(), canvas.getHeight(), this.path);
            canvas.drawPath(this.path, this.paint);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.paint);
        }
        this.paint.setAlpha(alpha);
    }

    public void getPathForSize(int i, int i2, Path path) {
        path.rewind();
        if (this.shapedViewModel == null) {
            return;
        }
        for (int i3 = 0; i3 < 4; i3++) {
            setCornerPathAndTransform(i3, i, i2);
            setEdgeTransform(i3, i, i2);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            appendCornerPath(i4, path);
            appendEdgePath(i4, path);
        }
        path.close();
    }

    private void setCornerPathAndTransform(int i, int i2, int i3) {
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        getCornerTreatmentForIndex(i).getCornerPath(angleOfCorner(i, i2, i3), this.interpolation, this.cornerPaths[i]);
        float fAngleOfEdge = angleOfEdge(((i - 1) + 4) % 4, i2, i3) + 1.5707964f;
        this.cornerTransforms[i].reset();
        this.cornerTransforms[i].setTranslate(this.pointF.x, this.pointF.y);
        this.cornerTransforms[i].preRotate((float) Math.toDegrees(fAngleOfEdge));
    }

    private void setEdgeTransform(int i, int i2, int i3) {
        this.scratch[0] = this.cornerPaths[i].endX;
        this.scratch[1] = this.cornerPaths[i].endY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        float fAngleOfEdge = angleOfEdge(i, i2, i3);
        this.edgeTransforms[i].reset();
        Matrix matrix = this.edgeTransforms[i];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[i].preRotate((float) Math.toDegrees(fAngleOfEdge));
    }

    private void appendCornerPath(int i, Path path) {
        this.scratch[0] = this.cornerPaths[i].startX;
        this.scratch[1] = this.cornerPaths[i].startY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        if (i == 0) {
            float[] fArr = this.scratch;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            float[] fArr2 = this.scratch;
            path.lineTo(fArr2[0], fArr2[1]);
        }
        this.cornerPaths[i].applyToPath(this.cornerTransforms[i], path);
    }

    private void appendEdgePath(int i, Path path) {
        int i2 = (i + 1) % 4;
        this.scratch[0] = this.cornerPaths[i].endX;
        this.scratch[1] = this.cornerPaths[i].endY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[i2].startX;
        this.scratch2[1] = this.cornerPaths[i2].startY;
        this.cornerTransforms[i2].mapPoints(this.scratch2);
        float f = this.scratch[0];
        float[] fArr = this.scratch2;
        float fHypot = (float) Math.hypot(f - fArr[0], r0[1] - fArr[1]);
        this.shapePath.reset(0.0f, 0.0f);
        getEdgeTreatmentForIndex(i).getEdgePath(fHypot, this.interpolation, this.shapePath);
        this.shapePath.applyToPath(this.edgeTransforms[i], path);
    }

    private CornerTreatment getCornerTreatmentForIndex(int i) {
        if (i == 1) {
            return this.shapedViewModel.getTopRightCorner();
        }
        if (i == 2) {
            return this.shapedViewModel.getBottomRightCorner();
        }
        if (i == 3) {
            return this.shapedViewModel.getBottomLeftCorner();
        }
        return this.shapedViewModel.getTopLeftCorner();
    }

    private EdgeTreatment getEdgeTreatmentForIndex(int i) {
        if (i == 1) {
            return this.shapedViewModel.getRightEdge();
        }
        if (i == 2) {
            return this.shapedViewModel.getBottomEdge();
        }
        if (i == 3) {
            return this.shapedViewModel.getLeftEdge();
        }
        return this.shapedViewModel.getTopEdge();
    }

    private void getCoordinatesOfCorner(int i, int i2, int i3, PointF pointF) {
        if (i == 1) {
            pointF.set(i2, 0.0f);
            return;
        }
        if (i == 2) {
            pointF.set(i2, i3);
        } else if (i == 3) {
            pointF.set(0.0f, i3);
        } else {
            pointF.set(0.0f, 0.0f);
        }
    }

    private float angleOfCorner(int i, int i2, int i3) {
        getCoordinatesOfCorner(((i - 1) + 4) % 4, i2, i3, this.pointF);
        float f = this.pointF.x;
        float f2 = this.pointF.y;
        getCoordinatesOfCorner((i + 1) % 4, i2, i3, this.pointF);
        float f3 = this.pointF.x;
        float f4 = this.pointF.y;
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        float f5 = this.pointF.x;
        float f6 = this.pointF.y;
        float fAtan2 = ((float) Math.atan2(f2 - f6, f - f5)) - ((float) Math.atan2(f4 - f6, f3 - f5));
        return fAtan2 < 0.0f ? (float) (fAtan2 + 6.283185307179586d) : fAtan2;
    }

    private float angleOfEdge(int i, int i2, int i3) {
        int i4 = (i + 1) % 4;
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        float f = this.pointF.x;
        float f2 = this.pointF.y;
        getCoordinatesOfCorner(i4, i2, i3, this.pointF);
        return (float) Math.atan2(this.pointF.y - f2, this.pointF.x - f);
    }

    private void getPath(int i, int i2, Path path) {
        getPathForSize(i, i2, path);
        if (this.scale == 1.0f) {
            return;
        }
        this.matrix.reset();
        Matrix matrix = this.matrix;
        float f = this.scale;
        matrix.setScale(f, f, i / 2, i2 / 2);
        path.transform(this.matrix);
    }

    private void updateTintFilter() {
        ColorStateList colorStateList = this.tintList;
        if (colorStateList == null || this.tintMode == null) {
            this.tintFilter = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.tintFilter = new PorterDuffColorFilter(colorForState, this.tintMode);
        if (this.useTintColorForShadow) {
            this.shadowColor = colorForState;
        }
    }
}
