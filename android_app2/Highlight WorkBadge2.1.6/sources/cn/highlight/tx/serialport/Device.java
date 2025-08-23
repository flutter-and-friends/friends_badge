package cn.highlight.tx.serialport;

import java.io.File;
import java.io.Serializable;

/* loaded from: classes.dex */
public class Device implements Serializable {
    private static final String TAG = Device.class.getSimpleName();
    private File file;
    private String name;
    private String root;

    public Device(String str, String str2, File file) {
        this.name = str;
        this.root = str2;
        this.file = file;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getRoot() {
        return this.root;
    }

    public void setRoot(String str) {
        this.root = str;
    }

    public File getFile() {
        return this.file;
    }

    public void setFile(File file) {
        this.file = this.file;
    }
}
