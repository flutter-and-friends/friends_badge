package jxl.write.biff;

import common.Assert;
import jxl.biff.Fonts;
import jxl.biff.FormattingRecords;
import jxl.biff.NumFormatRecordsException;
import jxl.write.NumberFormats;
import jxl.write.WritableCellFormat;

/* loaded from: classes2.dex */
public class WritableFormattingRecords extends FormattingRecords {
    public static WritableCellFormat normalStyle;

    public WritableFormattingRecords(Fonts fonts, Styles styles) {
        super(fonts);
        try {
            StyleXFRecord styleXFRecord = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord.setLocked(true);
            addStyle(styleXFRecord);
            StyleXFRecord styleXFRecord2 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.DEFAULT);
            styleXFRecord2.setLocked(true);
            styleXFRecord2.setCellOptions(62464);
            addStyle(styleXFRecord2);
            StyleXFRecord styleXFRecord3 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.DEFAULT);
            styleXFRecord3.setLocked(true);
            styleXFRecord3.setCellOptions(62464);
            addStyle(styleXFRecord3);
            StyleXFRecord styleXFRecord4 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.DEFAULT);
            styleXFRecord4.setLocked(true);
            styleXFRecord4.setCellOptions(62464);
            addStyle(styleXFRecord4);
            StyleXFRecord styleXFRecord5 = new StyleXFRecord(getFonts().getFont(2), NumberFormats.DEFAULT);
            styleXFRecord5.setLocked(true);
            styleXFRecord5.setCellOptions(62464);
            addStyle(styleXFRecord5);
            StyleXFRecord styleXFRecord6 = new StyleXFRecord(getFonts().getFont(3), NumberFormats.DEFAULT);
            styleXFRecord6.setLocked(true);
            styleXFRecord6.setCellOptions(62464);
            addStyle(styleXFRecord6);
            StyleXFRecord styleXFRecord7 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord7.setLocked(true);
            styleXFRecord7.setCellOptions(62464);
            addStyle(styleXFRecord7);
            StyleXFRecord styleXFRecord8 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord8.setLocked(true);
            styleXFRecord8.setCellOptions(62464);
            addStyle(styleXFRecord8);
            StyleXFRecord styleXFRecord9 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord9.setLocked(true);
            styleXFRecord9.setCellOptions(62464);
            addStyle(styleXFRecord9);
            StyleXFRecord styleXFRecord10 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord10.setLocked(true);
            styleXFRecord10.setCellOptions(62464);
            addStyle(styleXFRecord10);
            StyleXFRecord styleXFRecord11 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord11.setLocked(true);
            styleXFRecord11.setCellOptions(62464);
            addStyle(styleXFRecord11);
            StyleXFRecord styleXFRecord12 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord12.setLocked(true);
            styleXFRecord12.setCellOptions(62464);
            addStyle(styleXFRecord12);
            StyleXFRecord styleXFRecord13 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord13.setLocked(true);
            styleXFRecord13.setCellOptions(62464);
            addStyle(styleXFRecord13);
            StyleXFRecord styleXFRecord14 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord14.setLocked(true);
            styleXFRecord14.setCellOptions(62464);
            addStyle(styleXFRecord14);
            StyleXFRecord styleXFRecord15 = new StyleXFRecord(styles.getArial10Pt(), NumberFormats.DEFAULT);
            styleXFRecord15.setLocked(true);
            styleXFRecord15.setCellOptions(62464);
            addStyle(styleXFRecord15);
            addStyle(styles.getNormalStyle());
            StyleXFRecord styleXFRecord16 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.FORMAT7);
            styleXFRecord16.setLocked(true);
            styleXFRecord16.setCellOptions(63488);
            addStyle(styleXFRecord16);
            StyleXFRecord styleXFRecord17 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.FORMAT5);
            styleXFRecord17.setLocked(true);
            styleXFRecord17.setCellOptions(63488);
            addStyle(styleXFRecord17);
            StyleXFRecord styleXFRecord18 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.FORMAT8);
            styleXFRecord18.setLocked(true);
            styleXFRecord18.setCellOptions(63488);
            addStyle(styleXFRecord18);
            StyleXFRecord styleXFRecord19 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.FORMAT6);
            styleXFRecord19.setLocked(true);
            styleXFRecord19.setCellOptions(63488);
            addStyle(styleXFRecord19);
            StyleXFRecord styleXFRecord20 = new StyleXFRecord(getFonts().getFont(1), NumberFormats.PERCENT_INTEGER);
            styleXFRecord20.setLocked(true);
            styleXFRecord20.setCellOptions(63488);
            addStyle(styleXFRecord20);
        } catch (NumFormatRecordsException e) {
            Assert.verify(false, e.getMessage());
        }
    }
}
