package jxl.biff.drawing;

import java.io.BufferedWriter;
import java.io.IOException;

/* loaded from: classes2.dex */
public class EscherDisplay {
    private EscherStream stream;
    private BufferedWriter writer;

    public EscherDisplay(EscherStream escherStream, BufferedWriter bufferedWriter) {
        this.stream = escherStream;
        this.writer = bufferedWriter;
    }

    public void display() throws IOException {
        displayContainer(new EscherContainer(new EscherRecordData(this.stream, 0)), 0);
    }

    private void displayContainer(EscherContainer escherContainer, int i) throws IOException {
        displayRecord(escherContainer, i);
        int i2 = i + 1;
        for (EscherRecord escherRecord : escherContainer.getChildren()) {
            if (escherRecord.getEscherData().isContainer()) {
                displayContainer((EscherContainer) escherRecord, i2);
            } else {
                displayRecord(escherRecord, i2);
            }
        }
    }

    private void displayRecord(EscherRecord escherRecord, int i) throws IOException {
        indent(i);
        EscherRecordType type = escherRecord.getType();
        this.writer.write(Integer.toString(type.getValue(), 16));
        this.writer.write(" - ");
        if (type == EscherRecordType.DGG_CONTAINER) {
            this.writer.write("Dgg Container");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.BSTORE_CONTAINER) {
            this.writer.write("BStore Container");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.DG_CONTAINER) {
            this.writer.write("Dg Container");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.SPGR_CONTAINER) {
            this.writer.write("Spgr Container");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.SP_CONTAINER) {
            this.writer.write("Sp Container");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.DGG) {
            this.writer.write("Dgg");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.BSE) {
            this.writer.write("Bse");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.f1136DG) {
            this.writer.write("Dg");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.SPGR) {
            this.writer.write("Spgr");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.f1137SP) {
            this.writer.write("Sp");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.OPT) {
            this.writer.write("Opt");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.CLIENT_ANCHOR) {
            this.writer.write("Client Anchor");
            this.writer.newLine();
            return;
        }
        if (type == EscherRecordType.CLIENT_DATA) {
            this.writer.write("Client Data");
            this.writer.newLine();
        } else if (type == EscherRecordType.CLIENT_TEXT_BOX) {
            this.writer.write("Client Text Box");
            this.writer.newLine();
        } else if (type == EscherRecordType.SPLIT_MENU_COLORS) {
            this.writer.write("Split Menu Colors");
            this.writer.newLine();
        } else {
            this.writer.write("???");
            this.writer.newLine();
        }
    }

    private void indent(int i) throws IOException {
        for (int i2 = 0; i2 < i * 2; i2++) {
            this.writer.write(32);
        }
    }
}
