package jxl.format;

/* loaded from: classes2.dex */
public interface CellFormat {
    Alignment getAlignment();

    Colour getBackgroundColour();

    BorderLineStyle getBorder(Border border);

    Colour getBorderColour(Border border);

    BorderLineStyle getBorderLine(Border border);

    Font getFont();

    Format getFormat();

    int getIndentation();

    Orientation getOrientation();

    Pattern getPattern();

    VerticalAlignment getVerticalAlignment();

    boolean getWrap();

    boolean hasBorders();

    boolean isLocked();

    boolean isShrinkToFit();
}
