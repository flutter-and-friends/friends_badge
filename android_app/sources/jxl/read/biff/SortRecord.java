package jxl.read.biff;

import cn.highlight.p004tx.app.CmdCenter;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;
import jxl.biff.Type;

/* loaded from: classes2.dex */
public class SortRecord extends RecordData {
    private String col1Name;
    private int col1Size;
    private String col2Name;
    private int col2Size;
    private String col3Name;
    private int col3Size;
    private byte optionFlags;
    private boolean sortCaseSensitive;
    private boolean sortColumns;
    private boolean sortKey1Desc;
    private boolean sortKey2Desc;
    private boolean sortKey3Desc;

    public SortRecord(Record record) {
        int i;
        int i2;
        super(Type.SORT);
        this.sortColumns = false;
        this.sortKey1Desc = false;
        this.sortKey2Desc = false;
        this.sortKey3Desc = false;
        this.sortCaseSensitive = false;
        byte[] data = record.getData();
        this.optionFlags = data[0];
        this.sortColumns = (this.optionFlags & 1) != 0;
        this.sortKey1Desc = (this.optionFlags & 2) != 0;
        this.sortKey2Desc = (this.optionFlags & 4) != 0;
        this.sortKey3Desc = (this.optionFlags & 8) != 0;
        this.sortCaseSensitive = (this.optionFlags & CmdCenter.CMD_openMoreCabinet) != 0;
        this.col1Size = data[2];
        this.col2Size = data[3];
        this.col3Size = data[4];
        if (data[5] == 0) {
            this.col1Name = new String(data, 6, this.col1Size);
            i = this.col1Size;
        } else {
            this.col1Name = StringHelper.getUnicodeString(data, this.col1Size, 6);
            i = this.col1Size * 2;
        }
        int i3 = 6 + i;
        int i4 = this.col2Size;
        if (i4 > 0) {
            int i5 = i3 + 1;
            if (data[i3] == 0) {
                this.col2Name = new String(data, i5, i4);
                i2 = this.col2Size;
            } else {
                this.col2Name = StringHelper.getUnicodeString(data, i4, i5);
                i2 = this.col2Size * 2;
            }
            i3 = i5 + i2;
        } else {
            this.col2Name = "";
        }
        int i6 = this.col3Size;
        if (i6 > 0) {
            int i7 = i3 + 1;
            if (data[i3] == 0) {
                this.col3Name = new String(data, i7, i6);
                int i8 = this.col3Size;
                return;
            } else {
                this.col3Name = StringHelper.getUnicodeString(data, i6, i7);
                int i9 = this.col3Size;
                return;
            }
        }
        this.col3Name = "";
    }

    public String getSortCol1Name() {
        return this.col1Name;
    }

    public String getSortCol2Name() {
        return this.col2Name;
    }

    public String getSortCol3Name() {
        return this.col3Name;
    }

    public boolean getSortColumns() {
        return this.sortColumns;
    }

    public boolean getSortKey1Desc() {
        return this.sortKey1Desc;
    }

    public boolean getSortKey2Desc() {
        return this.sortKey2Desc;
    }

    public boolean getSortKey3Desc() {
        return this.sortKey3Desc;
    }

    public boolean getSortCaseSensitive() {
        return this.sortCaseSensitive;
    }
}
