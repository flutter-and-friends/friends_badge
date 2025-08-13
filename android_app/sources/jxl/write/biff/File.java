package jxl.write.biff;

import common.Logger;
import java.io.IOException;
import java.io.OutputStream;
import jxl.WorkbookSettings;
import jxl.biff.ByteData;

/* loaded from: classes2.dex */
public final class File {
    static /* synthetic */ Class class$jxl$write$biff$File;
    private static Logger logger;
    private int arrayGrowSize;
    private byte[] data;
    private int initialFileSize;
    private OutputStream outputStream;
    private int pos = 0;
    jxl.read.biff.CompoundFile readCompoundFile;
    private WorkbookSettings workbookSettings;

    static {
        Class clsClass$ = class$jxl$write$biff$File;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.File");
            class$jxl$write$biff$File = clsClass$;
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

    File(OutputStream outputStream, WorkbookSettings workbookSettings, jxl.read.biff.CompoundFile compoundFile) {
        this.initialFileSize = workbookSettings.getInitialFileSize();
        this.arrayGrowSize = workbookSettings.getArrayGrowSize();
        this.data = new byte[this.initialFileSize];
        this.outputStream = outputStream;
        this.workbookSettings = workbookSettings;
        this.readCompoundFile = compoundFile;
    }

    void close(boolean z) throws IOException, JxlWriteException {
        new CompoundFile(this.data, this.pos, this.outputStream, this.readCompoundFile).write();
        this.outputStream.flush();
        if (z) {
            this.outputStream.close();
        }
        this.data = null;
        if (this.workbookSettings.getGCDisabled()) {
            return;
        }
        System.gc();
    }

    public void write(ByteData byteData) throws IOException {
        byte[] bytes = byteData.getBytes();
        while (true) {
            int i = this.pos;
            int length = bytes.length + i;
            byte[] bArr = this.data;
            if (length > bArr.length) {
                byte[] bArr2 = new byte[bArr.length + this.arrayGrowSize];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                this.data = bArr2;
            } else {
                System.arraycopy(bytes, 0, bArr, i, bytes.length);
                this.pos += bytes.length;
                return;
            }
        }
    }

    int getPos() {
        return this.pos;
    }

    void setData(byte[] bArr, int i) {
        System.arraycopy(bArr, 0, this.data, i, bArr.length);
    }

    public void setOutputFile(OutputStream outputStream) {
        if (this.data != null) {
            logger.warn("Rewriting a workbook with non-empty data");
        }
        this.outputStream = outputStream;
        this.data = new byte[this.initialFileSize];
        this.pos = 0;
    }
}
