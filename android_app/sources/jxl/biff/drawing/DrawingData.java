package jxl.biff.drawing;

import common.Assert;
import common.Logger;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class DrawingData implements EscherStream {
    static /* synthetic */ Class class$jxl$biff$drawing$DrawingData;
    private static Logger logger;
    private EscherRecord[] spContainers;
    private int numDrawings = 0;
    private byte[] drawingData = null;
    private boolean initialized = false;

    static {
        Class clsClass$ = class$jxl$biff$drawing$DrawingData;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.DrawingData");
            class$jxl$biff$drawing$DrawingData = clsClass$;
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

    private void initialize() {
        EscherRecordData escherRecordData = new EscherRecordData(this, 0);
        Assert.verify(escherRecordData.isContainer());
        EscherContainer escherContainer = new EscherContainer(escherRecordData);
        escherContainer.getChildren();
        EscherRecord[] children = escherContainer.getChildren();
        EscherContainer escherContainer2 = null;
        for (int i = 0; i < children.length && escherContainer2 == null; i++) {
            EscherRecord escherRecord = children[i];
            if (escherRecord.getType() == EscherRecordType.SPGR_CONTAINER) {
                escherContainer2 = (EscherContainer) escherRecord;
            }
        }
        Assert.verify(escherContainer2 != null);
        EscherRecord[] children2 = escherContainer2.getChildren();
        boolean z = false;
        for (int i2 = 0; i2 < children2.length && !z; i2++) {
            if (children2[i2].getType() == EscherRecordType.SPGR_CONTAINER) {
                z = true;
            }
        }
        if (!z) {
            this.spContainers = children2;
        } else {
            ArrayList arrayList = new ArrayList();
            getSpContainers(escherContainer2, arrayList);
            this.spContainers = new EscherRecord[arrayList.size()];
            this.spContainers = (EscherRecord[]) arrayList.toArray(this.spContainers);
        }
        this.initialized = true;
    }

    private void getSpContainers(EscherContainer escherContainer, ArrayList arrayList) {
        EscherRecord[] children = escherContainer.getChildren();
        for (int i = 0; i < children.length; i++) {
            if (children[i].getType() == EscherRecordType.SP_CONTAINER) {
                arrayList.add(children[i]);
            } else if (children[i].getType() == EscherRecordType.SPGR_CONTAINER) {
                getSpContainers((EscherContainer) children[i], arrayList);
            } else {
                logger.warn("Spgr Containers contains a record other than Sp/Spgr containers");
            }
        }
    }

    public void addData(byte[] bArr) {
        addRawData(bArr);
        this.numDrawings++;
    }

    public void addRawData(byte[] bArr) {
        byte[] bArr2 = this.drawingData;
        if (bArr2 == null) {
            this.drawingData = bArr;
            return;
        }
        byte[] bArr3 = new byte[bArr2.length + bArr.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, 0, bArr3, this.drawingData.length, bArr.length);
        this.drawingData = bArr3;
        this.initialized = false;
    }

    final int getNumDrawings() {
        return this.numDrawings;
    }

    EscherContainer getSpContainer(int i) {
        if (!this.initialized) {
            initialize();
        }
        int i2 = i + 1;
        EscherRecord[] escherRecordArr = this.spContainers;
        if (i2 >= escherRecordArr.length) {
            throw new DrawingDataException();
        }
        EscherContainer escherContainer = (EscherContainer) escherRecordArr[i2];
        Assert.verify(escherContainer != null);
        return escherContainer;
    }

    @Override // jxl.biff.drawing.EscherStream
    public byte[] getData() {
        return this.drawingData;
    }
}
