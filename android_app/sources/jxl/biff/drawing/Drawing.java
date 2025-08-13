package jxl.biff.drawing;

import android.device.scanner.configuration.PropertyID;
import common.Assert;
import common.LengthConverter;
import common.LengthUnit;
import common.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import jxl.Image;
import jxl.Sheet;

/* loaded from: classes2.dex */
public class Drawing implements DrawingGroupObject, Image {
    private static final double DEFAULT_FONT_SIZE = 10.0d;
    public static ImageAnchorProperties MOVE_AND_SIZE_WITH_CELLS;
    public static ImageAnchorProperties MOVE_WITH_CELLS;
    public static ImageAnchorProperties NO_MOVE_OR_SIZE_WITH_CELLS;
    static /* synthetic */ Class class$jxl$biff$drawing$Drawing;
    private static Logger logger;
    private int blipId;
    private DrawingData drawingData;
    private DrawingGroup drawingGroup;
    private int drawingNumber;
    private EscherContainer escherData;
    private double height;
    private ImageAnchorProperties imageAnchorProperties;
    private byte[] imageData;
    private File imageFile;
    private boolean initialized;
    private MsoDrawingRecord msoDrawingRecord;
    private ObjRecord objRecord;
    private int objectId;
    private Origin origin;
    private PNGReader pngReader;
    private EscherContainer readSpContainer;
    private int referenceCount;
    private int shapeId;
    private Sheet sheet;
    private ShapeType type;
    private double width;

    /* renamed from: x */
    private double f1131x;

