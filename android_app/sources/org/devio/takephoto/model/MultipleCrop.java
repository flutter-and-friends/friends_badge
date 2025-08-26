package org.devio.takephoto.model;

import android.app.Activity;
import android.net.Uri;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.devio.takephoto.model.TImage;
import org.devio.takephoto.uitl.TImageFiles;
import org.devio.takephoto.uitl.TUtils;

/* loaded from: classes2.dex */
public class MultipleCrop {
    private TImage.FromType fromType;
    public boolean hasFailed;
    private ArrayList<Uri> outUris;
    private ArrayList<TImage> tImages;
    private ArrayList<Uri> uris;

    /* renamed from: of */
    public static MultipleCrop m877of(ArrayList<Uri> arrayList, Activity activity, TImage.FromType fromType) throws TException {
        return new MultipleCrop(arrayList, activity, fromType);
    }

    /* renamed from: of */
    public static MultipleCrop m878of(ArrayList<Uri> arrayList, ArrayList<Uri> arrayList2, TImage.FromType fromType) {
        return new MultipleCrop(arrayList, arrayList2, fromType);
    }

    private MultipleCrop(ArrayList<Uri> arrayList, Activity activity, TImage.FromType fromType) throws TException {
        this.uris = arrayList;
        ArrayList<Uri> arrayList2 = new ArrayList<>();
        Iterator<Uri> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Uri.fromFile(TImageFiles.getTempFile(activity, it.next())));
        }
        this.outUris = arrayList2;
        this.tImages = TUtils.getTImagesWithUris(arrayList2, fromType);
        this.fromType = fromType;
    }

    private MultipleCrop(ArrayList<Uri> arrayList, ArrayList<Uri> arrayList2, TImage.FromType fromType) {
        this.uris = arrayList;
        this.outUris = arrayList2;
        this.tImages = TUtils.getTImagesWithUris(arrayList2, fromType);
        this.fromType = fromType;
    }

    public ArrayList<Uri> getUris() {
        return this.uris;
    }

    public void setUris(ArrayList<Uri> arrayList) {
        this.uris = arrayList;
    }

    public ArrayList<Uri> getOutUris() {
        return this.outUris;
    }

    public void setOutUris(ArrayList<Uri> arrayList) {
        this.outUris = arrayList;
    }

    public ArrayList<TImage> gettImages() {
        return this.tImages;
    }

    public void settImages(ArrayList<TImage> arrayList) {
        this.tImages = arrayList;
    }

    public Map setCropWithUri(Uri uri, boolean z) {
        if (!z) {
            this.hasFailed = true;
        }
        int iIndexOf = this.outUris.indexOf(uri);
        this.tImages.get(iIndexOf).setCropped(z);
        HashMap map = new HashMap();
        map.put("index", Integer.valueOf(iIndexOf));
        map.put("isLast", Boolean.valueOf(iIndexOf == this.outUris.size() - 1));
        return map;
    }
}
