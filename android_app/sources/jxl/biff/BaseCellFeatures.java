package jxl.biff;

import common.Assert;
import common.Logger;
import java.util.Collection;
import jxl.biff.DVParser;
import jxl.biff.drawing.ComboBox;
import jxl.biff.drawing.Comment;
import jxl.write.biff.CellValue;

/* loaded from: classes2.dex */
public class BaseCellFeatures {
    public static final ValidationCondition BETWEEN;
    public static final ValidationCondition EQUAL;
    public static final ValidationCondition GREATER_EQUAL;
    public static final ValidationCondition GREATER_THAN;
    public static final ValidationCondition LESS_EQUAL;
    public static final ValidationCondition LESS_THAN;
    public static final ValidationCondition NOT_BETWEEN;
    public static final ValidationCondition NOT_EQUAL;
    static /* synthetic */ Class class$jxl$biff$BaseCellFeatures = null;
    private static final double defaultCommentHeight = 4.0d;
    private static final double defaultCommentWidth = 3.0d;
    public static Logger logger;
    private ComboBox comboBox;
    private String comment;
    private Comment commentDrawing;
    private double commentHeight;
    private double commentWidth;
    private boolean dataValidation;
    private boolean dropDown;
    private DVParser dvParser;
    private DataValiditySettingsRecord validationSettings;
    private CellValue writableCell;

    static {
        Class clsClass$ = class$jxl$biff$BaseCellFeatures;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.BaseCellFeatures");
            class$jxl$biff$BaseCellFeatures = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        BETWEEN = new ValidationCondition(DVParser.BETWEEN);
        NOT_BETWEEN = new ValidationCondition(DVParser.NOT_BETWEEN);
        EQUAL = new ValidationCondition(DVParser.EQUAL);
        NOT_EQUAL = new ValidationCondition(DVParser.NOT_EQUAL);
        GREATER_THAN = new ValidationCondition(DVParser.GREATER_THAN);
        LESS_THAN = new ValidationCondition(DVParser.LESS_THAN);
        GREATER_EQUAL = new ValidationCondition(DVParser.GREATER_EQUAL);
        LESS_EQUAL = new ValidationCondition(DVParser.LESS_EQUAL);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class ValidationCondition {
        private static ValidationCondition[] types = new ValidationCondition[0];
        private DVParser.Condition condition;

        ValidationCondition(DVParser.Condition condition) {
            this.condition = condition;
            ValidationCondition[] validationConditionArr = types;
            types = new ValidationCondition[validationConditionArr.length + 1];
            System.arraycopy(validationConditionArr, 0, types, 0, validationConditionArr.length);
            types[validationConditionArr.length] = this;
        }

        public DVParser.Condition getCondition() {
            return this.condition;
        }
    }

    protected BaseCellFeatures() {
    }

    public BaseCellFeatures(BaseCellFeatures baseCellFeatures) {
        this.comment = baseCellFeatures.comment;
        this.commentWidth = baseCellFeatures.commentWidth;
        this.commentHeight = baseCellFeatures.commentHeight;
        this.dropDown = baseCellFeatures.dropDown;
        this.dataValidation = baseCellFeatures.dataValidation;
        this.validationSettings = baseCellFeatures.validationSettings;
    }

    protected String getComment() {
        return this.comment;
    }

    public double getCommentWidth() {
        return this.commentWidth;
    }

    public double getCommentHeight() {
        return this.commentHeight;
    }

    public final void setWritableCell(CellValue cellValue) {
        this.writableCell = cellValue;
    }

    public void setReadComment(String str, double d, double d2) {
        this.comment = str;
        this.commentWidth = d;
        this.commentHeight = d2;
    }

    public void setValidationSettings(DataValiditySettingsRecord dataValiditySettingsRecord) {
        Assert.verify(dataValiditySettingsRecord != null);
        this.validationSettings = dataValiditySettingsRecord;
        this.dataValidation = true;
    }

    public void setComment(String str) {
        setComment(str, defaultCommentWidth, defaultCommentHeight);
    }

    public void setComment(String str, double d, double d2) {
        this.comment = str;
        this.commentWidth = d;
        this.commentHeight = d2;
        Comment comment = this.commentDrawing;
        if (comment != null) {
            comment.setCommentText(str);
            this.commentDrawing.setWidth(d);
            this.commentDrawing.setWidth(d2);
        }
    }

    public void removeComment() {
        this.comment = null;
        Comment comment = this.commentDrawing;
        if (comment != null) {
            this.writableCell.removeComment(comment);
            this.commentDrawing = null;
        }
    }

    public final void setCommentDrawing(Comment comment) {
        this.commentDrawing = comment;
    }

    public final Comment getCommentDrawing() {
        return this.commentDrawing;
    }

    public String getDataValidationList() {
        DataValiditySettingsRecord dataValiditySettingsRecord = this.validationSettings;
        if (dataValiditySettingsRecord == null) {
            return null;
        }
        return dataValiditySettingsRecord.getValidationFormula();
    }

    public void setDataValidationList(Collection collection) {
        clearValidationSettings();
        this.dvParser = new DVParser(collection);
        this.dropDown = true;
        this.dataValidation = true;
    }

    public void setDataValidationRange(int i, int i2, int i3, int i4) {
        clearValidationSettings();
        this.dvParser = new DVParser(i, i2, i3, i4);
        this.dropDown = true;
        this.dataValidation = true;
    }

    public void setDataValidationRange(String str) {
        clearValidationSettings();
        this.dvParser = new DVParser(str);
        this.dropDown = true;
        this.dataValidation = true;
    }

    public void setNumberValidation(double d, ValidationCondition validationCondition) {
        clearValidationSettings();
        this.dvParser = new DVParser(d, Double.NaN, validationCondition.getCondition());
        this.dropDown = false;
        this.dataValidation = true;
    }

    public void setNumberValidation(double d, double d2, ValidationCondition validationCondition) {
        clearValidationSettings();
        this.dvParser = new DVParser(d, d2, validationCondition.getCondition());
        this.dropDown = false;
        this.dataValidation = true;
    }

    public boolean hasDataValidation() {
        return this.dataValidation;
    }

    private void clearValidationSettings() {
        this.validationSettings = null;
        this.dvParser = null;
        this.dropDown = false;
        this.comboBox = null;
        this.dataValidation = false;
    }

    public boolean hasDropDown() {
        return this.dropDown;
    }

    public void setComboBox(ComboBox comboBox) {
        this.comboBox = comboBox;
    }

    public DVParser getDVParser() {
        DVParser dVParser = this.dvParser;
        if (dVParser != null) {
            return dVParser;
        }
        DataValiditySettingsRecord dataValiditySettingsRecord = this.validationSettings;
        if (dataValiditySettingsRecord == null) {
            return null;
        }
        this.dvParser = new DVParser(dataValiditySettingsRecord.getDVParser());
        return this.dvParser;
    }
}
