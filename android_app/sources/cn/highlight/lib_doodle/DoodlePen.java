package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public enum DoodlePen implements IDoodlePen {
    BRUSH,
    COPY,
    ERASER,
    MOSAIC,
    BG,
    TEXT,
    BITMAP,
    QRCODE,
    BARCODE,
    SHAPE;

    private CopyLocation mCopyLocation;

    @Override // cn.highlight.lib_doodle.IDoodlePen
    public IDoodlePen copy() {
        return this;
    }

    @Override // cn.highlight.lib_doodle.IDoodlePen
    public void config(IDoodleItem iDoodleItem, Paint paint) {
        if (this == COPY || this == ERASER) {
            IDoodle doodle = iDoodleItem.getDoodle();
            if ((iDoodleItem.getColor() instanceof DoodleColor) && ((DoodleColor) iDoodleItem.getColor()).getBitmap() == doodle.getBitmap()) {
                return;
            }
            iDoodleItem.setColor(new DoodleColor(doodle.getBitmap()));
        }
    }

    public CopyLocation getCopyLocation() {
        if (this != COPY) {
            return null;
        }
        if (this.mCopyLocation == null) {
            synchronized (this) {
                if (this.mCopyLocation == null) {
                    this.mCopyLocation = new CopyLocation();
                }
            }
        }
        return this.mCopyLocation;
    }

    @Override // cn.highlight.lib_doodle.IDoodlePen
    public void drawHelpers(Canvas canvas, IDoodle iDoodle) {
        if (this == COPY && (iDoodle instanceof DoodleView) && !((DoodleView) iDoodle).isEditMode()) {
            this.mCopyLocation.drawItSelf(canvas, iDoodle.getSize());
        }
    }
}
