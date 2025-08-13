package jxl.biff;

import java.io.IOException;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class ConditionalFormat {
    private ConditionalFormatRecord conditions;
    private ConditionalFormatRangeRecord range;

    public ConditionalFormat(ConditionalFormatRangeRecord conditionalFormatRangeRecord, ConditionalFormatRecord conditionalFormatRecord) {
        this.range = conditionalFormatRangeRecord;
        this.conditions = conditionalFormatRecord;
    }

    public void insertColumn(int i) {
        this.range.insertColumn(i);
    }

    public void removeColumn(int i) {
        this.range.removeColumn(i);
    }

    public void removeRow(int i) {
        this.range.removeRow(i);
    }

    public void insertRow(int i) {
        this.range.insertRow(i);
    }

    public void write(File file) throws IOException {
        file.write(this.range);
        file.write(this.conditions);
    }
}
