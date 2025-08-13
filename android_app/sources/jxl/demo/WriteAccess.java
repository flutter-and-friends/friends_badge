package jxl.demo;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import jxl.WorkbookSettings;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.read.biff.BiffException;
import jxl.read.biff.BiffRecordReader;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
class WriteAccess {
    private BiffRecordReader reader;

    public WriteAccess(File file) throws BiffException, IOException {
        WorkbookSettings workbookSettings = new WorkbookSettings();
        FileInputStream fileInputStream = new FileInputStream(file);
        this.reader = new BiffRecordReader(new jxl.read.biff.File(fileInputStream, workbookSettings));
        display(workbookSettings);
        fileInputStream.close();
    }

    private void display(WorkbookSettings workbookSettings) throws IOException {
        Record next = null;
        boolean z = false;
        while (this.reader.hasNext() && !z) {
            next = this.reader.next();
            if (next.getType() == Type.WRITEACCESS) {
                z = true;
            }
        }
        if (!z) {
            System.err.println("Warning:  could not find write access record");
            return;
        }
        byte[] data = next.getData();
        System.out.println(StringHelper.getString(data, data.length, 0, workbookSettings));
    }
}
