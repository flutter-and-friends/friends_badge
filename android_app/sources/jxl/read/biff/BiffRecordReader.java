package jxl.read.biff;

/* loaded from: classes2.dex */
public class BiffRecordReader {
    private File file;
    private Record record;

    public BiffRecordReader(File file) {
        this.file = file;
    }

    public boolean hasNext() {
        return this.file.hasNext();
    }

    public Record next() {
        this.record = this.file.next();
        return this.record;
    }

    public int getPos() {
        return (this.file.getPos() - this.record.getLength()) - 4;
    }
}
