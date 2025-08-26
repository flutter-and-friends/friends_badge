package cn.highlight.core.utils;

import java.io.File;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/* loaded from: classes.dex */
public class ExcelUtils {
    public static final String GBK_ENCODING = "GBK";
    public static final String UTF8_ENCODING = "UTF-8";
    public static WritableFont arial10font;
    public static WritableCellFormat arial10format;
    public static WritableFont arial12font;
    public static WritableCellFormat arial12format;
    public static WritableFont arial14font;
    public static WritableCellFormat arial14format;

    public static void format() {
        try {
            arial14font = new WritableFont(WritableFont.ARIAL, 14, WritableFont.BOLD);
            arial14font.setColour(Colour.LIGHT_BLUE);
            arial14format = new WritableCellFormat(arial14font);
            arial14format.setAlignment(Alignment.CENTRE);
            arial14format.setBorder(Border.ALL, BorderLineStyle.THIN);
            arial14format.setBackground(Colour.VERY_LIGHT_YELLOW);
            arial10font = new WritableFont(WritableFont.ARIAL, 10, WritableFont.BOLD);
            arial10format = new WritableCellFormat(arial10font);
            arial10format.setAlignment(Alignment.CENTRE);
            arial10format.setBorder(Border.ALL, BorderLineStyle.THIN);
            arial10format.setBackground(Colour.LIGHT_BLUE);
            arial12font = new WritableFont(WritableFont.ARIAL, 12);
            arial12format = new WritableCellFormat(arial12font);
            arial12format.setBorder(Border.ALL, BorderLineStyle.THIN);
        } catch (WriteException e) {
            e.printStackTrace();
        }
    }

    public static void initExcel(String str, String[] strArr) {
        format();
        WritableWorkbook writableWorkbookCreateWorkbook = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    writableWorkbookCreateWorkbook = Workbook.createWorkbook(file);
                    WritableSheet writableSheetCreateSheet = writableWorkbookCreateWorkbook.createSheet("盘点数据表", 0);
                    writableSheetCreateSheet.addCell(new Label(0, 0, str, arial14format));
                    for (int i = 0; i < strArr.length; i++) {
                        writableSheetCreateSheet.addCell(new Label(i, 0, strArr[i], arial10format));
                    }
                    writableWorkbookCreateWorkbook.write();
                    if (writableWorkbookCreateWorkbook != null) {
                        writableWorkbookCreateWorkbook.close();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (writableWorkbookCreateWorkbook != null) {
                        writableWorkbookCreateWorkbook.close();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    writableWorkbookCreateWorkbook.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00b9 -> B:55:0x00d3). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> void writeObjListToExcel(java.util.List<T> r11, java.lang.String r12, android.content.Context r13) throws java.lang.Throwable {
        /*
            if (r11 == 0) goto Ld3
            int r0 = r11.size()
            if (r0 <= 0) goto Ld3
            r0 = 0
            jxl.WorkbookSettings r1 = new jxl.WorkbookSettings     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            r1.<init>()     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            java.lang.String r2 = "UTF-8"
            r1.setEncoding(r2)     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            r2.<init>(r12)     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L86 java.lang.Exception -> L89
            jxl.Workbook r2 = jxl.Workbook.getWorkbook(r1)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r3.<init>(r12)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            jxl.write.WritableWorkbook r0 = jxl.Workbook.createWorkbook(r3, r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r2 = 0
            jxl.write.WritableSheet r3 = r0.getSheet(r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r4 = 0
        L30:
            int r5 = r11.size()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            if (r4 >= r5) goto L5b
            java.lang.Object r5 = r11.get(r4)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r6 = 0
        L3d:
            int r7 = r5.size()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            if (r6 >= r7) goto L58
            jxl.write.Label r7 = new jxl.write.Label     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            int r8 = r4 + 1
            java.lang.Object r9 = r5.get(r6)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            jxl.write.WritableCellFormat r10 = cn.highlight.core.utils.ExcelUtils.arial12format     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r7.<init>(r6, r8, r9, r10)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r3.addCell(r7)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            int r6 = r6 + 1
            goto L3d
        L58:
            int r4 = r4 + 1
            goto L30
        L5b:
            r0.write()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r11.<init>()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.lang.String r3 = "导出到手机存储中文件夹成功!"
            r11.append(r3)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r11.append(r12)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            android.widget.Toast r11 = android.widget.Toast.makeText(r13, r11, r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            r11.show()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> Lbd
            if (r0 == 0) goto L80
            r0.close()     // Catch: java.lang.Exception -> L7c
            goto L80
        L7c:
            r11 = move-exception
            r11.printStackTrace()
        L80:
            r1.close()     // Catch: java.io.IOException -> Lb8
            goto Ld3
        L84:
            r11 = move-exception
            goto L8b
        L86:
            r11 = move-exception
            r1 = r0
            goto Lbe
        L89:
            r11 = move-exception
            r1 = r0
        L8b:
            r11.printStackTrace()     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r12 = "EXCEL"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbd
            r13.<init>()     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r2 = "excel导出错误："
            r13.append(r2)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> Lbd
            r13.append(r11)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r11 = r13.toString()     // Catch: java.lang.Throwable -> Lbd
            android.util.Log.e(r12, r11)     // Catch: java.lang.Throwable -> Lbd
            if (r0 == 0) goto Lb2
            r0.close()     // Catch: java.lang.Exception -> Lae
            goto Lb2
        Lae:
            r11 = move-exception
            r11.printStackTrace()
        Lb2:
            if (r1 == 0) goto Ld3
            r1.close()     // Catch: java.io.IOException -> Lb8
            goto Ld3
        Lb8:
            r11 = move-exception
            r11.printStackTrace()
            goto Ld3
        Lbd:
            r11 = move-exception
        Lbe:
            if (r0 == 0) goto Lc8
            r0.close()     // Catch: java.lang.Exception -> Lc4
            goto Lc8
        Lc4:
            r12 = move-exception
            r12.printStackTrace()
        Lc8:
            if (r1 == 0) goto Ld2
            r1.close()     // Catch: java.io.IOException -> Lce
            goto Ld2
        Lce:
            r12 = move-exception
            r12.printStackTrace()
        Ld2:
            throw r11
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.core.utils.ExcelUtils.writeObjListToExcel(java.util.List, java.lang.String, android.content.Context):void");
    }
}
