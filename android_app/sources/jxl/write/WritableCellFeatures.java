package jxl.write;

import java.util.Collection;
import jxl.CellFeatures;
import jxl.biff.BaseCellFeatures;

/* loaded from: classes2.dex */
public class WritableCellFeatures extends CellFeatures {
    public static final BaseCellFeatures.ValidationCondition BETWEEN = BaseCellFeatures.BETWEEN;
    public static final BaseCellFeatures.ValidationCondition NOT_BETWEEN = BaseCellFeatures.NOT_BETWEEN;
    public static final BaseCellFeatures.ValidationCondition EQUAL = BaseCellFeatures.EQUAL;
    public static final BaseCellFeatures.ValidationCondition NOT_EQUAL = BaseCellFeatures.NOT_EQUAL;
    public static final BaseCellFeatures.ValidationCondition GREATER_THAN = BaseCellFeatures.GREATER_THAN;
    public static final BaseCellFeatures.ValidationCondition LESS_THAN = BaseCellFeatures.LESS_THAN;
    public static final BaseCellFeatures.ValidationCondition GREATER_EQUAL = BaseCellFeatures.GREATER_EQUAL;
    public static final BaseCellFeatures.ValidationCondition LESS_EQUAL = BaseCellFeatures.LESS_EQUAL;

    public WritableCellFeatures() {
    }

    public WritableCellFeatures(CellFeatures cellFeatures) {
        super(cellFeatures);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setComment(String str) {
        super.setComment(str);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setComment(String str, double d, double d2) {
        super.setComment(str, d, d2);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void removeComment() {
        super.removeComment();
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setDataValidationList(Collection collection) {
        super.setDataValidationList(collection);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setDataValidationRange(int i, int i2, int i3, int i4) {
        super.setDataValidationRange(i, i2, i3, i4);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setDataValidationRange(String str) {
        super.setDataValidationRange(str);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setNumberValidation(double d, BaseCellFeatures.ValidationCondition validationCondition) {
        super.setNumberValidation(d, validationCondition);
    }

    @Override // jxl.biff.BaseCellFeatures
    public void setNumberValidation(double d, double d2, BaseCellFeatures.ValidationCondition validationCondition) {
        super.setNumberValidation(d, d2, validationCondition);
    }
}
