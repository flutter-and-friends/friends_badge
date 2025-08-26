package jxl.biff.drawing;

import common.Logger;
import java.util.ArrayList;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class Dgg extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$Dgg;
    private static Logger logger;
    private ArrayList clusters;
    private byte[] data;
    private int drawingsSaved;
    private int maxShapeId;
    private int numClusters;
    private int shapesSaved;

    static {
        Class clsClass$ = class$jxl$biff$drawing$Dgg;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.Dgg");
            class$jxl$biff$drawing$Dgg = clsClass$;
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

    static final class Cluster {
        int drawingGroupId;
        int shapeIdsUsed;

        Cluster(int i, int i2) {
            this.drawingGroupId = i;
            this.shapeIdsUsed = i2;
        }
    }

    public Dgg(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.clusters = new ArrayList();
        byte[] bytes = getBytes();
        this.maxShapeId = IntegerHelper.getInt(bytes[0], bytes[1], bytes[2], bytes[3]);
        this.numClusters = IntegerHelper.getInt(bytes[4], bytes[5], bytes[6], bytes[7]);
        this.shapesSaved = IntegerHelper.getInt(bytes[8], bytes[9], bytes[10], bytes[11]);
        this.drawingsSaved = IntegerHelper.getInt(bytes[12], bytes[13], bytes[14], bytes[15]);
        int i = 16;
        for (int i2 = 0; i2 < this.numClusters; i2++) {
            this.clusters.add(new Cluster(IntegerHelper.getInt(bytes[i], bytes[i + 1]), IntegerHelper.getInt(bytes[i + 2], bytes[i + 3])));
            i += 4;
        }
    }

    public Dgg(int i, int i2) {
        super(EscherRecordType.DGG);
        this.shapesSaved = i;
        this.drawingsSaved = i2;
        this.clusters = new ArrayList();
    }

    void addCluster(int i, int i2) {
        this.clusters.add(new Cluster(i, i2));
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.numClusters = this.clusters.size();
        int i = 16;
        this.data = new byte[(this.numClusters * 4) + 16];
        IntegerHelper.getFourBytes(this.shapesSaved + 1024, this.data, 0);
        IntegerHelper.getFourBytes(this.numClusters, this.data, 4);
        IntegerHelper.getFourBytes(this.shapesSaved, this.data, 8);
        IntegerHelper.getFourBytes(1, this.data, 12);
        for (int i2 = 0; i2 < this.numClusters; i2++) {
            Cluster cluster = (Cluster) this.clusters.get(i2);
            IntegerHelper.getTwoBytes(cluster.drawingGroupId, this.data, i);
            IntegerHelper.getTwoBytes(cluster.shapeIdsUsed, this.data, i + 2);
            i += 4;
        }
        return setHeaderData(this.data);
    }

    int getShapesSaved() {
        return this.shapesSaved;
    }

    int getDrawingsSaved() {
        return this.drawingsSaved;
    }

    Cluster getCluster(int i) {
        return (Cluster) this.clusters.get(i);
    }
}
