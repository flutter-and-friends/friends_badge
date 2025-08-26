package com.yuyh.library.imgsel.bean;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class Image implements Serializable {
    public String name;
    public String path;

    public Image(String str, String str2) {
        this.path = str;
        this.name = str2;
    }

    public Image() {
    }

    public boolean equals(Object obj) {
        try {
            return this.path.equalsIgnoreCase(((Image) obj).path);
        } catch (ClassCastException e) {
            e.printStackTrace();
            return super.equals(obj);
        }
    }
}
