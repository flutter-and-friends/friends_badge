package jxl.demo;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import jxl.Workbook;
import jxl.biff.drawing.DrawingData;
import jxl.biff.drawing.EscherDisplay;
import jxl.read.biff.SheetImpl;

/* loaded from: classes2.dex */
public class Escher {
    public Escher(Workbook workbook, OutputStream outputStream, String str) throws IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, (str == null || !str.equals("UnicodeBig")) ? "UTF8" : str));
            for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
                SheetImpl sheetImpl = (SheetImpl) workbook.getSheet(i);
                bufferedWriter.write(sheetImpl.getName());
                bufferedWriter.newLine();
                bufferedWriter.newLine();
                DrawingData drawingData = sheetImpl.getDrawingData();
                if (drawingData != null) {
                    new EscherDisplay(drawingData, bufferedWriter).display();
                }
                bufferedWriter.newLine();
                bufferedWriter.newLine();
                bufferedWriter.flush();
            }
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
        }
    }
}
