package jxl.demo;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import jxl.Workbook;
import jxl.biff.drawing.DrawingGroup;
import jxl.biff.drawing.EscherDisplay;
import jxl.read.biff.WorkbookParser;

/* loaded from: classes2.dex */
public class EscherDrawingGroup {
    public EscherDrawingGroup(Workbook workbook, OutputStream outputStream, String str) throws IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, (str == null || !str.equals("UnicodeBig")) ? "UTF8" : str));
            DrawingGroup drawingGroup = ((WorkbookParser) workbook).getDrawingGroup();
            if (drawingGroup != null) {
                new EscherDisplay(drawingGroup, bufferedWriter).display();
            }
            bufferedWriter.newLine();
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
        }
    }
}
