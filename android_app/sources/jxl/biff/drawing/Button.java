package jxl.biff.drawing;

import common.Assert;
import common.Logger;
import java.io.IOException;
import jxl.WorkbookSettings;
import jxl.biff.ContinueRecord;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class Button implements DrawingGroupObject {
    static /* synthetic */ Class class$jxl$biff$drawing$Button;
    private static Logger logger;
    private int blipId;
    private int column;
    private String commentText;
    private DrawingData drawingData;
    private DrawingGroup drawingGroup;
    private int drawingNumber;
    private EscherContainer escherData;
    private ContinueRecord formatting;
    private double height;
    private boolean initialized;
    private MsoDrawingRecord mso;
    private MsoDrawingRecord msoDrawingRecord;
    private ObjRecord objRecord;
    private int objectId;
    private Origin origin;
    private EscherContainer readSpContainer;
    private int referenceCount;
    private int row;
    private int shapeId;
    private EscherContainer spContainer;
    private ContinueRecord text;
    private TextObjectRecord txo;
    private ShapeType type;
    private double width;
    private WorkbookSettings workbookSettings;

    public int getColumn() {
        return 0;
    }

    public int getRow() {
        return 0;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFormObject() {
        return true;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeTailRecords(File file) {
    }

    static {
        Class clsClass$ = class$jxl$biff$drawing$Button;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.Button");
            class$jxl$biff$drawing$Button = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public Button(MsoDrawingRecord msoDrawingRecord, ObjRecord objRecord, DrawingData drawingData, DrawingGroup drawingGroup, WorkbookSettings workbookSettings) {
        this.initialized = false;
        this.drawingGroup = drawingGroup;
        this.msoDrawingRecord = msoDrawingRecord;
        this.drawingData = drawingData;
        this.objRecord = objRecord;
        this.initialized = false;
        this.workbookSettings = workbookSettings;
        this.origin = Origin.READ;
        this.drawingData.addData(this.msoDrawingRecord.getData());
        this.drawingNumber = this.drawingData.getNumDrawings() - 1;
        this.drawingGroup.addDrawing(this);
        Assert.verify((this.msoDrawingRecord == null || this.objRecord == null) ? false : true);
        initialize();
    }

    public Button(DrawingGroupObject drawingGroupObject, DrawingGroup drawingGroup, WorkbookSettings workbookSettings) {
        this.initialized = false;
        Button button = (Button) drawingGroupObject;
        Assert.verify(button.origin == Origin.READ);
        this.msoDrawingRecord = button.msoDrawingRecord;
        this.objRecord = button.objRecord;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData = button.drawingData;
        this.drawingGroup = drawingGroup;
        this.drawingNumber = button.drawingNumber;
        this.drawingGroup.addDrawing(this);
        this.mso = button.mso;
        this.txo = button.txo;
        this.text = button.text;
        this.formatting = button.formatting;
        this.workbookSettings = workbookSettings;
    }

    private void initialize() {
        this.readSpContainer = this.drawingData.getSpContainer(this.drawingNumber);
        Assert.verify(this.readSpContainer != null);
        EscherRecord[] children = this.readSpContainer.getChildren();
        C1500Sp c1500Sp = (C1500Sp) this.readSpContainer.getChildren()[0];
        this.objectId = this.objRecord.getObjectId();
        this.shapeId = c1500Sp.getShapeId();
        this.type = ShapeType.getType(c1500Sp.getShapeType());
        if (this.type == ShapeType.UNKNOWN) {
            logger.warn("Unknown shape type");
        }
        ClientAnchor clientAnchor = null;
        for (int i = 0; i < children.length && clientAnchor == null; i++) {
            if (children[i].getType() == EscherRecordType.CLIENT_ANCHOR) {
                clientAnchor = (ClientAnchor) children[i];
            }
        }
        if (clientAnchor == null) {
            logger.warn("Client anchor not found");
        } else {
            this.column = ((int) clientAnchor.getX1()) - 1;
            this.row = ((int) clientAnchor.getY1()) + 1;
        }
        this.initialized = true;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public final void setObjectId(int i, int i2, int i3) {
        this.objectId = i;
        this.blipId = i2;
        this.shapeId = i3;
        if (this.origin == Origin.READ) {
            this.origin = Origin.READ_WRITE;
        }
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public final int getObjectId() {
        if (!this.initialized) {
            initialize();
        }
        return this.objectId;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public final int getShapeId() {
        if (!this.initialized) {
            initialize();
        }
        return this.shapeId;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public final int getBlipId() {
        if (!this.initialized) {
            initialize();
        }
        return this.blipId;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public MsoDrawingRecord getMsoDrawingRecord() {
        return this.msoDrawingRecord;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public EscherContainer getSpContainer() {
        if (!this.initialized) {
            initialize();
        }
        if (this.origin == Origin.READ) {
            return getReadSpContainer();
        }
        Assert.verify(false);
        return this.spContainer;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setDrawingGroup(DrawingGroup drawingGroup) {
        this.drawingGroup = drawingGroup;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public DrawingGroup getDrawingGroup() {
        return this.drawingGroup;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public Origin getOrigin() {
        return this.origin;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public int getReferenceCount() {
        return this.referenceCount;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setReferenceCount(int i) {
        this.referenceCount = i;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getX() {
        if (!this.initialized) {
            initialize();
        }
        return this.column;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setX(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.column = (int) d;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getY() {
        if (!this.initialized) {
            initialize();
        }
        return this.row;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setY(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.row = (int) d;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getWidth() {
        if (!this.initialized) {
            initialize();
        }
        return this.width;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setWidth(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.width = d;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getHeight() {
        if (!this.initialized) {
            initialize();
        }
        return this.height;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setHeight(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.height = d;
    }

    private EscherContainer getReadSpContainer() {
        if (!this.initialized) {
            initialize();
        }
        return this.readSpContainer;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public byte[] getImageData() {
        Assert.verify(this.origin == Origin.READ || this.origin == Origin.READ_WRITE);
        if (!this.initialized) {
            initialize();
        }
        return this.drawingGroup.getImageData(this.blipId);
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public ShapeType getType() {
        return this.type;
    }

    public void setTextObject(TextObjectRecord textObjectRecord) {
        this.txo = textObjectRecord;
    }

    public void setText(ContinueRecord continueRecord) {
        this.text = continueRecord;
    }

    public void setFormatting(ContinueRecord continueRecord) {
        this.formatting = continueRecord;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public byte[] getImageBytes() {
        Assert.verify(false);
        return null;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public String getImageFilePath() {
        Assert.verify(false);
        return null;
    }

    public void addMso(MsoDrawingRecord msoDrawingRecord) {
        this.mso = msoDrawingRecord;
        this.drawingData.addRawData(this.mso.getData());
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeAdditionalRecords(File file) throws IOException {
        if (this.origin == Origin.READ) {
            file.write(this.objRecord);
            MsoDrawingRecord msoDrawingRecord = this.mso;
            if (msoDrawingRecord != null) {
                file.write(msoDrawingRecord);
            }
            file.write(this.txo);
            file.write(this.text);
            ContinueRecord continueRecord = this.formatting;
            if (continueRecord != null) {
                file.write(continueRecord);
                return;
            }
            return;
        }
        Assert.verify(false);
        file.write(new ObjRecord(this.objectId, ObjRecord.EXCELNOTE));
        file.write(new MsoDrawingRecord(new ClientTextBox().getData()));
        file.write(new TextObjectRecord(getText()));
        byte[] bArr = new byte[(this.commentText.length() * 2) + 1];
        bArr[0] = 1;
        StringHelper.getUnicodeBytes(this.commentText, bArr, 1);
        file.write(new ContinueRecord(bArr));
        byte[] bArr2 = new byte[16];
        IntegerHelper.getTwoBytes(0, bArr2, 0);
        IntegerHelper.getTwoBytes(0, bArr2, 2);
        IntegerHelper.getTwoBytes(this.commentText.length(), bArr2, 8);
        IntegerHelper.getTwoBytes(0, bArr2, 10);
        file.write(new ContinueRecord(bArr2));
    }

    public String getText() {
        if (this.commentText == null) {
            Assert.verify(this.text != null);
            byte[] data = this.text.getData();
            if (data[0] == 0) {
                this.commentText = StringHelper.getString(data, data.length - 1, 1, this.workbookSettings);
            } else {
                this.commentText = StringHelper.getUnicodeString(data, (data.length - 1) / 2, 1);
            }
        }
        return this.commentText;
    }

    public int hashCode() {
        return this.commentText.hashCode();
    }

    public void setButtonText(String str) {
        this.commentText = str;
        if (this.origin == Origin.READ) {
            this.origin = Origin.READ_WRITE;
        }
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFirst() {
        return this.mso.isFirst();
    }
}
