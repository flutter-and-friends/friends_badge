package jxl.demo;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import jxl.Cell;
import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.CellFormat;
import jxl.format.Colour;
import jxl.format.Font;
import jxl.format.Pattern;

/* loaded from: classes2.dex */
public class XML {
    private String encoding;
    private OutputStream out;
    private Workbook workbook;

    public XML(Workbook workbook, OutputStream outputStream, String str, boolean z) throws IndexOutOfBoundsException, IOException {
        this.encoding = str;
        this.workbook = workbook;
        this.out = outputStream;
        String str2 = this.encoding;
        if (str2 == null || !str2.equals("UnicodeBig")) {
            this.encoding = "UTF8";
        }
        if (z) {
            writeFormattedXML();
        } else {
            writeXML();
        }
    }

    private void writeXML() throws IndexOutOfBoundsException, IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.out, this.encoding));
            bufferedWriter.write("<?xml version=\"1.0\" ?>");
            bufferedWriter.newLine();
            bufferedWriter.write("<!DOCTYPE workbook SYSTEM \"workbook.dtd\">");
            bufferedWriter.newLine();
            bufferedWriter.newLine();
            bufferedWriter.write("<workbook>");
            bufferedWriter.newLine();
            for (int i = 0; i < this.workbook.getNumberOfSheets(); i++) {
                Sheet sheet = this.workbook.getSheet(i);
                bufferedWriter.write("  <sheet>");
                bufferedWriter.newLine();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("    <name><![CDATA[");
                stringBuffer.append(sheet.getName());
                stringBuffer.append("]]></name>");
                bufferedWriter.write(stringBuffer.toString());
                bufferedWriter.newLine();
                for (int i2 = 0; i2 < sheet.getRows(); i2++) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("    <row number=\"");
                    stringBuffer2.append(i2);
                    stringBuffer2.append("\">");
                    bufferedWriter.write(stringBuffer2.toString());
                    bufferedWriter.newLine();
                    Cell[] row = sheet.getRow(i2);
                    for (int i3 = 0; i3 < row.length; i3++) {
                        if (row[i3].getType() != CellType.EMPTY) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("      <col number=\"");
                            stringBuffer3.append(i3);
                            stringBuffer3.append("\">");
                            bufferedWriter.write(stringBuffer3.toString());
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append("<![CDATA[");
                            stringBuffer4.append(row[i3].getContents());
                            stringBuffer4.append("]]>");
                            bufferedWriter.write(stringBuffer4.toString());
                            bufferedWriter.write("</col>");
                            bufferedWriter.newLine();
                        }
                    }
                    bufferedWriter.write("    </row>");
                    bufferedWriter.newLine();
                }
                bufferedWriter.write("  </sheet>");
                bufferedWriter.newLine();
            }
            bufferedWriter.write("</workbook>");
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
        }
    }

    private void writeFormattedXML() throws IndexOutOfBoundsException, IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.out, this.encoding));
            bufferedWriter.write("<?xml version=\"1.0\" ?>");
            bufferedWriter.newLine();
            bufferedWriter.write("<!DOCTYPE workbook SYSTEM \"formatworkbook.dtd\">");
            bufferedWriter.newLine();
            bufferedWriter.newLine();
            bufferedWriter.write("<workbook>");
            bufferedWriter.newLine();
            for (int i = 0; i < this.workbook.getNumberOfSheets(); i++) {
                Sheet sheet = this.workbook.getSheet(i);
                bufferedWriter.write("  <sheet>");
                bufferedWriter.newLine();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("    <name><![CDATA[");
                stringBuffer.append(sheet.getName());
                stringBuffer.append("]]></name>");
                bufferedWriter.write(stringBuffer.toString());
                bufferedWriter.newLine();
                for (int i2 = 0; i2 < sheet.getRows(); i2++) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("    <row number=\"");
                    stringBuffer2.append(i2);
                    stringBuffer2.append("\">");
                    bufferedWriter.write(stringBuffer2.toString());
                    bufferedWriter.newLine();
                    Cell[] row = sheet.getRow(i2);
                    for (int i3 = 0; i3 < row.length; i3++) {
                        if (row[i3].getType() != CellType.EMPTY || row[i3].getCellFormat() != null) {
                            CellFormat cellFormat = row[i3].getCellFormat();
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("      <col number=\"");
                            stringBuffer3.append(i3);
                            stringBuffer3.append("\">");
                            bufferedWriter.write(stringBuffer3.toString());
                            bufferedWriter.newLine();
                            bufferedWriter.write("        <data>");
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append("<![CDATA[");
                            stringBuffer4.append(row[i3].getContents());
                            stringBuffer4.append("]]>");
                            bufferedWriter.write(stringBuffer4.toString());
                            bufferedWriter.write("</data>");
                            bufferedWriter.newLine();
                            if (row[i3].getCellFormat() != null) {
                                StringBuffer stringBuffer5 = new StringBuffer();
                                stringBuffer5.append("        <format wrap=\"");
                                stringBuffer5.append(cellFormat.getWrap());
                                stringBuffer5.append("\"");
                                bufferedWriter.write(stringBuffer5.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer6 = new StringBuffer();
                                stringBuffer6.append("                align=\"");
                                stringBuffer6.append(cellFormat.getAlignment().getDescription());
                                stringBuffer6.append("\"");
                                bufferedWriter.write(stringBuffer6.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer7 = new StringBuffer();
                                stringBuffer7.append("                valign=\"");
                                stringBuffer7.append(cellFormat.getVerticalAlignment().getDescription());
                                stringBuffer7.append("\"");
                                bufferedWriter.write(stringBuffer7.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer8 = new StringBuffer();
                                stringBuffer8.append("                orientation=\"");
                                stringBuffer8.append(cellFormat.getOrientation().getDescription());
                                stringBuffer8.append("\"");
                                bufferedWriter.write(stringBuffer8.toString());
                                bufferedWriter.write(">");
                                bufferedWriter.newLine();
                                Font font = cellFormat.getFont();
                                StringBuffer stringBuffer9 = new StringBuffer();
                                stringBuffer9.append("          <font name=\"");
                                stringBuffer9.append(font.getName());
                                stringBuffer9.append("\"");
                                bufferedWriter.write(stringBuffer9.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer10 = new StringBuffer();
                                stringBuffer10.append("                point_size=\"");
                                stringBuffer10.append(font.getPointSize());
                                stringBuffer10.append("\"");
                                bufferedWriter.write(stringBuffer10.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer11 = new StringBuffer();
                                stringBuffer11.append("                bold_weight=\"");
                                stringBuffer11.append(font.getBoldWeight());
                                stringBuffer11.append("\"");
                                bufferedWriter.write(stringBuffer11.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer12 = new StringBuffer();
                                stringBuffer12.append("                italic=\"");
                                stringBuffer12.append(font.isItalic());
                                stringBuffer12.append("\"");
                                bufferedWriter.write(stringBuffer12.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer13 = new StringBuffer();
                                stringBuffer13.append("                underline=\"");
                                stringBuffer13.append(font.getUnderlineStyle().getDescription());
                                stringBuffer13.append("\"");
                                bufferedWriter.write(stringBuffer13.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer14 = new StringBuffer();
                                stringBuffer14.append("                colour=\"");
                                stringBuffer14.append(font.getColour().getDescription());
                                stringBuffer14.append("\"");
                                bufferedWriter.write(stringBuffer14.toString());
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer15 = new StringBuffer();
                                stringBuffer15.append("                script=\"");
                                stringBuffer15.append(font.getScriptStyle().getDescription());
                                stringBuffer15.append("\"");
                                bufferedWriter.write(stringBuffer15.toString());
                                bufferedWriter.write(" />");
                                bufferedWriter.newLine();
                                if (cellFormat.getBackgroundColour() != Colour.DEFAULT_BACKGROUND || cellFormat.getPattern() != Pattern.NONE) {
                                    StringBuffer stringBuffer16 = new StringBuffer();
                                    stringBuffer16.append("          <background colour=\"");
                                    stringBuffer16.append(cellFormat.getBackgroundColour().getDescription());
                                    stringBuffer16.append("\"");
                                    bufferedWriter.write(stringBuffer16.toString());
                                    bufferedWriter.newLine();
                                    StringBuffer stringBuffer17 = new StringBuffer();
                                    stringBuffer17.append("                      pattern=\"");
                                    stringBuffer17.append(cellFormat.getPattern().getDescription());
                                    stringBuffer17.append("\"");
                                    bufferedWriter.write(stringBuffer17.toString());
                                    bufferedWriter.write(" />");
                                    bufferedWriter.newLine();
                                }
                                if (cellFormat.getBorder(Border.TOP) != BorderLineStyle.NONE || cellFormat.getBorder(Border.BOTTOM) != BorderLineStyle.NONE || cellFormat.getBorder(Border.LEFT) != BorderLineStyle.NONE || cellFormat.getBorder(Border.RIGHT) != BorderLineStyle.NONE) {
                                    StringBuffer stringBuffer18 = new StringBuffer();
                                    stringBuffer18.append("          <border top=\"");
                                    stringBuffer18.append(cellFormat.getBorder(Border.TOP).getDescription());
                                    stringBuffer18.append("\"");
                                    bufferedWriter.write(stringBuffer18.toString());
                                    bufferedWriter.newLine();
                                    StringBuffer stringBuffer19 = new StringBuffer();
                                    stringBuffer19.append("                  bottom=\"");
                                    stringBuffer19.append(cellFormat.getBorder(Border.BOTTOM).getDescription());
                                    stringBuffer19.append("\"");
                                    bufferedWriter.write(stringBuffer19.toString());
                                    bufferedWriter.newLine();
                                    StringBuffer stringBuffer20 = new StringBuffer();
                                    stringBuffer20.append("                  left=\"");
                                    stringBuffer20.append(cellFormat.getBorder(Border.LEFT).getDescription());
                                    stringBuffer20.append("\"");
                                    bufferedWriter.write(stringBuffer20.toString());
                                    bufferedWriter.newLine();
                                    StringBuffer stringBuffer21 = new StringBuffer();
                                    stringBuffer21.append("                  right=\"");
                                    stringBuffer21.append(cellFormat.getBorder(Border.RIGHT).getDescription());
                                    stringBuffer21.append("\"");
                                    bufferedWriter.write(stringBuffer21.toString());
                                    bufferedWriter.write(" />");
                                    bufferedWriter.newLine();
                                }
                                if (!cellFormat.getFormat().getFormatString().equals("")) {
                                    bufferedWriter.write("          <format_string string=\"");
                                    bufferedWriter.write(cellFormat.getFormat().getFormatString());
                                    bufferedWriter.write("\" />");
                                    bufferedWriter.newLine();
                                }
                                bufferedWriter.write("        </format>");
                                bufferedWriter.newLine();
                            }
                            bufferedWriter.write("      </col>");
                            bufferedWriter.newLine();
                        }
                    }
                    bufferedWriter.write("    </row>");
                    bufferedWriter.newLine();
                }
                bufferedWriter.write("  </sheet>");
                bufferedWriter.newLine();
            }
            bufferedWriter.write("</workbook>");
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
        }
    }
}
