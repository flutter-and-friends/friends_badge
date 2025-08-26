package jxl.demo;

import common.Logger;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import jxl.CellType;
import jxl.Workbook;
import jxl.format.Colour;
import jxl.format.UnderlineStyle;
import jxl.read.biff.BiffException;
import jxl.write.Blank;
import jxl.write.DateFormat;
import jxl.write.DateFormats;
import jxl.write.DateTime;
import jxl.write.Formula;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.NumberFormat;
import jxl.write.WritableCell;
import jxl.write.WritableCellFeatures;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableHyperlink;
import jxl.write.WritableImage;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
public class ReadWrite {
    static /* synthetic */ Class class$jxl$demo$ReadWrite;
    private static Logger logger;
    private File inputWorkbook;
    private File outputWorkbook;

    static {
        Class clsClass$ = class$jxl$demo$ReadWrite;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.demo.ReadWrite");
            class$jxl$demo$ReadWrite = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public ReadWrite(String str, String str2) {
        this.inputWorkbook = new File(str);
        this.outputWorkbook = new File(str2);
        logger.setSuppressWarnings(Boolean.getBoolean("jxl.nowarnings"));
        Logger logger2 = logger;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Input file:  ");
        stringBuffer.append(str);
        logger2.info(stringBuffer.toString());
        Logger logger3 = logger;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Output file:  ");
        stringBuffer2.append(str2);
        logger3.info(stringBuffer2.toString());
    }

    public void readWrite() throws WriteException, BiffException, IOException {
        logger.info("Reading...");
        Workbook workbook = Workbook.getWorkbook(this.inputWorkbook);
        logger.info("Copying...");
        WritableWorkbook writableWorkbookCreateWorkbook = Workbook.createWorkbook(this.outputWorkbook, workbook);
        if (this.inputWorkbook.getName().equals("jxlrwtest.xls")) {
            modify(writableWorkbookCreateWorkbook);
        }
        writableWorkbookCreateWorkbook.write();
        writableWorkbookCreateWorkbook.close();
        logger.info("Done");
    }

    private void modify(WritableWorkbook writableWorkbook) throws WriteException {
        logger.info("Modifying...");
        WritableSheet sheet = writableWorkbook.getSheet("modified");
        sheet.getWritableCell(1, 3).setCellFormat(new WritableCellFormat(new WritableFont(WritableFont.ARIAL, 10, WritableFont.BOLD)));
        sheet.getWritableCell(1, 4).setCellFormat(new WritableCellFormat(new WritableFont(WritableFont.ARIAL, 10, WritableFont.NO_BOLD, false, UnderlineStyle.SINGLE)));
        sheet.getWritableCell(1, 5).setCellFormat(new WritableCellFormat(new WritableFont(WritableFont.ARIAL, 10)));
        WritableCell writableCell = sheet.getWritableCell(1, 6);
        if (writableCell.getType() == CellType.LABEL) {
            Label label = (Label) writableCell;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(label.getString());
            stringBuffer.append(" - mod");
            label.setString(stringBuffer.toString());
        }
        sheet.getWritableCell(1, 9).setCellFormat(new WritableCellFormat(new NumberFormat("#.0000000")));
        sheet.getWritableCell(1, 10).setCellFormat(new WritableCellFormat(new NumberFormat("0.####E0")));
        sheet.getWritableCell(1, 11).setCellFormat(WritableWorkbook.NORMAL_STYLE);
        WritableCell writableCell2 = sheet.getWritableCell(1, 12);
        if (writableCell2.getType() == CellType.NUMBER) {
            ((Number) writableCell2).setValue(42.0d);
        }
        WritableCell writableCell3 = sheet.getWritableCell(1, 13);
        if (writableCell3.getType() == CellType.NUMBER) {
            Number number = (Number) writableCell3;
            number.setValue(number.getValue() + 0.1d);
        }
        sheet.getWritableCell(1, 16).setCellFormat(new WritableCellFormat(new DateFormat("dd MMM yyyy HH:mm:ss")));
        WritableCell writableCell4 = sheet.getWritableCell(1, 17);
        WritableCellFormat writableCellFormat = new WritableCellFormat(DateFormats.FORMAT9);
        writableCell4.setCellFormat(writableCellFormat);
        WritableCell writableCell5 = sheet.getWritableCell(1, 18);
        if (writableCell5.getType() == CellType.DATE) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1998, 1, 18, 11, 23, 28);
            ((DateTime) writableCell5).setDate(calendar.getTime());
        }
        WritableCell writableCell6 = sheet.getWritableCell(1, 22);
        if (writableCell6.getType() == CellType.NUMBER) {
            ((Number) writableCell6).setValue(6.8d);
        }
        WritableCell writableCell7 = sheet.getWritableCell(1, 29);
        if (writableCell7.getType() == CellType.LABEL) {
            ((Label) writableCell7).setString("Modified string contents");
        }
        sheet.insertRow(34);
        sheet.removeRow(38);
        sheet.insertColumn(9);
        sheet.removeColumn(11);
        sheet.removeRow(43);
        sheet.insertRow(43);
        for (WritableHyperlink writableHyperlink : sheet.getWritableHyperlinks()) {
            if (writableHyperlink.getColumn() == 1 && writableHyperlink.getRow() == 39) {
                try {
                    writableHyperlink.setURL(new URL("http://www.andykhan.com/jexcelapi/index.html"));
                } catch (MalformedURLException e) {
                    logger.warn(e.toString());
                }
            } else if (writableHyperlink.getColumn() == 1 && writableHyperlink.getRow() == 40) {
                writableHyperlink.setFile(new File("../jexcelapi/docs/overview-summary.html"));
            } else if (writableHyperlink.getColumn() == 1 && writableHyperlink.getRow() == 41) {
                writableHyperlink.setFile(new File("d:/home/jexcelapi/docs/jxl/package-summary.html"));
            } else if (writableHyperlink.getColumn() == 1 && writableHyperlink.getRow() == 44) {
                sheet.removeHyperlink(writableHyperlink);
            }
        }
        WritableCell writableCell8 = sheet.getWritableCell(5, 30);
        WritableCellFormat writableCellFormat2 = new WritableCellFormat(writableCell8.getCellFormat());
        writableCellFormat2.setBackground(Colour.RED);
        writableCell8.setCellFormat(writableCellFormat2);
        sheet.addCell(new Label(0, 49, "Modified merged cells"));
        ((Number) sheet.getWritableCell(0, 70)).setValue(9.0d);
        ((Number) sheet.getWritableCell(0, 71)).setValue(10.0d);
        ((Number) sheet.getWritableCell(0, 73)).setValue(4.0d);
        sheet.addCell(new Formula(1, 80, "ROUND(COS(original!B10),2)"));
        sheet.addCell(new Formula(1, 83, "value1+value2"));
        sheet.addCell(new Formula(1, 84, "AVERAGE(value1,value1*4,value2)"));
        sheet.addCell(new Label(0, 88, "Some copied cells", writableCellFormat));
        sheet.addCell(new Label(0, 89, "Number from B9"));
        sheet.addCell(sheet.getWritableCell(1, 9).copyTo(1, 89));
        sheet.addCell(new Label(0, 90, "Label from B4 (modified format)"));
        sheet.addCell(sheet.getWritableCell(1, 3).copyTo(1, 90));
        sheet.addCell(new Label(0, 91, "Date from B17"));
        sheet.addCell(sheet.getWritableCell(1, 16).copyTo(1, 91));
        sheet.addCell(new Label(0, 92, "Boolean from E16"));
        sheet.addCell(sheet.getWritableCell(4, 15).copyTo(1, 92));
        sheet.addCell(new Label(0, 93, "URL from B40"));
        sheet.addCell(sheet.getWritableCell(1, 39).copyTo(1, 93));
        int i = 0;
        while (i < 6) {
            int i2 = i + 1;
            sheet.addCell(new Number(1, i + 94, i2 + (i / 8.0d)));
            i = i2;
        }
        sheet.addCell(new Label(0, 100, "Formula from B27"));
        sheet.addCell(sheet.getWritableCell(1, 26).copyTo(1, 100));
        sheet.addCell(new Label(0, 101, "A brand new formula"));
        sheet.addCell(new Formula(1, 101, "SUM(B94:B96)"));
        sheet.addCell(new Label(0, 102, "A copy of it"));
        sheet.addCell(sheet.getWritableCell(1, 101).copyTo(1, 102));
        sheet.removeImage(sheet.getImage(1));
        sheet.addImage(new WritableImage(1.0d, 116.0d, 2.0d, 9.0d, new File("resources/littlemoretonhall.png")));
        sheet.addCell(new Label(0, 151, "Added drop down validation"));
        WritableCell blank = new Blank(1, 151);
        WritableCellFeatures writableCellFeatures = new WritableCellFeatures();
        ArrayList arrayList = new ArrayList();
        arrayList.add("The Fellowship of the Ring");
        arrayList.add("The Two Towers");
        arrayList.add("The Return of the King");
        writableCellFeatures.setDataValidationList(arrayList);
        blank.setCellFeatures(writableCellFeatures);
        sheet.addCell(blank);
        sheet.addCell(new Label(0, 152, "Added number validation 2.718 < x < 3.142"));
        Blank blank2 = new Blank(1, 152);
        WritableCellFeatures writableCellFeatures2 = new WritableCellFeatures();
        writableCellFeatures2.setNumberValidation(2.718d, 3.142d, WritableCellFeatures.BETWEEN);
        blank2.setCellFeatures(writableCellFeatures2);
        sheet.addCell(blank2);
        ((Label) sheet.getWritableCell(0, 156)).setString("Label text modified");
        sheet.getWritableCell(0, 157).getWritableCellFeatures().setComment("modified comment text");
        sheet.getWritableCell(0, 158).getWritableCellFeatures().removeComment();
    }
}
