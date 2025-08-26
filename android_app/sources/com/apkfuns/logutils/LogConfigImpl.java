package com.apkfuns.logutils;

import android.text.TextUtils;
import com.apkfuns.logutils.pattern.LogPattern;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class LogConfigImpl implements LogConfig {
    private static LogConfigImpl singleton;
    private String formatTag;
    private String tagPrefix;
    private boolean enable = true;
    private boolean showBorder = true;
    private int logLevel = 1;
    private int methodOffset = 0;
    private List<Parser> parseList = new ArrayList();

    private LogConfigImpl() {
    }

    static LogConfigImpl getInstance() {
        if (singleton == null) {
            synchronized (LogConfigImpl.class) {
                if (singleton == null) {
                    singleton = new LogConfigImpl();
                }
            }
        }
        return singleton;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configAllowLog(boolean z) {
        this.enable = z;
        return this;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configTagPrefix(String str) {
        this.tagPrefix = str;
        return this;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configFormatTag(String str) {
        this.formatTag = str;
        return this;
    }

    public String getFormatTag(StackTraceElement stackTraceElement) {
        if (TextUtils.isEmpty(this.formatTag)) {
            return null;
        }
        return LogPattern.compile(this.formatTag).apply(stackTraceElement);
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configShowBorders(boolean z) {
        this.showBorder = z;
        return this;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configMethodOffset(int i) {
        this.methodOffset = i;
        return this;
    }

    public int getMethodOffset() {
        return this.methodOffset;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig configLevel(int i) {
        this.logLevel = i;
        return this;
    }

    @Override // com.apkfuns.logutils.LogConfig
    public LogConfig addParserClass(Class<? extends Parser>... clsArr) {
        for (Class<? extends Parser> cls : clsArr) {
            try {
                this.parseList.add(0, cls.newInstance());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public String getTagPrefix() {
        return TextUtils.isEmpty(this.tagPrefix) ? Constant.TAG : this.tagPrefix;
    }

    public boolean isShowBorder() {
        return this.showBorder;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public List<Parser> getParseList() {
        return this.parseList;
    }
}
