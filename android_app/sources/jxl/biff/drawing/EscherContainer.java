package jxl.biff.drawing;

import common.Logger;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
class EscherContainer extends EscherRecord {
    static /* synthetic */ Class class$jxl$biff$drawing$EscherContainer;
    private static Logger logger;
    private ArrayList children;
    private boolean initialized;

    static {
        Class clsClass$ = class$jxl$biff$drawing$EscherContainer;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.EscherContainer");
            class$jxl$biff$drawing$EscherContainer = clsClass$;
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

    public EscherContainer(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.initialized = false;
        this.children = new ArrayList();
    }

    protected EscherContainer(EscherRecordType escherRecordType) {
        super(escherRecordType);
        setContainer(true);
        this.children = new ArrayList();
    }

    public EscherRecord[] getChildren() {
        if (!this.initialized) {
            initialize();
        }
        ArrayList arrayList = this.children;
        return (EscherRecord[]) arrayList.toArray(new EscherRecord[arrayList.size()]);
    }

    public void add(EscherRecord escherRecord) {
        this.children.add(escherRecord);
    }

    public void remove(EscherRecord escherRecord) {
        this.children.remove(escherRecord);
    }

    private void initialize() {
        EscherRecord escherAtom;
        int pos = getPos() + 8;
        int iMin = Math.min(getPos() + getLength(), getStreamLength());
        while (pos < iMin) {
            EscherRecordData escherRecordData = new EscherRecordData(getEscherStream(), pos);
            EscherRecordType type = escherRecordData.getType();
            if (type == EscherRecordType.DGG) {
                escherAtom = new Dgg(escherRecordData);
            } else if (type == EscherRecordType.f1136DG) {
                escherAtom = new C1499Dg(escherRecordData);
            } else if (type == EscherRecordType.BSTORE_CONTAINER) {
                escherAtom = new BStoreContainer(escherRecordData);
            } else if (type == EscherRecordType.SPGR_CONTAINER) {
                escherAtom = new SpgrContainer(escherRecordData);
            } else if (type == EscherRecordType.SP_CONTAINER) {
                escherAtom = new SpContainer(escherRecordData);
            } else if (type == EscherRecordType.SPGR) {
                escherAtom = new Spgr(escherRecordData);
            } else if (type == EscherRecordType.f1137SP) {
                escherAtom = new C1500Sp(escherRecordData);
            } else if (type == EscherRecordType.CLIENT_ANCHOR) {
                escherAtom = new ClientAnchor(escherRecordData);
            } else if (type == EscherRecordType.CLIENT_DATA) {
                escherAtom = new ClientData(escherRecordData);
            } else if (type == EscherRecordType.BSE) {
                escherAtom = new BlipStoreEntry(escherRecordData);
            } else if (type == EscherRecordType.OPT) {
                escherAtom = new Opt(escherRecordData);
            } else if (type == EscherRecordType.SPLIT_MENU_COLORS) {
                escherAtom = new SplitMenuColors(escherRecordData);
            } else if (type == EscherRecordType.CLIENT_TEXT_BOX) {
                escherAtom = new ClientTextBox(escherRecordData);
            } else {
                escherAtom = new EscherAtom(escherRecordData);
            }
            this.children.add(escherAtom);
            pos += escherAtom.getLength();
        }
        this.initialized = true;
    }

    @Override // jxl.biff.drawing.EscherRecord
    byte[] getData() {
        if (!this.initialized) {
            initialize();
        }
        byte[] bArr = new byte[0];
        Iterator it = this.children.iterator();
        while (it.hasNext()) {
            byte[] data = ((EscherRecord) it.next()).getData();
            if (data != null) {
                byte[] bArr2 = new byte[bArr.length + data.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                System.arraycopy(data, 0, bArr2, bArr.length, data.length);
                bArr = bArr2;
            }
        }
        return setHeaderData(bArr);
    }
}
