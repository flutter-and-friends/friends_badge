package jxl.biff.drawing;

import android.R;
import android.device.scanner.configuration.PropertyID;
import androidx.core.app.FrameMetricsAggregator;
import common.Assert;
import common.Logger;
import java.io.IOException;
import jxl.WorkbookSettings;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class ComboBox implements DrawingGroupObject {
    static /* synthetic */ Class class$jxl$biff$drawing$ComboBox;
    private static Logger logger;
    private int blipId;
    private int column;
    private DrawingData drawingData;
    private DrawingGroup drawingGroup;
    private int drawingNumber;
    private EscherContainer escherData;
    private double height;
    private boolean initialized;
    private MsoDrawingRecord msoDrawingRecord;
    private ObjRecord objRecord;
    private int objectId;
    private Origin origin;
    private EscherContainer readSpContainer;
    private int referenceCount;
    private int row;
    private int shapeId;
    private EscherContainer spContainer;
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
        return false;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeTailRecords(File file) {
    }

    static {
        Class clsClass$ = class$jxl$biff$drawing$ComboBox;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.ComboBox");
            class$jxl$biff$drawing$ComboBox = clsClass$;
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

    public ComboBox(MsoDrawingRecord msoDrawingRecord, ObjRecord objRecord, DrawingData drawingData, DrawingGroup drawingGroup, WorkbookSettings workbookSettings) {
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
        Assert.verify((msoDrawingRecord == null || objRecord == null) ? false : true);
        initialize();
    }

    public ComboBox(DrawingGroupObject drawingGroupObject, DrawingGroup drawingGroup, WorkbookSettings workbookSettings) {
        this.initialized = false;
        ComboBox comboBox = (ComboBox) drawingGroupObject;
        Assert.verify(comboBox.origin == Origin.READ);
        this.msoDrawingRecord = comboBox.msoDrawingRecord;
        this.objRecord = comboBox.objRecord;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData = comboBox.drawingData;
        this.drawingGroup = drawingGroup;
        this.drawingNumber = comboBox.drawingNumber;
        this.drawingGroup.addDrawing(this);
        this.workbookSettings = workbookSettings;
    }

    public ComboBox() {
        this.initialized = false;
        this.initialized = true;
        this.origin = Origin.WRITE;
        this.referenceCount = 1;
        this.type = ShapeType.HOST_CONTROL;
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
            this.column = (int) clientAnchor.getX1();
            this.row = (int) clientAnchor.getY1();
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
        SpContainer spContainer = new SpContainer();
        spContainer.add(new C1500Sp(this.type, this.shapeId, PropertyID.PDF417_ENABLE));
        Opt opt = new Opt();
        opt.addProperty(127, false, false, R.string.accessibility_system_action_dpad_left_label);
        opt.addProperty(191, false, false, 524296);
        opt.addProperty(FrameMetricsAggregator.EVERY_DURATION, false, false, 524288);
        opt.addProperty(959, false, false, 131072);
        spContainer.add(opt);
        spContainer.add(new ClientAnchor(this.column, this.row, r2 + 1, r3 + 1, 1));
        spContainer.add(new ClientData());
        return spContainer;
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

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeAdditionalRecords(File file) throws IOException {
        if (this.origin == Origin.READ) {
            file.write(this.objRecord);
        } else {
            file.write(new ObjRecord(this.objectId, ObjRecord.COMBOBOX));
        }
    }

    public int hashCode() {
        return getClass().getName().hashCode();
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFirst() {
        return this.msoDrawingRecord.isFirst();
    }
}
