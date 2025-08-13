package org.devio.takephoto.model;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class TResult {
    private TImage image;
    private ArrayList<TImage> images;

    /* renamed from: of */
    public static TResult m885of(TImage tImage) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(tImage);
        return new TResult(arrayList);
    }

    /* renamed from: of */
    public static TResult m884of(ArrayList<TImage> arrayList) {
        return new TResult(arrayList);
    }

    private TResult(ArrayList<TImage> arrayList) {
        this.images = arrayList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.image = arrayList.get(0);
    }

    public ArrayList<TImage> getImages() {
        return this.images;
    }

    public void setImages(ArrayList<TImage> arrayList) {
        this.images = arrayList;
    }

    public TImage getImage() {
        return this.image;
    }

    public void setImage(TImage tImage) {
        this.image = tImage;
    }
}
