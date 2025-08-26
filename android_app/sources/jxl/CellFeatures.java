package jxl;

import jxl.biff.BaseCellFeatures;

/* loaded from: classes2.dex */
public class CellFeatures extends BaseCellFeatures {
    public CellFeatures() {
    }

    protected CellFeatures(CellFeatures cellFeatures) {
        super(cellFeatures);
    }

    @Override // jxl.biff.BaseCellFeatures
    public String getComment() {
        return super.getComment();
    }

    @Override // jxl.biff.BaseCellFeatures
    public String getDataValidationList() {
        return super.getDataValidationList();
    }
}
