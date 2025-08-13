package jxl.biff.drawing;

import java.io.IOException;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public interface DrawingGroupObject {
    int getBlipId();

    DrawingGroup getDrawingGroup();

    double getHeight();

    byte[] getImageBytes() throws IOException;

    byte[] getImageData();

    String getImageFilePath();

    MsoDrawingRecord getMsoDrawingRecord();

    int getObjectId();

    Origin getOrigin();

    int getReferenceCount();

    int getShapeId();

    EscherContainer getSpContainer();

    ShapeType getType();

    double getWidth();

    double getX();

    double getY();

    boolean isFirst();

    boolean isFormObject();

    void setDrawingGroup(DrawingGroup drawingGroup);

    void setHeight(double d);

    void setObjectId(int i, int i2, int i3);

    void setReferenceCount(int i);

    void setWidth(double d);

    void setX(double d);

    void setY(double d);

    void writeAdditionalRecords(File file) throws IOException;

    void writeTailRecords(File file) throws IOException;
}