    /* renamed from: y */
    private double f1132y;

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFormObject() {
        return false;
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
        MOVE_AND_SIZE_WITH_CELLS = new ImageAnchorProperties(1);
        MOVE_WITH_CELLS = new ImageAnchorProperties(2);
        NO_MOVE_OR_SIZE_WITH_CELLS = new ImageAnchorProperties(3);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    protected static class ImageAnchorProperties {

        /* renamed from: o */
        private static ImageAnchorProperties[] f1133o = new ImageAnchorProperties[0];
        private int value;

        ImageAnchorProperties(int i) {
            this.value = i;
            ImageAnchorProperties[] imageAnchorPropertiesArr = f1133o;
            f1133o = new ImageAnchorProperties[imageAnchorPropertiesArr.length + 1];
            System.arraycopy(imageAnchorPropertiesArr, 0, f1133o, 0, imageAnchorPropertiesArr.length);
            f1133o[imageAnchorPropertiesArr.length] = this;
        }

        int getValue() {
            return this.value;
        }

        static ImageAnchorProperties getImageAnchorProperties(int i) {
            ImageAnchorProperties imageAnchorProperties = Drawing.MOVE_AND_SIZE_WITH_CELLS;
            int i2 = 0;
            while (true) {
                ImageAnchorProperties[] imageAnchorPropertiesArr = f1133o;
                if (i2 >= imageAnchorPropertiesArr.length) {
                    return imageAnchorProperties;
                }
                if (imageAnchorPropertiesArr[i2].getValue() == i) {
                    return f1133o[i2];
                }
                i2++;
            }
        }
    }

    public Drawing(MsoDrawingRecord msoDrawingRecord, ObjRecord objRecord, DrawingData drawingData, DrawingGroup drawingGroup, Sheet sheet) {
        this.initialized = false;
        this.drawingGroup = drawingGroup;
        this.msoDrawingRecord = msoDrawingRecord;
        this.drawingData = drawingData;
        this.objRecord = objRecord;
        this.sheet = sheet;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData.addData(this.msoDrawingRecord.getData());
        this.drawingNumber = this.drawingData.getNumDrawings() - 1;
        this.drawingGroup.addDrawing(this);
        Assert.verify((msoDrawingRecord == null || objRecord == null) ? false : true);
        initialize();
    }

    protected Drawing(DrawingGroupObject drawingGroupObject, DrawingGroup drawingGroup) {
        this.initialized = false;
        Drawing drawing = (Drawing) drawingGroupObject;
        Assert.verify(drawing.origin == Origin.READ);
        this.msoDrawingRecord = drawing.msoDrawingRecord;
        this.objRecord = drawing.objRecord;
        this.initialized = false;
        this.origin = Origin.READ;
        this.drawingData = drawing.drawingData;
        this.drawingGroup = drawingGroup;
        this.drawingNumber = drawing.drawingNumber;
        this.drawingGroup.addDrawing(this);
    }

    public Drawing(double d, double d2, double d3, double d4, File file) {
        this.initialized = false;
        this.imageFile = file;
        this.initialized = true;
        this.origin = Origin.WRITE;
        this.f1131x = d;
        this.f1132y = d2;
        this.width = d3;
        this.height = d4;
        this.referenceCount = 1;
        this.imageAnchorProperties = MOVE_WITH_CELLS;
        this.type = ShapeType.PICTURE_FRAME;
    }

    public Drawing(double d, double d2, double d3, double d4, byte[] bArr) {
        this.initialized = false;
        this.imageData = bArr;
        this.initialized = true;
        this.origin = Origin.WRITE;
        this.f1131x = d;
        this.f1132y = d2;
        this.width = d3;
        this.height = d4;
        this.referenceCount = 1;
        this.imageAnchorProperties = MOVE_WITH_CELLS;
        this.type = ShapeType.PICTURE_FRAME;
    }

    private void initialize() {
        this.readSpContainer = this.drawingData.getSpContainer(this.drawingNumber);
        Assert.verify(this.readSpContainer != null);
        EscherRecord[] children = this.readSpContainer.getChildren();
        C1500Sp c1500Sp = (C1500Sp) this.readSpContainer.getChildren()[0];
        this.shapeId = c1500Sp.getShapeId();
        this.objectId = this.objRecord.getObjectId();
        this.type = ShapeType.getType(c1500Sp.getShapeType());
        if (this.type == ShapeType.UNKNOWN) {
            logger.warn("Unknown shape type");
        }
        Opt opt = (Opt) this.readSpContainer.getChildren()[1];
        if (opt.getProperty(PropertyID.LABEL_MATCHER_TARGETREGEX) != null) {
            this.blipId = opt.getProperty(PropertyID.LABEL_MATCHER_TARGETREGEX).value;
        }
        if (opt.getProperty(PropertyID.CODE39_FULL_ASCII) != null) {
            this.imageFile = new File(opt.getProperty(PropertyID.CODE39_FULL_ASCII).stringValue);
        } else if (this.type == ShapeType.PICTURE_FRAME) {
            logger.warn("no filename property for drawing");
            this.imageFile = new File(Integer.toString(this.blipId));
        }
        ClientAnchor clientAnchor = null;
        for (int i = 0; i < children.length && clientAnchor == null; i++) {
            if (children[i].getType() == EscherRecordType.CLIENT_ANCHOR) {
                clientAnchor = (ClientAnchor) children[i];
            }
        }
        if (clientAnchor == null) {
            logger.warn("client anchor not found");
        } else {
            this.f1131x = clientAnchor.getX1();
            this.f1132y = clientAnchor.getY1();
            this.width = clientAnchor.getX2() - this.f1131x;
            this.height = clientAnchor.getY2() - this.f1132y;
            this.imageAnchorProperties = ImageAnchorProperties.getImageAnchorProperties(clientAnchor.getProperties());
        }
        if (this.blipId == 0) {
            logger.warn("linked drawings are not supported");
        }
        this.initialized = true;
    }

    @Override // jxl.Image
    public File getImageFile() {
        return this.imageFile;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public String getImageFilePath() {
        File file = this.imageFile;
        if (file == null) {
            int i = this.blipId;
            return i != 0 ? Integer.toString(i) : "__new__image__";
        }
        return file.getPath();
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
        if (this.origin == Origin.READ) {
            return getReadSpContainer();
        }
        SpContainer spContainer = new SpContainer();
        spContainer.add(new C1500Sp(this.type, this.shapeId, PropertyID.PDF417_ENABLE));
        Opt opt = new Opt();
        opt.addProperty(PropertyID.LABEL_MATCHER_TARGETREGEX, true, false, this.blipId);
        if (this.type == ShapeType.PICTURE_FRAME) {
            File file = this.imageFile;
            String path = file != null ? file.getPath() : "";
            opt.addProperty(PropertyID.CODE39_FULL_ASCII, true, true, path.length() * 2, path);
            opt.addProperty(447, false, false, 65536);
            opt.addProperty(959, false, false, 524288);
            spContainer.add(opt);
        }
        double d = this.f1131x;
        double d2 = this.f1132y;
        spContainer.add(new ClientAnchor(d, d2, d + this.width, d2 + this.height, this.imageAnchorProperties.getValue()));
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
        return this.f1131x;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setX(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.f1131x = d;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public double getY() {
        if (!this.initialized) {
            initialize();
        }
        return this.f1132y;
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void setY(double d) {
        if (this.origin == Origin.READ) {
            if (!this.initialized) {
                initialize();
            }
            this.origin = Origin.READ_WRITE;
        }
        this.f1132y = d;
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
    public byte[] getImageBytes() throws IOException {
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

    @Override // jxl.biff.drawing.DrawingGroupObject
    public void writeAdditionalRecords(jxl.write.biff.File file) throws IOException {
        if (this.origin == Origin.READ) {
            file.write(this.objRecord);
        } else {
            file.write(new ObjRecord(this.objectId, ObjRecord.PICTURE));
        }
    }

    @Override // jxl.Image
    public double getColumn() {
        return getX();
    }

    @Override // jxl.Image
    public double getRow() {
        return getY();
    }

    @Override // jxl.biff.drawing.DrawingGroupObject
    public boolean isFirst() {
        return this.msoDrawingRecord.isFirst();
    }

    public void removeRow(int i) {
        double d = i;
        if (this.f1132y > d) {
            setY(d);
        }
    }

    private double getWidthInPoints() {
        double size;
        if (this.sheet == null) {
            logger.warn("calculating image width:  sheet is null");
            return 0.0d;
        }
        double d = this.f1131x;
        int i = (int) d;
        int iCeil = ((int) Math.ceil(d + this.width)) - 1;
        double size2 = ((((1.0d - (this.f1131x - i)) * r5.getSize()) * 0.59d) * (this.sheet.getColumnView(i).getFormat() != null ? r5.getFormat().getFont().getPointSize() : DEFAULT_FONT_SIZE)) / 256.0d;
        if (iCeil != i) {
            size = (((((this.f1131x + this.width) - iCeil) * r13.getSize()) * 0.59d) * (this.sheet.getColumnView(iCeil).getFormat() != null ? r13.getFormat().getFont().getPointSize() : DEFAULT_FONT_SIZE)) / 256.0d;
        } else {
            size = 0.0d;
        }
        double size3 = 0.0d;
        for (int i2 = 0; i2 < (iCeil - i) - 1; i2++) {
            size3 += ((r10.getSize() * 0.59d) * (this.sheet.getColumnView((i + 1) + i2).getFormat() != null ? r10.getFormat().getFont().getPointSize() : DEFAULT_FONT_SIZE)) / 256.0d;
        }
        return size3 + size2 + size;
    }

    private double getHeightInPoints() {
        int size;
        double size2 = 0.0d;
        if (this.sheet == null) {
            logger.warn("calculating image height:  sheet is null");
            return 0.0d;
        }
        double d = this.f1132y;
        int i = (int) d;
        int iCeil = ((int) Math.ceil(d + this.height)) - 1;
        int size3 = this.sheet.getRowView(i).getSize();
        double d2 = this.f1132y;
        double d3 = size3;
        if (iCeil != i) {
            size = this.sheet.getRowView(iCeil).getSize();
            double d4 = this.f1132y;
            double d5 = this.height;
        } else {
            size = 0;
        }
        for (int i2 = 0; i2 < (iCeil - i) - 1; i2++) {
            size2 += this.sheet.getRowView(i + 1 + i2).getSize();
        }
        return ((size2 + d3) + size) / 20.0d;
    }

    @Override // jxl.Image
    public double getWidth(LengthUnit lengthUnit) {
        return getWidthInPoints() * LengthConverter.getConversionFactor(LengthUnit.POINTS, lengthUnit);
    }

    @Override // jxl.Image
    public double getHeight(LengthUnit lengthUnit) {
        return getHeightInPoints() * LengthConverter.getConversionFactor(LengthUnit.POINTS, lengthUnit);
    }

    @Override // jxl.Image
    public int getImageWidth() {
        return getPngReader().getWidth();
    }

    @Override // jxl.Image
    public int getImageHeight() {
        return getPngReader().getHeight();
    }

    @Override // jxl.Image
    public double getHorizontalResolution(LengthUnit lengthUnit) {
        return getPngReader().getHorizontalResolution() / LengthConverter.getConversionFactor(LengthUnit.METRES, lengthUnit);
    }

    @Override // jxl.Image
    public double getVerticalResolution(LengthUnit lengthUnit) {
        return getPngReader().getVerticalResolution() / LengthConverter.getConversionFactor(LengthUnit.METRES, lengthUnit);
    }

    private PNGReader getPngReader() {
        byte[] imageData;
        PNGReader pNGReader = this.pngReader;
        if (pNGReader != null) {
            return pNGReader;
        }
        if (this.origin == Origin.READ || this.origin == Origin.READ_WRITE) {
            imageData = getImageData();
        } else {
            try {
                imageData = getImageBytes();
            } catch (IOException unused) {
                logger.warn("Could not read image file");
                imageData = new byte[0];
            }
        }
        this.pngReader = new PNGReader(imageData);
        this.pngReader.read();
        return this.pngReader;
    }

    protected void setImageAnchor(ImageAnchorProperties imageAnchorProperties) {
        this.imageAnchorProperties = imageAnchorProperties;
        if (this.origin == Origin.READ) {
            this.origin = Origin.READ_WRITE;
        }
    }

    protected ImageAnchorProperties getImageAnchor() {
        if (!this.initialized) {
            initialize();
        }
        return this.imageAnchorProperties;
    }
}
