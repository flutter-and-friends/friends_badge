package com.yuyh.library.imgsel.bean;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public class Folder implements Serializable {
    public Image cover;
    public List<Image> images;
    public String name;
    public String path;

    public boolean equals(Object obj) {
        try {
            return this.path.equalsIgnoreCase(((Folder) obj).path);
        } catch (ClassCastException e) {
            e.printStackTrace();
            return super.equals(obj);
        }
    }
}
