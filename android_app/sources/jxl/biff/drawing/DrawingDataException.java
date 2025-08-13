package jxl.biff.drawing;

/* loaded from: classes2.dex */
public class DrawingDataException extends RuntimeException {
    private static String message = "Drawing number exceeds available SpContainers";

    DrawingDataException() {
        super(message);
    }
}
