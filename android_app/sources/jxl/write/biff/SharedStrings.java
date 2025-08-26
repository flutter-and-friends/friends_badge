package jxl.write.biff;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes2.dex */
class SharedStrings {
    private HashMap strings = new HashMap(100);
    private ArrayList stringList = new ArrayList(100);
    private int totalOccurrences = 0;

    public int getIndex(String str) {
        Integer num = (Integer) this.strings.get(str);
        if (num == null) {
            num = new Integer(this.strings.size());
            this.strings.put(str, num);
            this.stringList.add(str);
        }
        this.totalOccurrences++;
        return num.intValue();
    }

    public String get(int i) {
        return (String) this.stringList.get(i);
    }

    public void write(File file) throws IOException {
        SSTRecord sSTRecord = new SSTRecord(this.totalOccurrences, this.stringList.size());
        ExtendedSSTRecord extendedSSTRecord = new ExtendedSSTRecord(this.stringList.size());
        int numberOfStringsPerBucket = extendedSSTRecord.getNumberOfStringsPerBucket();
        Iterator it = this.stringList.iterator();
        int i = 0;
        String str = null;
        int i2 = 0;
        while (it.hasNext() && i == 0) {
            str = (String) it.next();
            int offset = sSTRecord.getOffset() + 4;
            int iAdd = sSTRecord.add(str);
            if (i2 % numberOfStringsPerBucket == 0) {
                extendedSSTRecord.addString(file.getPos(), offset);
            }
            i2++;
            i = iAdd;
        }
        file.write(sSTRecord);
        if (i != 0 || it.hasNext()) {
            SSTContinueRecord sSTContinueRecordCreateContinueRecord = createContinueRecord(str, i, file);
            while (it.hasNext()) {
                String str2 = (String) it.next();
                int offset2 = sSTContinueRecordCreateContinueRecord.getOffset() + 4;
                int iAdd2 = sSTContinueRecordCreateContinueRecord.add(str2);
                if (i2 % numberOfStringsPerBucket == 0) {
                    extendedSSTRecord.addString(file.getPos(), offset2);
                }
                i2++;
                if (iAdd2 != 0) {
                    file.write(sSTContinueRecordCreateContinueRecord);
                    sSTContinueRecordCreateContinueRecord = createContinueRecord(str2, iAdd2, file);
                }
            }
            file.write(sSTContinueRecordCreateContinueRecord);
        }
        file.write(extendedSSTRecord);
    }

    private SSTContinueRecord createContinueRecord(String str, int i, File file) throws IOException {
        SSTContinueRecord sSTContinueRecord = null;
        while (i != 0) {
            sSTContinueRecord = new SSTContinueRecord();
            if (i == str.length() || str.length() == 0) {
                i = sSTContinueRecord.setFirstString(str, true);
            } else {
                i = sSTContinueRecord.setFirstString(str.substring(str.length() - i), false);
            }
            if (i != 0) {
                file.write(sSTContinueRecord);
                sSTContinueRecord = new SSTContinueRecord();
            }
        }
        return sSTContinueRecord;
    }
}
