package org.devio.takephoto.model;

import android.net.Uri;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class TImage implements Serializable {
    private String compressPath;
    private boolean compressed;
    private boolean cropped;
    private FromType fromType;
    private String originalPath;
    private String tempPath;

    public enum FromType {
        CAMERA,
        OTHER
    }

    /* renamed from: of */
    public static TImage m883of(String str, FromType fromType) {
        return new TImage(str, fromType);
    }

    /* renamed from: of */
    public static TImage m881of(Uri uri, FromType fromType) {
        return new TImage(uri, fromType);
    }

    /* renamed from: of */
    public static TImage m882of(String str, String str2, FromType fromType) {
        return new TImage(str, str2, fromType);
    }

    private TImage(String str, FromType fromType) {
        this.originalPath = str;
        this.fromType = fromType;
    }

    private TImage(Uri uri, FromType fromType) {
        this.originalPath = uri.getPath();
        this.fromType = fromType;
    }

    private TImage(String str, String str2, FromType fromType) {
        this.tempPath = str;
        this.originalPath = str2;
        this.fromType = fromType;
    }

    public String getOriginalPath() {
        return this.originalPath;
    }

    public void setOriginalPath(String str) {
        this.originalPath = str;
    }

    public String getCompressPath() {
        return this.compressPath;
    }

    public void setCompressPath(String str) {
        this.compressPath = str;
    }

    public FromType getFromType() {
        return this.fromType;
    }

    public void setFromType(FromType fromType) {
        this.fromType = fromType;
    }

    public String getTempPath() {
        return this.tempPath;
    }

    public void setTempPath(String str) {
        this.tempPath = str;
    }

    public boolean isCropped() {
        return this.cropped;
    }

    public void setCropped(boolean z) {
        this.cropped = z;
    }

    public boolean isCompressed() {
        return this.compressed;
    }

    public void setCompressed(boolean z) {
        this.compressed = z;
    }
}
