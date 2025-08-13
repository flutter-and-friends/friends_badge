package jxl.demo;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import jxl.Cell;
import jxl.CellType;
import jxl.FormulaCell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.biff.CellReferenceHelper;
import jxl.biff.formula.FormulaException;

/* loaded from: classes2.dex */
public class Formulas {
    public Formulas(Workbook workbook, OutputStream outputStream, String str) throws IndexOutOfBoundsException, IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, (str == null || !str.equals("UnicodeBig")) ? "UTF8" : str));
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
                Sheet sheet = workbook.getSheet(i);
                bufferedWriter.write(sheet.getName());
                bufferedWriter.newLine();
                for (int i2 = 0; i2 < sheet.getRows(); i2++) {
                    for (Cell cell : sheet.getRow(i2)) {
                        if (cell.getType() == CellType.NUMBER_FORMULA || cell.getType() == CellType.STRING_FORMULA || cell.getType() == CellType.BOOLEAN_FORMULA || cell.getType() == CellType.DATE_FORMULA || cell.getType() == CellType.FORMULA_ERROR) {
                            FormulaCell formulaCell = (FormulaCell) cell;
                            StringBuffer stringBuffer = new StringBuffer();
                            CellReferenceHelper.getCellReference(cell.getColumn(), cell.getRow(), stringBuffer);
                            try {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("Formula in ");
                                stringBuffer2.append(stringBuffer.toString());
                                stringBuffer2.append(" value:  ");
                                stringBuffer2.append(cell.getContents());
                                bufferedWriter.write(stringBuffer2.toString());
                                bufferedWriter.flush();
                                StringBuffer stringBuffer3 = new StringBuffer();
                                stringBuffer3.append(" formula: ");
                                stringBuffer3.append(formulaCell.getFormula());
                                bufferedWriter.write(stringBuffer3.toString());
                                bufferedWriter.flush();
                                bufferedWriter.newLine();
                            } catch (FormulaException e) {
                                bufferedWriter.newLine();
                                StringBuffer stringBuffer4 = new StringBuffer();
                                stringBuffer4.append(sheet.getName());
                                stringBuffer4.append('!');
                                stringBuffer4.append(stringBuffer.toString());
                                stringBuffer4.append(": ");
                                stringBuffer4.append(e.getMessage());
                                arrayList.add(stringBuffer4.toString());
                            }
                        }
                    }
                }
            }
            bufferedWriter.flush();
            bufferedWriter.close();
            if (arrayList.size() > 0) {
                System.err.println();
                PrintStream printStream = System.err;
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("There were ");
                stringBuffer5.append(arrayList.size());
                stringBuffer5.append(" errors");
                printStream.println(stringBuffer5.toString());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    System.err.println(it.next());
                }
            }
        } catch (UnsupportedEncodingException e2) {
            System.err.println(e2.toString());
        }
    }
}
