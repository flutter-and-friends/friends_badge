package com.apkfuns.logutils;

import android.os.Environment;
import android.text.TextUtils;
import com.apkfuns.logutils.file.LogFileEngine;
import com.apkfuns.logutils.file.LogFileFilter;
import com.apkfuns.logutils.pattern.LogPattern;
import java.io.File;

/* loaded from: classes.dex */
class Log2FileConfigImpl implements Log2FileConfig {
    public static final String DEFAULT_LOG_NAME_FORMAT = "%d{yyyyMMdd}.txt";
    private static Log2FileConfigImpl singleton;
    private LogFileEngine engine;
    private LogFileFilter fileFilter;
    private String logPath;
    private int logLevel = 1;
    private boolean enable = false;
    private String logFormatName = DEFAULT_LOG_NAME_FORMAT;

    Log2FileConfigImpl() {
    }

    public static Log2FileConfigImpl getInstance() {
        if (singleton == null) {
            synchronized (Log2FileConfigImpl.class) {
                if (singleton == null) {
                    singleton = new Log2FileConfigImpl();
                }
            }
        }
        return singleton;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLog2FileEnable(boolean z) {
        this.enable = z;
        return this;
    }

    public boolean isEnable() {
        return this.enable;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLog2FilePath(String str) {
        this.logPath = str;
        return this;
    }

    public String getLogPath() {
        if (TextUtils.isEmpty(this.logPath)) {
            return getDefaultPath();
        }
        File file = new File(this.logPath);
        if (file.exists() && file.isDirectory()) {
            return this.logPath;
        }
        if (file.isFile() && file.getParentFile() != null) {
            if (file.getParentFile().exists()) {
                return file.getParent();
            }
            if (file.getParentFile().mkdirs()) {
                return file.getParent();
            }
        }
        if (file.mkdirs()) {
            return this.logPath;
        }
        return null;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLog2FileNameFormat(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.logFormatName = str;
        }
        return this;
    }

    public String getLogFormatName() {
        return new LogPattern.Log2FileNamePattern(this.logFormatName).doApply();
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLog2FileLevel(int i) {
        this.logLevel = i;
        return this;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLogFileEngine(LogFileEngine logFileEngine) {
        this.engine = logFileEngine;
        return this;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public Log2FileConfig configLogFileFilter(LogFileFilter logFileFilter) {
        this.fileFilter = logFileFilter;
        return this;
    }

    @Override // com.apkfuns.logutils.Log2FileConfig
    public File getLogFile() {
        String logPath = getLogPath();
        if (TextUtils.isEmpty(logPath)) {
            return null;
        }
        return new File(logPath, getLogFormatName());
    }

    public LogFileFilter getFileFilter() {
        return this.fileFilter;
    }

    public LogFileEngine getEngine() {
        return this.engine;
    }

    public String getDefaultPath() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return (Environment.getExternalStorageDirectory() + File.separator) + Constant.TAG + File.separator + "logs";
        }
        throw new IllegalStateException("Sdcard No Access, please config Log2FilePath");
    }
}
