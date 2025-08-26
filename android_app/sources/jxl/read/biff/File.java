package jxl.read.biff;

import common.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import jxl.WorkbookSettings;
import jxl.biff.BaseCompoundFile;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;

/* loaded from: classes2.dex */
public class File {
    static /* synthetic */ Class class$jxl$read$biff$File;
    private static Logger logger;
    private int arrayGrowSize;
    private CompoundFile compoundFile;
    private byte[] data;
    private int filePos;
    private int initialFileSize;
    private int oldPos;
    private WorkbookSettings workbookSettings;

    public void close() {
    }

    static {
        Class clsClass$ = class$jxl$read$biff$File;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.File");
            class$jxl$read$biff$File = clsClass$;
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

    public File(InputStream inputStream, WorkbookSettings workbookSettings) throws BiffException, IOException {
        this.workbookSettings = workbookSettings;
        this.initialFileSize = this.workbookSettings.getInitialFileSize();
        this.arrayGrowSize = this.workbookSettings.getArrayGrowSize();
        byte[] bArr = new byte[this.initialFileSize];
        int i = inputStream.read(bArr);
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        }
        byte[] bArr2 = bArr;
        int i2 = i;
        while (i != -1) {
            if (i2 >= bArr2.length) {
                byte[] bArr3 = new byte[bArr2.length + this.arrayGrowSize];
                System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                bArr2 = bArr3;
            }
            i = inputStream.read(bArr2, i2, bArr2.length - i2);
            i2 += i;
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
        }
        if (i2 + 1 == 0) {
            throw new BiffException(BiffException.excelFileNotFound);
        }
        CompoundFile compoundFile = new CompoundFile(bArr2, workbookSettings);
        try {
            this.data = compoundFile.getStream("workbook");
        } catch (BiffException unused) {
            this.data = compoundFile.getStream("book");
        }
        if (!this.workbookSettings.getPropertySetsDisabled() && compoundFile.getNumberOfPropertySets() > BaseCompoundFile.STANDARD_PROPERTY_SETS.length) {
            this.compoundFile = compoundFile;
        }
        if (this.workbookSettings.getGCDisabled()) {
            return;
        }
        System.gc();
    }

    public File(byte[] bArr) {
        this.data = bArr;
    }

    Record next() {
        return new Record(this.data, this.filePos, this);
    }

    Record peek() {
        int i = this.filePos;
        Record record = new Record(this.data, i, this);
        this.filePos = i;
        return record;
    }

    public void skip(int i) {
        this.filePos += i;
    }

    public byte[] read(int i, int i2) {
        byte[] bArr = new byte[i2];
        try {
            System.arraycopy(this.data, i, bArr, 0, i2);
            return bArr;
        } catch (ArrayIndexOutOfBoundsException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Array index out of bounds at position ");
            stringBuffer.append(i);
            stringBuffer.append(" record length ");
            stringBuffer.append(i2);
            logger2.error(stringBuffer.toString());
            throw e;
        }
    }

    public int getPos() {
        return this.filePos;
    }

    public void setPos(int i) {
        this.oldPos = this.filePos;
        this.filePos = i;
    }

    public void restorePos() {
        this.filePos = this.oldPos;
    }

    private void moveToFirstBof() {
        boolean z = false;
        while (!z) {
            byte[] bArr = this.data;
            int i = this.filePos;
            if (IntegerHelper.getInt(bArr[i], bArr[i + 1]) == Type.BOF.value) {
                z = true;
            } else {
                skip(128);
            }
        }
    }

    public void clear() {
        this.data = null;
    }

    public boolean hasNext() {
        return this.filePos < this.data.length + (-4);
    }

    CompoundFile getCompoundFile() {
        return this.compoundFile;
    }
}
