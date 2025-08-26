package jxl;

import java.io.File;
import java.net.URL;

/* loaded from: classes2.dex */
public interface Hyperlink {
    int getColumn();

    File getFile();

    int getLastColumn();

    int getLastRow();

    Range getRange();

    int getRow();

    URL getURL();

    boolean isFile();

    boolean isLocation();

    boolean isURL();
}
