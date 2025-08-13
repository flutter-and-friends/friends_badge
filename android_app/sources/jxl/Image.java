package jxl;

import common.LengthUnit;
import java.io.File;

/* loaded from: classes2.dex */
public interface Image {
    double getColumn();

    double getHeight();

    double getHeight(LengthUnit lengthUnit);

    double getHorizontalResolution(LengthUnit lengthUnit);

    byte[] getImageData();

    File getImageFile();

    int getImageHeight();

    int getImageWidth();

    double getRow();

    double getVerticalResolution(LengthUnit lengthUnit);

    double getWidth();

    double getWidth(LengthUnit lengthUnit);
}
