package jxl.biff.drawing;

import cn.highlight.p004tx.app.CmdCenter;

/* loaded from: classes2.dex */
class SplitMenuColors extends EscherAtom {
    private byte[] data;

    public SplitMenuColors(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }

    public SplitMenuColors() {
        super(EscherRecordType.SPLIT_MENU_COLORS);
        setVersion(0);
        setInstance(4);
        this.data = new byte[]{13, 0, 0, 8, 12, 0, 0, 8, 23, 0, 0, 8, -9, 0, 0, CmdCenter.CMD_openMoreCabinet};
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        return setHeaderData(this.data);
    }
}
