package jxl.biff.drawing;

import common.Assert;
import common.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class Drawing2 implements DrawingGroupObject {
    static /* synthetic */ Class class$jxl$biff$drawing$Drawing;
    private static Logger logger;
    private int blipId;
    private DrawingData drawingData;
    private DrawingGroup drawingGroup;
    private int drawingNumber;
    private EscherContainer escherData;
    private double height;
    private byte[] imageData;
    private File imageFile;
    private boolean initialized;
    private MsoDrawingRecord msoDrawingRecord;
    private int objectId;
    private Origin origin;
    private EscherContainer readSpContainer;
    private int referenceCount;
    private int shapeId;
    private ShapeType type;
    private double width;

    /* renamed from: x */
    private double f1134x;

    /* renamed from: y */
    private double f1135y;

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFormObject() {
        return false;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeAdditionalRecords(jxl.write.biff.File file) throws IOException {
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeTailRecords(jxl.write.biff.File file) throws IOException {
    }

    static {
        Class clsClass$ = class$jxl$biff$drawing$Drawing;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.Drawing");
            class$jxl$biff$drawing$Drawing = clsClass$;
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

    public Drawing2(MsoDrawingRecord msoDrawingRecord, DrawingData drawingData, DrawingGroup drawingGroup) {
        this.initialized = false;
        this.drawingGroup = drawingGroup;
        this.msoDrawingRecord = msoDrawingRecord;
        this.drawingData = drawingData;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData.addRawData(this.msoDrawingRecord.getData());
        this.drawingGroup.addDrawing(this);
        Assert.verify(msoDrawingRecord != null);
        initialize();
    }

    protected Drawing2(DrawingGroupObject drawingGroupObject, DrawingGroup drawingGroup) {
        this.initialized = false;
        Drawing2 drawing2 = (Drawing2) drawingGroupObject;
        Assert.verify(drawing2.origin == Origin.READ);
        this.msoDrawingRecord = drawing2.msoDrawingRecord;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData = drawing2.drawingData;
        this.drawingGroup = drawingGroup;
        this.drawingNumber = drawing2.drawingNumber;
        this.drawingGroup.addDrawing(this);
    }

    public Drawing2(double d, double d2, double d3, double d4, File file) {
        this.initialized = false;
        this.imageFile = file;
        this.initialized = true;
        this.origin = Origin.WRITE;
        this.f1134x = d;
        this.f1135y = d2;
        this.width = d3;
        this.height = d4;
        this.referenceCount = 1;
        this.type = ShapeType.PICTURE_FRAME;
    }

    public Drawing2(double d, double d2, double d3, double d4, byte[] bArr) {
        this.initialized = false;
        this.imageData = bArr;
        this.initialized = true;
        this.origin = Origin.WRITE;
        this.f1134x = d;
        this.f1135y = d2;
        this.width = d3;
        this.height = d4;
        this.referenceCount = 1;
        this.type = ShapeType.PICTURE_FRAME;
    }

    private void initialize() {
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
    public int getShapeId() {
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
        Assert.verify(this.origin == Origin.READ);
        return getReadSpContainer();
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
        return this.f1134x;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setX(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.f1134x = d;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getY() {
        if (!this.initialized) {
            initialize();
        }
        return this.f1135y;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setY(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.f1135y = d;
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
        Assert.verify(false);
        Assert.verify(this.origin == Origin.READ || this.origin == Origin.READ_WRITE);
        if (!this.initialized) {
            initialize();
        }
        return this.drawingGroup.getImageData(this.blipId);
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public byte[] getImageBytes() throws IOException {
        Assert.verify(false);
        if (this.origin == Origin.READ || this.origin == Origin.READ_WRITE) {
            return getImageData();
        }
        Assert.verify(this.origin == Origin.WRITE);
        File file = this.imageFile;
        if (file == null) {
            Assert.verify(this.imageData != null);
            return this.imageData;
        }
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(this.imageFile);
        fileInputStream.read(bArr, 0, bArr.length);
        fileInputStream.close();
        return bArr;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public ShapeType getType() {
        return this.type;
    }

    public double getColumn() {
        return getX();
    }

    public double getRow() {
        return getY();
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFirst() {
        return this.msoDrawingRecord.isFirst();
    }

    public void removeRow(int i) {
        double d = i;
        if (this.f1135y > d) {
            setY(d);
        }
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public String getImageFilePath() {
        Assert.verify(false);
        return null;
    }
}
