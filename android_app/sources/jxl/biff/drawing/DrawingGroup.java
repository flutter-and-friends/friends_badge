package jxl.biff.drawing;

import common.Assert;
import common.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import jxl.read.biff.Record;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class DrawingGroup implements EscherStream {
    static /* synthetic */ Class class$jxl$biff$drawing$DrawingGroup;
    private static Logger logger;
    private BStoreContainer bstoreContainer;
    private byte[] drawingData;
    private int drawingGroupId;
    private ArrayList drawings;
    private boolean drawingsOmitted;
    private EscherContainer escherData;
    private HashMap imageFiles;
    private boolean initialized;
    private int maxObjectId;
    private int maxShapeId;
    private int numBlips;
    private int numCharts;
    private Origin origin;

    static {
        Class clsClass$ = class$jxl$biff$drawing$DrawingGroup;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.DrawingGroup");
            class$jxl$biff$drawing$DrawingGroup = clsClass$;
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

    public DrawingGroup(Origin origin) {
        this.origin = origin;
        this.initialized = origin == Origin.WRITE;
        this.drawings = new ArrayList();
        this.imageFiles = new HashMap();
        this.drawingsOmitted = false;
        this.maxObjectId = 1;
        this.maxShapeId = 1024;
    }

    public DrawingGroup(DrawingGroup drawingGroup) {
        this.drawingData = drawingGroup.drawingData;
        this.escherData = drawingGroup.escherData;
        this.bstoreContainer = drawingGroup.bstoreContainer;
        this.initialized = drawingGroup.initialized;
        this.drawingData = drawingGroup.drawingData;
        this.escherData = drawingGroup.escherData;
        this.bstoreContainer = drawingGroup.bstoreContainer;
        this.numBlips = drawingGroup.numBlips;
        this.numCharts = drawingGroup.numCharts;
        this.drawingGroupId = drawingGroup.drawingGroupId;
        this.drawingsOmitted = drawingGroup.drawingsOmitted;
        this.origin = drawingGroup.origin;
        this.imageFiles = (HashMap) drawingGroup.imageFiles.clone();
        this.maxObjectId = drawingGroup.maxObjectId;
        this.maxShapeId = drawingGroup.maxShapeId;
        this.drawings = new ArrayList();
    }

    public void add(MsoDrawingGroupRecord msoDrawingGroupRecord) {
        addData(msoDrawingGroupRecord.getData());
    }

    public void add(Record record) {
        addData(record.getData());
    }

    private void addData(byte[] bArr) {
        byte[] bArr2 = this.drawingData;
        if (bArr2 == null) {
            this.drawingData = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.drawingData, 0, bArr.length);
        } else {
            byte[] bArr3 = new byte[bArr2.length + bArr.length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(bArr, 0, bArr3, this.drawingData.length, bArr.length);
            this.drawingData = bArr3;
        }
    }

    final void addDrawing(DrawingGroupObject drawingGroupObject) {
        this.drawings.add(drawingGroupObject);
        this.maxObjectId = Math.max(this.maxObjectId, drawingGroupObject.getObjectId());
        this.maxShapeId = Math.max(this.maxShapeId, drawingGroupObject.getShapeId());
    }

    public void add(Chart chart) {
        this.numCharts++;
    }

    public void add(DrawingGroupObject drawingGroupObject) {
        if (this.origin == Origin.READ) {
            this.origin = Origin.READ_WRITE;
            BStoreContainer bStoreContainer = getBStoreContainer();
            this.drawingGroupId = (((Dgg) this.escherData.getChildren()[0]).getCluster(1).drawingGroupId - this.numBlips) - 1;
            this.numBlips = bStoreContainer != null ? bStoreContainer.getNumBlips() : 0;
            if (bStoreContainer != null) {
                Assert.verify(this.numBlips == bStoreContainer.getNumBlips());
            }
        }
        if (!(drawingGroupObject instanceof Drawing)) {
            this.maxObjectId++;
            this.maxShapeId++;
            drawingGroupObject.setDrawingGroup(this);
            drawingGroupObject.setObjectId(this.maxObjectId, this.numBlips + 1, this.maxShapeId);
            if (this.drawings.size() > this.maxObjectId) {
                Logger logger2 = logger;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("drawings length ");
                stringBuffer.append(this.drawings.size());
                stringBuffer.append(" exceeds the max object id ");
                stringBuffer.append(this.maxObjectId);
                logger2.warn(stringBuffer.toString());
                return;
            }
            return;
        }
        Drawing drawing = (Drawing) drawingGroupObject;
        Drawing drawing2 = (Drawing) this.imageFiles.get(drawingGroupObject.getImageFilePath());
        if (drawing2 == null) {
            this.maxObjectId++;
            this.maxShapeId++;
            this.drawings.add(drawing);
            drawing.setDrawingGroup(this);
            drawing.setObjectId(this.maxObjectId, this.numBlips + 1, this.maxShapeId);
            this.numBlips++;
            this.imageFiles.put(drawing.getImageFilePath(), drawing);
            return;
        }
        drawing2.setReferenceCount(drawing2.getReferenceCount() + 1);
        drawing.setDrawingGroup(this);
        drawing.setObjectId(drawing2.getObjectId(), drawing2.getBlipId(), drawing2.getShapeId());
    }

    public void remove(DrawingGroupObject drawingGroupObject) {
        if (getBStoreContainer() == null) {
            return;
        }
        if (this.origin == Origin.READ) {
            this.origin = Origin.READ_WRITE;
            this.numBlips = getBStoreContainer().getNumBlips();
            this.drawingGroupId = (((Dgg) this.escherData.getChildren()[0]).getCluster(1).drawingGroupId - this.numBlips) - 1;
        }
        BlipStoreEntry blipStoreEntry = (BlipStoreEntry) getBStoreContainer().getChildren()[drawingGroupObject.getBlipId() - 1];
        blipStoreEntry.dereference();
        if (blipStoreEntry.getReferenceCount() == 0) {
            getBStoreContainer().remove(blipStoreEntry);
            Iterator it = this.drawings.iterator();
            while (it.hasNext()) {
                DrawingGroupObject drawingGroupObject2 = (DrawingGroupObject) it.next();
                if (drawingGroupObject2.getBlipId() > drawingGroupObject.getBlipId()) {
                    drawingGroupObject2.setObjectId(drawingGroupObject2.getObjectId(), drawingGroupObject2.getBlipId() - 1, drawingGroupObject2.getShapeId());
                }
            }
            this.numBlips--;
        }
    }

    private void initialize() {
        EscherRecordData escherRecordData = new EscherRecordData(this, 0);
        Assert.verify(escherRecordData.isContainer());
        this.escherData = new EscherContainer(escherRecordData);
        Assert.verify(this.escherData.getLength() == this.drawingData.length);
        Assert.verify(this.escherData.getType() == EscherRecordType.DGG_CONTAINER);
        this.initialized = true;
    }

    private BStoreContainer getBStoreContainer() {
        if (this.bstoreContainer == null) {
            if (!this.initialized) {
                initialize();
            }
            EscherRecord[] children = this.escherData.getChildren();
            if (children.length > 1 && children[1].getType() == EscherRecordType.BSTORE_CONTAINER) {
                this.bstoreContainer = (BStoreContainer) children[1];
            }
        }
        return this.bstoreContainer;
    }

    @Override // jxl.biff.drawing.EscherStream
    public byte[] getData() {
        return this.drawingData;
    }

    public void write(File file) throws IOException {
        int i = 0;
        if (this.origin == Origin.WRITE) {
            DggContainer dggContainer = new DggContainer();
            int i2 = this.numBlips;
            Dgg dgg = new Dgg(this.numCharts + i2 + 1, i2);
            dgg.addCluster(1, 0);
            dgg.addCluster(this.numBlips + 1, 0);
            dggContainer.add(dgg);
            BStoreContainer bStoreContainer = new BStoreContainer();
            Iterator it = this.drawings.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof Drawing) {
                    bStoreContainer.add(new BlipStoreEntry((Drawing) next));
                    i++;
                }
            }
            if (i > 0) {
                bStoreContainer.setNumBlips(i);
                dggContainer.add(bStoreContainer);
            }
            dggContainer.add(new Opt());
            dggContainer.add(new SplitMenuColors());
            this.drawingData = dggContainer.getData();
        } else if (this.origin == Origin.READ_WRITE) {
            DggContainer dggContainer2 = new DggContainer();
            int i3 = this.numBlips;
            Dgg dgg2 = new Dgg(this.numCharts + i3 + 1, i3);
            dgg2.addCluster(1, 0);
            dgg2.addCluster(this.drawingGroupId + this.numBlips + 1, 0);
            dggContainer2.add(dgg2);
            BStoreContainer bStoreContainer2 = new BStoreContainer();
            bStoreContainer2.setNumBlips(this.numBlips);
            BStoreContainer bStoreContainer3 = getBStoreContainer();
            if (bStoreContainer3 != null) {
                for (EscherRecord escherRecord : bStoreContainer3.getChildren()) {
                    bStoreContainer2.add((BlipStoreEntry) escherRecord);
                }
            }
            Iterator it2 = this.drawings.iterator();
            while (it2.hasNext()) {
                DrawingGroupObject drawingGroupObject = (DrawingGroupObject) it2.next();
                if (drawingGroupObject instanceof Drawing) {
                    Drawing drawing = (Drawing) drawingGroupObject;
                    if (drawing.getOrigin() == Origin.WRITE) {
                        bStoreContainer2.add(new BlipStoreEntry(drawing));
                    }
                }
            }
            dggContainer2.add(bStoreContainer2);
            Opt opt = new Opt();
            opt.addProperty(191, false, false, 524296);
            opt.addProperty(385, false, false, 134217737);
            opt.addProperty(448, false, false, 134217792);
            dggContainer2.add(opt);
            dggContainer2.add(new SplitMenuColors());
            this.drawingData = dggContainer2.getData();
        }
        file.write(new MsoDrawingGroupRecord(this.drawingData));
    }

    final int getNumberOfBlips() {
        return this.numBlips;
    }

    byte[] getImageData(int i) {
        this.numBlips = getBStoreContainer().getNumBlips();
        Assert.verify(i <= this.numBlips);
        Assert.verify(this.origin == Origin.READ || this.origin == Origin.READ_WRITE);
        return ((BlipStoreEntry) getBStoreContainer().getChildren()[i - 1]).getImageData();
    }

    public void setDrawingsOmitted(MsoDrawingRecord msoDrawingRecord, ObjRecord objRecord) {
        this.drawingsOmitted = true;
        if (objRecord != null) {
            this.maxObjectId = Math.max(this.maxObjectId, objRecord.getObjectId());
        }
    }

    public boolean hasDrawingsOmitted() {
        return this.drawingsOmitted;
    }

    public void updateData(DrawingGroup drawingGroup) {
        this.drawingsOmitted = drawingGroup.drawingsOmitted;
        this.maxObjectId = drawingGroup.maxObjectId;
        this.maxShapeId = drawingGroup.maxShapeId;
    }
}
