package cn.highlight.lib_doodle;

import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.view.MotionEvent;
import androidx.core.view.ViewCompat;
import cn.forward.androids.ScaleGestureDetectorApi27;
import cn.forward.androids.TouchGestureDetector;
import java.util.List;

/* loaded from: classes.dex */
public class DoodleOnTouchGestureListener extends TouchGestureDetector.OnTouchGestureListener {
    private static final float VALUE = 1.0f;
    private DoodlePath mCurrDoodlePath;
    private Path mCurrPath;
    private DoodleView mDoodle;
    private Float mLastFocusX;
    private Float mLastFocusY;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mRotateDiff;
    private float mScaleAnimTranY;
    private float mScaleAnimTransX;
    private ValueAnimator mScaleAnimator;
    private IDoodleSelectableItem mSelectedItem;
    private ISelectionListener mSelectionListener;
    private float mStartX;
    private float mStartY;
    private float mTouchCentreX;
    private float mTouchCentreY;
    private float mTouchDownX;
    private float mTouchDownY;
    private float mTouchX;
    private float mTouchY;
    private float mTransAnimOldY;
    private float mTransAnimY;
    private ValueAnimator mTranslateAnimator;
    private float pendingX;
    private float pendingY;
    private boolean mSupportScaleItem = true;
    private float pendingScale = 1.0f;
    private CopyLocation mCopyLocation = DoodlePen.COPY.getCopyLocation();

    public interface ISelectionListener {
        void onCreateSelectableItem(IDoodle iDoodle, float f, float f2);

        void onOperationItem();

        void onSelectedItem(IDoodle iDoodle, IDoodleSelectableItem iDoodleSelectableItem, boolean z);
    }

    public DoodleOnTouchGestureListener(DoodleView doodleView, ISelectionListener iSelectionListener) {
        this.mDoodle = doodleView;
        this.mCopyLocation.reset();
        this.mCopyLocation.updateLocation(doodleView.getBitmap().getWidth() / 2, doodleView.getBitmap().getHeight() / 2);
        this.mSelectionListener = iSelectionListener;
    }

    public void setSelectedItem(IDoodleSelectableItem iDoodleSelectableItem) {
        IDoodleSelectableItem iDoodleSelectableItem2 = this.mSelectedItem;
        this.mSelectedItem = iDoodleSelectableItem;
        if (iDoodleSelectableItem2 != null) {
            iDoodleSelectableItem2.setSelected(false);
            ISelectionListener iSelectionListener = this.mSelectionListener;
            if (iSelectionListener != null) {
                iSelectionListener.onSelectedItem(this.mDoodle, iDoodleSelectableItem2, false);
            }
            this.mDoodle.notifyItemFinishedDrawing(iDoodleSelectableItem2);
        }
        IDoodleSelectableItem iDoodleSelectableItem3 = this.mSelectedItem;
        if (iDoodleSelectableItem3 != null) {
            iDoodleSelectableItem3.setSelected(true);
            ISelectionListener iSelectionListener2 = this.mSelectionListener;
            if (iSelectionListener2 != null) {
                iSelectionListener2.onSelectedItem(this.mDoodle, this.mSelectedItem, true);
            }
            this.mDoodle.markItemToOptimizeDrawing(this.mSelectedItem);
        }
    }

