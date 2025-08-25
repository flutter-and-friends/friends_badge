package cn.highlight.core.utils;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jxl.Workbook;
import jxl.WorkbookSettings;
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
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                if (writableWorkbookCreateWorkbook != null) {
                    writableWorkbookCreateWorkbook.close();
                }
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
    */
    public static <T> void writeObjListToExcel(List<T> list, String str, Context context) throws Throwable {
        FileInputStream fileInputStream;
        if (list == null || list.size() <= 0) {
            return;
        }
        WritableWorkbook writableWorkbookCreateWorkbook = null;
        try {
            try {
                new WorkbookSettings().setEncoding("UTF-8");
                fileInputStream = new FileInputStream(new File(str));
                try {
                    try {
                        writableWorkbookCreateWorkbook = Workbook.createWorkbook(new File(str), Workbook.getWorkbook(fileInputStream));
                        WritableSheet sheet = writableWorkbookCreateWorkbook.getSheet(0);
                        for (int i = 0; i < list.size(); i++) {
                            ArrayList arrayList = (ArrayList) list.get(i);
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                sheet.addCell(new Label(i2, i + 1, (String) arrayList.get(i2), arial12format));
                            }
                        }
                        writableWorkbookCreateWorkbook.write();
                        Toast.makeText(context, "导出到手机存储中文件夹成功!" + str, 0).show();
                        if (writableWorkbookCreateWorkbook != null) {
                            try {
                                writableWorkbookCreateWorkbook.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        fileInputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        Log.e("EXCEL", "excel导出错误：" + e.getMessage());
                        if (writableWorkbookCreateWorkbook != null) {
                            try {
                                writableWorkbookCreateWorkbook.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (writableWorkbookCreateWorkbook != null) {
                        try {
                            writableWorkbookCreateWorkbook.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (fileInputStream == null) {
                        try {
                            fileInputStream.close();
                            throw th;
                        } catch (IOException e5) {
                            e5.printStackTrace();
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e6.printStackTrace();
            }
        } catch (Exception e7) {
            e = e7;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            if (writableWorkbookCreateWorkbook != null) {
            }
            if (fileInputStream == null) {
            }
        }
    }
}
