package jxl.write;

import java.io.File;
import java.net.URL;
import jxl.Hyperlink;
import jxl.write.biff.HyperlinkRecord;

/* loaded from: classes2.dex */
public class WritableHyperlink extends HyperlinkRecord implements Hyperlink {
    public WritableHyperlink(Hyperlink hyperlink, WritableSheet writableSheet) {
        super(hyperlink, writableSheet);
    }

    public WritableHyperlink(int i, int i2, URL url) {
        this(i, i2, i, i2, url);
    }

    public WritableHyperlink(int i, int i2, int i3, int i4, URL url) {
        this(i, i2, i3, i4, url, (String) null);
    }

    public WritableHyperlink(int i, int i2, int i3, int i4, URL url, String str) {
        super(i, i2, i3, i4, url, str);
    }

    public WritableHyperlink(int i, int i2, File file) {
        this(i, i2, i, i2, file, (String) null);
    }

    public WritableHyperlink(int i, int i2, File file, String str) {
        this(i, i2, i, i2, file, str);
    }

    public WritableHyperlink(int i, int i2, int i3, int i4, File file) {
        super(i, i2, i3, i4, file, (String) null);
    }

    public WritableHyperlink(int i, int i2, int i3, int i4, File file, String str) {
        super(i, i2, i3, i4, file, str);
    }

    public WritableHyperlink(int i, int i2, String str, WritableSheet writableSheet, int i3, int i4) {
        this(i, i2, i, i2, str, writableSheet, i3, i4, i3, i4);
    }

    public WritableHyperlink(int i, int i2, int i3, int i4, String str, WritableSheet writableSheet, int i5, int i6, int i7, int i8) {
        super(i, i2, i3, i4, str, writableSheet, i5, i6, i7, i8);
    }

    @Override // jxl.write.biff.HyperlinkRecord
    public void setURL(URL url) {
        super.setURL(url);
    }

    @Override // jxl.write.biff.HyperlinkRecord
    public void setFile(File file) {
        super.setFile(file);
    }

    public void setDescription(String str) {
        super.setContents(str);
    }

    @Override // jxl.write.biff.HyperlinkRecord
    public void setLocation(String str, WritableSheet writableSheet, int i, int i2, int i3, int i4) {
        super.setLocation(str, writableSheet, i, i2, i3, i4);
    }
}