    public IDoodleSelectableItem getSelectedItem() {
        return this.mSelectedItem;
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        this.mTouchDownX = x;
        this.mTouchX = x;
        float y = motionEvent.getY();
        this.mTouchDownY = y;
        this.mTouchY = y;
        return true;
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
    public void onScrollBegin(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        this.mTouchX = x;
        this.mLastTouchX = x;
        float y = motionEvent.getY();
        this.mTouchY = y;
        this.mLastTouchY = y;
        this.mDoodle.setScrollingDoodle(true);
        if (this.mDoodle.isEditMode() || isPenEditable(this.mDoodle.getPen())) {
            IDoodleSelectableItem iDoodleSelectableItem = this.mSelectedItem;
            if (iDoodleSelectableItem != null) {
                PointF location = iDoodleSelectableItem.getLocation();
                this.mStartX = location.x;
                this.mStartY = location.y;
                IDoodleSelectableItem iDoodleSelectableItem2 = this.mSelectedItem;
                if ((iDoodleSelectableItem2 instanceof DoodleRotatableItemBase) && ((DoodleRotatableItemBase) iDoodleSelectableItem2).canRotate(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY))) {
                    ((DoodleRotatableItemBase) this.mSelectedItem).setIsRotating(true);
                    IDoodleSelectableItem iDoodleSelectableItem3 = this.mSelectedItem;
                    if ((iDoodleSelectableItem3 instanceof DoodleQRCode) || (iDoodleSelectableItem3 instanceof DoodleBarCode)) {
                        ((DoodleRotatableItemBase) this.mSelectedItem).setIsRotating(false);
                    }
                    this.mRotateDiff = this.mSelectedItem.getItemRotate() - DrawUtil.computeAngle(this.mSelectedItem.getPivotX(), this.mSelectedItem.getPivotY(), this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
                }
            } else if (this.mDoodle.isEditMode()) {
                this.mStartX = this.mDoodle.getDoodleTranslationX();
                this.mStartY = this.mDoodle.getDoodleTranslationY();
            }
        } else if (this.mDoodle.getPen() == DoodlePen.COPY && this.mCopyLocation.contains(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY), this.mDoodle.getSize())) {
            this.mCopyLocation.setRelocating(true);
            this.mCopyLocation.setCopying(false);
        } else {
            if (this.mDoodle.getPen() == DoodlePen.COPY) {
                this.mCopyLocation.setRelocating(false);
                if (!this.mCopyLocation.isCopying()) {
                    this.mCopyLocation.setCopying(true);
                    this.mCopyLocation.setStartPosition(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
                }
            }
            this.mCurrPath = new Path();
            this.mCurrPath.moveTo(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
            if (this.mDoodle.getShape() == DoodleShape.HAND_WRITE) {
                this.mCurrDoodlePath = DoodlePath.toPath(this.mDoodle, this.mCurrPath);
            } else {
                DoodleView doodleView = this.mDoodle;
                this.mCurrDoodlePath = DoodlePath.toShape(doodleView, doodleView.toX(this.mTouchDownX), this.mDoodle.toY(this.mTouchDownY), this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
            }
            if (this.mDoodle.isOptimizeDrawing()) {
                this.mDoodle.markItemToOptimizeDrawing(this.mCurrDoodlePath);
            } else {
                this.mDoodle.addItem(this.mCurrDoodlePath);
            }
        }
        this.mDoodle.refresh();
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, cn.forward.androids.TouchGestureDetector.IOnTouchGestureListener
    public void onScrollEnd(MotionEvent motionEvent) {
        this.mLastTouchX = this.mTouchX;
        this.mLastTouchY = this.mTouchY;
        this.mTouchX = motionEvent.getX();
        this.mTouchY = motionEvent.getY();
        this.mDoodle.setScrollingDoodle(false);
        if (this.mDoodle.isEditMode() || isPenEditable(this.mDoodle.getPen())) {
            IDoodleSelectableItem iDoodleSelectableItem = this.mSelectedItem;
            if (iDoodleSelectableItem instanceof DoodleRotatableItemBase) {
                ((DoodleRotatableItemBase) iDoodleSelectableItem).setIsRotating(false);
            }
            if (this.mDoodle.isEditMode()) {
                limitBound(true);
            }
        }
        if (this.mCurrDoodlePath != null) {
            if (this.mDoodle.isOptimizeDrawing()) {
                this.mDoodle.notifyItemFinishedDrawing(this.mCurrDoodlePath);
            }
            this.mCurrDoodlePath = null;
        }
        IDoodleSelectableItem iDoodleSelectableItem2 = this.mSelectedItem;
        if (iDoodleSelectableItem2 != null && (iDoodleSelectableItem2 instanceof DoodleRotatableItemBase)) {
            this.mDoodle.addItemRecord(iDoodleSelectableItem2, 1);
        }
        this.mDoodle.refresh();
        ISelectionListener iSelectionListener = this.mSelectionListener;
        if (iSelectionListener != null) {
            iSelectionListener.onOperationItem();
        }
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mLastTouchX = this.mTouchX;
        this.mLastTouchY = this.mTouchY;
        this.mTouchX = motionEvent2.getX();
        this.mTouchY = motionEvent2.getY();
        if (this.mDoodle.isEditMode() || isPenEditable(this.mDoodle.getPen())) {
            IDoodleSelectableItem iDoodleSelectableItem = this.mSelectedItem;
            if (iDoodleSelectableItem != null && iDoodleSelectableItem.getPen() != DoodlePen.BG) {
                IDoodleSelectableItem iDoodleSelectableItem2 = this.mSelectedItem;
                if ((iDoodleSelectableItem2 instanceof DoodleRotatableItemBase) && ((DoodleRotatableItemBase) iDoodleSelectableItem2).isRotating()) {
                    IDoodleSelectableItem iDoodleSelectableItem3 = this.mSelectedItem;
                    iDoodleSelectableItem3.setItemRotate(this.mRotateDiff + DrawUtil.computeAngle(iDoodleSelectableItem3.getPivotX(), this.mSelectedItem.getPivotY(), this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY)));
                } else {
                    this.mSelectedItem.setLocation((this.mStartX + this.mDoodle.toX(this.mTouchX)) - this.mDoodle.toX(this.mTouchDownX), (this.mStartY + this.mDoodle.toY(this.mTouchY)) - this.mDoodle.toY(this.mTouchDownY));
                }
            } else if (this.mDoodle.isEditMode()) {
                this.mDoodle.setDoodleTranslation((this.mStartX + this.mTouchX) - this.mTouchDownX, (this.mStartY + this.mTouchY) - this.mTouchDownY);
            }
        } else if (this.mDoodle.getPen() == DoodlePen.COPY && this.mCopyLocation.isRelocating()) {
            this.mCopyLocation.updateLocation(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
        } else {
            if (this.mDoodle.getPen() == DoodlePen.COPY) {
                CopyLocation copyLocation = this.mCopyLocation;
                copyLocation.updateLocation((copyLocation.getCopyStartX() + this.mDoodle.toX(this.mTouchX)) - this.mCopyLocation.getTouchStartX(), (this.mCopyLocation.getCopyStartY() + this.mDoodle.toY(this.mTouchY)) - this.mCopyLocation.getTouchStartY());
            }
            if (this.mDoodle.getShape() == DoodleShape.HAND_WRITE) {
                this.mCurrPath.quadTo(this.mDoodle.toX(this.mLastTouchX), this.mDoodle.toY(this.mLastTouchY), this.mDoodle.toX((this.mTouchX + this.mLastTouchX) / 2.0f), this.mDoodle.toY((this.mTouchY + this.mLastTouchY) / 2.0f));
                this.mCurrDoodlePath.updatePath(this.mCurrPath);
            } else {
                this.mCurrDoodlePath.updateXY(this.mDoodle.toX(this.mTouchDownX), this.mDoodle.toY(this.mTouchDownY), this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
            }
        }
        this.mDoodle.refresh();
        return true;
    }

    private boolean isPenEditable(IDoodlePen iDoodlePen) {
        return (this.mDoodle.getPen() == DoodlePen.TEXT && iDoodlePen == DoodlePen.TEXT) || (this.mDoodle.getPen() == DoodlePen.BITMAP && iDoodlePen == DoodlePen.BITMAP) || (this.mDoodle.getPen() == DoodlePen.BRUSH && iDoodlePen == DoodlePen.BRUSH);
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        boolean z;
        IDoodleSelectableItem iDoodleSelectableItem;
        this.mLastTouchX = this.mTouchX;
        this.mLastTouchY = this.mTouchY;
        this.mTouchX = motionEvent.getX();
        this.mTouchY = motionEvent.getY();
        if (this.mDoodle.isEditMode()) {
            List<IDoodleItem> allItem = this.mDoodle.getAllItem();
            int size = allItem.size() - 1;
            while (true) {
                if (size < 0) {
                    z = false;
                    break;
                }
                IDoodleItem iDoodleItem = allItem.get(size);
                if (iDoodleItem.isDoodleEditable() && (iDoodleItem instanceof IDoodleSelectableItem)) {
                    IDoodleSelectableItem iDoodleSelectableItem2 = (IDoodleSelectableItem) iDoodleItem;
                    if (iDoodleSelectableItem2.contains(this.mDoodle.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY))) {
                        setSelectedItem(iDoodleSelectableItem2);
                        PointF location = iDoodleSelectableItem2.getLocation();
                        this.mStartX = location.x;
                        this.mStartY = location.y;
                        z = true;
                        break;
                    }
                }
                size--;
            }
            if (!z && (iDoodleSelectableItem = this.mSelectedItem) != null) {
                setSelectedItem(null);
                ISelectionListener iSelectionListener = this.mSelectionListener;
                if (iSelectionListener != null) {
                    iSelectionListener.onSelectedItem(this.mDoodle, iDoodleSelectableItem, false);
                }
            }
        } else if (isPenEditable(this.mDoodle.getPen())) {
            ISelectionListener iSelectionListener2 = this.mSelectionListener;
            if (iSelectionListener2 != null) {
                DoodleView doodleView = this.mDoodle;
                iSelectionListener2.onCreateSelectableItem(doodleView, doodleView.toX(this.mTouchX), this.mDoodle.toY(this.mTouchY));
            }
        } else {
            onScrollBegin(motionEvent);
            motionEvent.offsetLocation(1.0f, 1.0f);
            onScroll(motionEvent, motionEvent, 1.0f, 1.0f);
            onScrollEnd(motionEvent);
        }
        this.mDoodle.refresh();
        return true;
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
        this.mLastFocusX = null;
        this.mLastFocusY = null;
        return true;
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
        this.mTouchCentreX = scaleGestureDetectorApi27.getFocusX();
        this.mTouchCentreY = scaleGestureDetectorApi27.getFocusY();
        Float f = this.mLastFocusX;
        if (f != null && this.mLastFocusY != null) {
            float fFloatValue = this.mTouchCentreX - f.floatValue();
            float fFloatValue2 = this.mTouchCentreY - this.mLastFocusY.floatValue();
            if (Math.abs(fFloatValue) > 1.0f || Math.abs(fFloatValue2) > 1.0f) {
                IDoodleSelectableItem iDoodleSelectableItem = this.mSelectedItem;
                if (iDoodleSelectableItem == null || !this.mSupportScaleItem || iDoodleSelectableItem.getPen() == DoodlePen.BG) {
                    DoodleView doodleView = this.mDoodle;
                    doodleView.setDoodleTranslationX(doodleView.getDoodleTranslationX() + fFloatValue + this.pendingX);
                    DoodleView doodleView2 = this.mDoodle;
                    doodleView2.setDoodleTranslationY(doodleView2.getDoodleTranslationY() + fFloatValue2 + this.pendingY);
                }
                this.pendingY = 0.0f;
                this.pendingX = 0.0f;
            } else {
                this.pendingX += fFloatValue;
                this.pendingY += fFloatValue2;
            }
        }
        if (Math.abs(1.0f - scaleGestureDetectorApi27.getScaleFactor()) > 0.005f) {
            IDoodleSelectableItem iDoodleSelectableItem2 = this.mSelectedItem;
            if (iDoodleSelectableItem2 == null || !this.mSupportScaleItem || iDoodleSelectableItem2.getPen() == DoodlePen.BG) {
                float doodleScale = this.mDoodle.getDoodleScale() * scaleGestureDetectorApi27.getScaleFactor() * this.pendingScale;
                DoodleView doodleView3 = this.mDoodle;
                doodleView3.setDoodleScale(doodleScale, doodleView3.toX(this.mTouchCentreX), this.mDoodle.toY(this.mTouchCentreY));
            } else {
                IDoodleSelectableItem iDoodleSelectableItem3 = this.mSelectedItem;
                iDoodleSelectableItem3.setScale(iDoodleSelectableItem3.getScale() * scaleGestureDetectorApi27.getScaleFactor() * this.pendingScale);
            }
            this.pendingScale = 1.0f;
        } else {
            this.pendingScale *= scaleGestureDetectorApi27.getScaleFactor();
        }
        this.mLastFocusX = Float.valueOf(this.mTouchCentreX);
        this.mLastFocusY = Float.valueOf(this.mTouchCentreY);
        return true;
    }

    @Override // cn.forward.androids.TouchGestureDetector.OnTouchGestureListener, cn.forward.androids.ScaleGestureDetectorApi27.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetectorApi27 scaleGestureDetectorApi27) {
        IDoodleSelectableItem iDoodleSelectableItem = this.mSelectedItem;
        int i = 1;
        if (iDoodleSelectableItem != null && (iDoodleSelectableItem instanceof DoodleText)) {
            float pivotX = iDoodleSelectableItem.getPivotX();
            float pivotY = this.mSelectedItem.getPivotY();
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            String text0 = ((DoodleText) this.mSelectedItem).getText0();
            if (!Tools.isNull(text0)) {
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (i3 < text0.length()) {
                    char cCharAt = text0.charAt(i3);
                    if (cCharAt == '\n') {
                        sb2.append("\n");
                        sb.setLength(i2);
                        i4 = 0;
                    } else {
                        sb.append(cCharAt);
                        i4 += i;
                        new DoodleText(this.mDoodle, sb.toString(), this.mSelectedItem.getSize(), new DoodleColor(ViewCompat.MEASURED_STATE_MASK), this.mSelectedItem.getLocation().x, this.mSelectedItem.getLocation().y).setScale(this.mSelectedItem.getScale());
                        if (r11.getBounds().width() >= 1024.0f && i4 != 1) {
                            sb2.append("\n");
                            sb2.append(cCharAt);
                            sb.setLength(0);
                            sb.append(cCharAt);
                            i4 = 1;
                        } else {
                            sb2.append(cCharAt);
                        }
                    }
                    i3++;
                    i = 1;
                    i2 = 0;
                }
                ((DoodleText) this.mSelectedItem).setText1(sb2.toString());
                this.mSelectedItem.setLocation(this.mSelectedItem.getLocation().x + (pivotX - this.mSelectedItem.getPivotX()), this.mSelectedItem.getLocation().y + (pivotY - this.mSelectedItem.getPivotY()));
            }
        }
        if (this.mDoodle.isEditMode()) {
            limitBound(true);
            this.mDoodle.addItemRecord(this.mSelectedItem, 1);
            ISelectionListener iSelectionListener = this.mSelectionListener;
            if (iSelectionListener != null) {
                iSelectionListener.onOperationItem();
                return;
            }
            return;
        }
        center();
    }

    public void center() {
        if (this.mDoodle.getDoodleScale() < 1.0f) {
            if (this.mScaleAnimator == null) {
                this.mScaleAnimator = new ValueAnimator();
                this.mScaleAnimator.setDuration(100L);
                this.mScaleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.highlight.lib_doodle.DoodleOnTouchGestureListener.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        DoodleOnTouchGestureListener.this.mDoodle.setDoodleScale(fFloatValue, DoodleOnTouchGestureListener.this.mDoodle.toX(DoodleOnTouchGestureListener.this.mTouchCentreX), DoodleOnTouchGestureListener.this.mDoodle.toY(DoodleOnTouchGestureListener.this.mTouchCentreY));
                        float f = 1.0f - animatedFraction;
                        DoodleOnTouchGestureListener.this.mDoodle.setDoodleTranslation(DoodleOnTouchGestureListener.this.mScaleAnimTransX * f, DoodleOnTouchGestureListener.this.mScaleAnimTranY * f);
                    }
                });
            }
            this.mScaleAnimator.cancel();
            this.mScaleAnimTransX = this.mDoodle.getDoodleTranslationX();
            this.mScaleAnimTranY = this.mDoodle.getDoodleTranslationY();
            this.mScaleAnimator.setFloatValues(this.mDoodle.getDoodleScale(), 1.0f);
            this.mScaleAnimator.start();
            return;
        }
        limitBound(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b5 A[PHI: r8
      0x00b5: PHI (r8v16 float) = (r8v12 float), (r8v4 float) binds: [B:41:0x00f9, B:24:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7 A[PHI: r8
      0x00b7: PHI (r8v15 float) = (r8v12 float), (r8v4 float) binds: [B:41:0x00f9, B:24:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1 A[PHI: r8
      0x00c1: PHI (r8v14 float) = (r8v12 float), (r8v4 float) binds: [B:44:0x0102, B:28:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c3 A[PHI: r8
      0x00c3: PHI (r8v13 float) = (r8v12 float), (r8v4 float) binds: [B:44:0x0102, B:28:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016d A[PHI: r6
      0x016d: PHI (r6v16 float) = (r6v12 float), (r6v4 float) binds: [B:82:0x01b1, B:65:0x016b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x016f A[PHI: r6
      0x016f: PHI (r6v15 float) = (r6v12 float), (r6v4 float) binds: [B:82:0x01b1, B:65:0x016b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0179 A[PHI: r6
      0x0179: PHI (r6v14 float) = (r6v12 float), (r6v4 float) binds: [B:85:0x01ba, B:69:0x0177] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017b A[PHI: r6
      0x017b: PHI (r6v13 float) = (r6v12 float), (r6v4 float) binds: [B:85:0x01ba, B:69:0x0177] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void limitBound(boolean r15) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.lib_doodle.DoodleOnTouchGestureListener.limitBound(boolean):void");
    }

    public void setSelectionListener(ISelectionListener iSelectionListener) {
        this.mSelectionListener = iSelectionListener;
    }

    public ISelectionListener getSelectionListener() {
        return this.mSelectionListener;
    }

    public void setSupportScaleItem(boolean z) {
        this.mSupportScaleItem = z;
    }

    public boolean isSupportScaleItem() {
        return this.mSupportScaleItem;
    }
}
