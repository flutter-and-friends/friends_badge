package cn.highlight.core.utils;

import android.os.Environment;
import android.util.Log;
import cn.highlight.core.utils.file.FileUtil;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class LogText {
    public static String Path = Environment.getExternalStorageDirectory().getAbsolutePath() + "/PTG_PDA_Log/";

    public static void writeLog(final String str) {
        new Thread(new Runnable() { // from class: cn.highlight.core.utils.-$$Lambda$LogText$SZ23o6j7xgRS-Juro_uyOrTH8-Q
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                LogText.lambda$writeLog$0(str);
            }
        }).start();
    }

    static /* synthetic */ void lambda$writeLog$0(String str) throws IOException {
        String str2 = "[" + getStringDate2() + "] " + str;
        String str3 = Path + getStringDate() + "/";
        try {
            isHavePath(str3);
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(str3 + "log.txt"), true)));
            bufferedWriter.write(str2 + "  \n");
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void isHavePath(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private static String getStringDate() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    private static String getStringDate2() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date());
    }

    public static String readTxtFile(String str) throws IOException {
        File file = new File(str);
        String str2 = "";
        if (file.isDirectory()) {
            Log.d("TestFile", "The File doesn't not exist.");
            return "";
        }
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                String str3 = "";
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            str3 = str3 + line + "\n";
                        } else {
                            fileInputStream.close();
                            return str3;
                        }
                    } catch (FileNotFoundException unused) {
                        str2 = str3;
                        Log.d("TestFile", "The File doesn't not exist.");
                        return str2;
                    }
                }
            } catch (IOException e) {
                Log.d("TestFile", e.getMessage());
                return "";
            }
        } catch (FileNotFoundException unused2) {
        }
    }

    public static void deleteOverdueLog() {
        new Thread(new Runnable() { // from class: cn.highlight.core.utils.-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY
            @Override // java.lang.Runnable
            public final void run() {
                LogText.lambda$deleteOverdueLog$1();
            }
        }).start();
    }

    static /* synthetic */ void lambda$deleteOverdueLog$1() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            LogManage.m30e("当前时间(毫秒)：" + jCurrentTimeMillis);
            File file = new File(Path);
            if (!file.exists()) {
                LogManage.m30e("需删除的文件夹不存在---");
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                try {
                    String name = file2.getName();
                    LogManage.m30e("文件名：" + name);
                    long time = new SimpleDateFormat("yyyy-MM-dd").parse(name).getTime();
                    LogManage.m30e("文件时间(毫秒)：" + time);
                    if (jCurrentTimeMillis - time > 604800000) {
                        LogManage.m30e("执行删除的文件：" + file2.getAbsolutePath());
                        FileUtil.deleteFile(file2);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
