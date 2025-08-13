package com.apkfuns.logutils;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.apkfuns.logutils.file.LogFileParam;
import com.apkfuns.logutils.utils.ObjectUtil;
import com.apkfuns.logutils.utils.Utils;
import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.MissingFormatArgumentException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class Logger implements Printer {
    private final ThreadLocal<String> localTags = new ThreadLocal<>();
    private LogConfigImpl mLogConfig = LogConfigImpl.getInstance();
    private Log2FileConfigImpl log2FileConfig = Log2FileConfigImpl.getInstance();

    protected Logger() {
        this.mLogConfig.addParserClass(Constant.DEFAULT_PARSE_CLASS);
    }

    public Printer setTag(String str) {
        if (!TextUtils.isEmpty(str) && this.mLogConfig.isEnable()) {
            this.localTags.set(str);
        }
        return this;
    }

    private synchronized void logString(int i, String str, Object... objArr) {
        logString(i, str, false, objArr);
    }

    private void logString(int i, String str, boolean z, Object... objArr) {
        String strGenerateTag = generateTag();
        if (!z) {
            if (objArr.length > 0) {
                try {
                    str = String.format(str, objArr);
                } catch (MissingFormatArgumentException unused) {
                }
            }
            writeToFile(strGenerateTag, str, i);
        }
        if (this.mLogConfig.isEnable() && i >= this.mLogConfig.getLogLevel()) {
            if (str.length() > 3072) {
                if (this.mLogConfig.isShowBorder()) {
                    printLog(i, strGenerateTag, Utils.printDividingLine(1));
                    printLog(i, strGenerateTag, Utils.printDividingLine(3) + getTopStackInfo());
                    printLog(i, strGenerateTag, Utils.printDividingLine(4));
                }
                Iterator<String> it = Utils.largeStringToList(str).iterator();
                while (it.hasNext()) {
                    logString(i, it.next(), true, objArr);
                }
                if (this.mLogConfig.isShowBorder()) {
                    printLog(i, strGenerateTag, Utils.printDividingLine(2));
                    return;
                }
                return;
            }
            if (!this.mLogConfig.isShowBorder()) {
                printLog(i, strGenerateTag, str);
                return;
            }
            int i2 = 0;
            if (z) {
                String[] strArrSplit = str.split(Constant.f303BR);
                int length = strArrSplit.length;
                while (i2 < length) {
                    printLog(i, strGenerateTag, Utils.printDividingLine(3) + strArrSplit[i2]);
                    i2++;
                }
                return;
            }
            printLog(i, strGenerateTag, Utils.printDividingLine(1));
            printLog(i, strGenerateTag, Utils.printDividingLine(3) + getTopStackInfo());
            printLog(i, strGenerateTag, Utils.printDividingLine(4));
            String[] strArrSplit2 = str.split(Constant.f303BR);
            int length2 = strArrSplit2.length;
            while (i2 < length2) {
                printLog(i, strGenerateTag, Utils.printDividingLine(3) + strArrSplit2[i2]);
                i2++;
            }
            printLog(i, strGenerateTag, Utils.printDividingLine(2));
        }
    }

    private void logObject(int i, Object obj) {
        logString(i, ObjectUtil.objectToString(obj), new Object[0]);
    }

    private String generateTag() {
        String str = this.localTags.get();
        if (!TextUtils.isEmpty(str)) {
            this.localTags.remove();
            return str;
        }
        return this.mLogConfig.getTagPrefix();
    }

    private StackTraceElement getCurrentStackTrace() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int stackOffset = getStackOffset(stackTrace, LogUtils.class);
        if (stackOffset == -1 && (stackOffset = getStackOffset(stackTrace, Logger.class)) == -1) {
            return null;
        }
        if (this.mLogConfig.getMethodOffset() > 0) {
            stackOffset += this.mLogConfig.getMethodOffset();
        }
        return stackTrace[stackOffset];
    }

    private String getTopStackInfo() {
        String formatTag = this.mLogConfig.getFormatTag(getCurrentStackTrace());
        if (formatTag != null) {
            return formatTag;
        }
        StackTraceElement currentStackTrace = getCurrentStackTrace();
        String string = currentStackTrace.toString();
        String strSubstring = string.substring(string.lastIndexOf(40), string.length());
        String className = currentStackTrace.getClassName();
        return String.format("%s.%s%s", className.substring(className.lastIndexOf(".") + 1), currentStackTrace.getMethodName(), strSubstring);
    }

    private int getStackOffset(StackTraceElement[] stackTraceElementArr, Class cls) {
        for (int i = 5; i < stackTraceElementArr.length; i++) {
            String className = stackTraceElementArr[i].getClassName();
            if (!(cls.equals(Logger.class) && i < stackTraceElementArr.length - 1 && stackTraceElementArr[i + 1].getClassName().equals(Logger.class.getName())) && className.equals(cls.getName())) {
                return i + 1;
            }
        }
        return -1;
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: d */
    public void mo286d(String str, Object... objArr) {
        logString(2, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: d */
    public void mo285d(Object obj) {
        logObject(2, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: e */
    public void mo288e(String str, Object... objArr) {
        logString(5, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: e */
    public void mo287e(Object obj) {
        logObject(5, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: w */
    public void mo294w(String str, Object... objArr) {
        logString(4, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: w */
    public void mo293w(Object obj) {
        logObject(4, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: i */
    public void mo290i(String str, Object... objArr) {
        logString(3, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: i */
    public void mo289i(Object obj) {
        logObject(3, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: v */
    public void mo292v(String str, Object... objArr) {
        logString(1, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    /* renamed from: v */
    public void mo291v(Object obj) {
        logObject(1, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    public void wtf(String str, Object... objArr) {
        logString(6, str, objArr);
    }

    @Override // com.apkfuns.logutils.Printer
    public void wtf(Object obj) {
        logObject(6, obj);
    }

    @Override // com.apkfuns.logutils.Printer
    public void json(String str) {
        if (TextUtils.isEmpty(str)) {
            mo285d("JSON{json is empty}");
            return;
        }
        try {
            if (str.startsWith("{")) {
                mo285d(new JSONObject(str).toString(4));
            } else if (str.startsWith("[")) {
                mo285d(new JSONArray(str).toString(4));
            }
        } catch (JSONException e) {
            mo287e(e.toString() + "\n\njson = " + str);
        }
    }

    @Override // com.apkfuns.logutils.Printer
    public void xml(String str) {
        if (TextUtils.isEmpty(str)) {
            mo285d("XML{xml is empty}");
            return;
        }
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", ExifInterface.GPS_MEASUREMENT_2D);
            transformerNewTransformer.transform(streamSource, streamResult);
            mo285d(streamResult.getWriter().toString().replaceFirst(">", ">\n"));
        } catch (TransformerException e) {
            mo287e(e.toString() + "\n\nxml = " + str);
        }
    }

    private void printLog(int i, String str, String str2) {
        if (!this.mLogConfig.isShowBorder()) {
            str2 = getTopStackInfo() + ": " + str2;
        }
        switch (i) {
            case 1:
                Log.v(str, str2);
                break;
            case 2:
                Log.d(str, str2);
                break;
            case 3:
                Log.i(str, str2);
                break;
            case 4:
                Log.w(str, str2);
                break;
            case 5:
                Log.e(str, str2);
                break;
            case 6:
                Log.wtf(str, str2);
                break;
        }
    }

    private void writeToFile(String str, String str2, int i) {
        if (this.log2FileConfig.isEnable()) {
            if ((this.log2FileConfig.getFileFilter() == null || this.log2FileConfig.getFileFilter().accept(i, str, str2)) && i >= this.log2FileConfig.getLogLevel()) {
                String logPath = this.log2FileConfig.getLogPath();
                if (TextUtils.isEmpty(logPath)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        Log.e(str, "LogUtils write to logFile error. No sdcard access permission?");
                        return;
                    }
                    throw new IllegalArgumentException("Log2FilePath is an invalid path");
                }
                File file = new File(logPath, this.log2FileConfig.getLogFormatName());
                LogFileParam logFileParam = new LogFileParam(System.currentTimeMillis(), i, Thread.currentThread().getName(), str);
                if (this.log2FileConfig.getEngine() != null) {
                    this.log2FileConfig.getEngine().writeToFile(file, str2, logFileParam);
                    return;
                }
                throw new NullPointerException("LogFileEngine must not Null");
            }
        }
    }
}
