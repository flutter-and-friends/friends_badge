package jxl;

/* loaded from: classes2.dex */
public final class CellView {
    private boolean autosize;
    private boolean depUsed;
    private int dimension;
    private jxl.format.CellFormat format;
    private boolean hidden;
    private int size;

    public CellView() {
        this.hidden = false;
        this.depUsed = false;
        this.dimension = 1;
        this.size = 1;
        this.autosize = false;
    }

    public CellView(CellView cellView) {
        this.hidden = cellView.hidden;
        this.depUsed = cellView.depUsed;
        this.dimension = cellView.dimension;
        this.size = cellView.size;
        this.autosize = cellView.autosize;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setDimension(int i) {
        this.dimension = i;
        this.depUsed = true;
    }

    public void setSize(int i) {
        this.size = i;
        this.depUsed = false;
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getSize() {
        return this.size;
    }

    public void setFormat(jxl.format.CellFormat cellFormat) {
        this.format = cellFormat;
    }

    public jxl.format.CellFormat getFormat() {
        return this.format;
    }

    public boolean depUsed() {
        return this.depUsed;
    }

    public void setAutosize(boolean z) {
        this.autosize = z;
    }

    public boolean isAutosize() {
        return this.autosize;
    }
}
