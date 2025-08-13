package jxl.demo;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import jxl.Cell;
import jxl.CellFeatures;
import jxl.CellReferenceHelper;
import jxl.Sheet;
import jxl.Workbook;

/* loaded from: classes2.dex */
public class Features {
    public Features(Workbook workbook, OutputStream outputStream, String str) throws IndexOutOfBoundsException, IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, (str == null || !str.equals("UnicodeBig")) ? "UTF8" : str));
            for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
                Sheet sheet = workbook.getSheet(i);
                bufferedWriter.write(sheet.getName());
                bufferedWriter.newLine();
                for (int i2 = 0; i2 < sheet.getRows(); i2++) {
                    for (Cell cell : sheet.getRow(i2)) {
                        if (cell.getCellFeatures() != null) {
                            CellFeatures cellFeatures = cell.getCellFeatures();
                            StringBuffer stringBuffer = new StringBuffer();
                            CellReferenceHelper.getCellReference(cell.getColumn(), cell.getRow(), stringBuffer);
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Cell ");
                            stringBuffer2.append(stringBuffer.toString());
                            stringBuffer2.append(" contents:  ");
                            stringBuffer2.append(cell.getContents());
                            bufferedWriter.write(stringBuffer2.toString());
                            bufferedWriter.flush();
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append(" comment: ");
                            stringBuffer3.append(cellFeatures.getComment());
                            bufferedWriter.write(stringBuffer3.toString());
                            bufferedWriter.flush();
                            bufferedWriter.newLine();
                        }
                    }
                }
            }
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
        }
    }
}
