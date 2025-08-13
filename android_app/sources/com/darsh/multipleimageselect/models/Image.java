package com.darsh.multipleimageselect.models;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class Image implements Parcelable {
    public static final Parcelable.Creator<Image> CREATOR = new Parcelable.Creator<Image>() { // from class: com.darsh.multipleimageselect.models.Image.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Image createFromParcel(Parcel parcel) {
            return new Image(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Image[] newArray(int i) {
            return new Image[i];
        }
    };

    /* renamed from: id */
    public long f346id;
    public boolean isSelected;
    public String name;
    public String path;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Image(long j, String str, String str2, boolean z) {
        this.f346id = j;
        this.name = str;
        this.path = str2;
        this.isSelected = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f346id);
        parcel.writeString(this.name);
        parcel.writeString(this.path);
    }

    private Image(Parcel parcel) {
        this.f346id = parcel.readLong();
        this.name = parcel.readString();
        this.path = parcel.readString();
    }
}
