package jxl.write;

import jxl.format.ScriptStyle;
import jxl.format.UnderlineStyle;
import jxl.write.WritableFont;

/* loaded from: classes2.dex */
public class Font extends WritableFont {
    public static final WritableFont.FontName ARIAL = WritableFont.ARIAL;
    public static final WritableFont.FontName TIMES = WritableFont.TIMES;
    public static final WritableFont.BoldStyle NO_BOLD = WritableFont.NO_BOLD;
    public static final WritableFont.BoldStyle BOLD = WritableFont.BOLD;
    public static final UnderlineStyle NO_UNDERLINE = UnderlineStyle.NO_UNDERLINE;
    public static final UnderlineStyle SINGLE = UnderlineStyle.SINGLE;
    public static final UnderlineStyle DOUBLE = UnderlineStyle.DOUBLE;
    public static final UnderlineStyle SINGLE_ACCOUNTING = UnderlineStyle.SINGLE_ACCOUNTING;
    public static final UnderlineStyle DOUBLE_ACCOUNTING = UnderlineStyle.DOUBLE_ACCOUNTING;
    public static final ScriptStyle NORMAL_SCRIPT = ScriptStyle.NORMAL_SCRIPT;
    public static final ScriptStyle SUPERSCRIPT = ScriptStyle.SUPERSCRIPT;
    public static final ScriptStyle SUBSCRIPT = ScriptStyle.SUBSCRIPT;

    public Font(WritableFont.FontName fontName) {
        super(fontName);
    }

    public Font(WritableFont.FontName fontName, int i) {
        super(fontName, i);
    }

    public Font(WritableFont.FontName fontName, int i, WritableFont.BoldStyle boldStyle) {
        super(fontName, i, boldStyle);
    }

    public Font(WritableFont.FontName fontName, int i, WritableFont.BoldStyle boldStyle, boolean z) {
        super(fontName, i, boldStyle, z);
    }

    public Font(WritableFont.FontName fontName, int i, WritableFont.BoldStyle boldStyle, boolean z, UnderlineStyle underlineStyle) {
        super(fontName, i, boldStyle, z, underlineStyle);
    }

    public Font(WritableFont.FontName fontName, int i, WritableFont.BoldStyle boldStyle, boolean z, UnderlineStyle underlineStyle, jxl.format.Colour colour) {
        super(fontName, i, boldStyle, z, underlineStyle, colour);
    }

    public Font(WritableFont.FontName fontName, int i, WritableFont.BoldStyle boldStyle, boolean z, UnderlineStyle underlineStyle, jxl.format.Colour colour, ScriptStyle scriptStyle) {
        super(fontName, i, boldStyle, z, underlineStyle, colour, scriptStyle);
    }
}
