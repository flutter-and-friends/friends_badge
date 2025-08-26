package com.apkfuns.logutils.file;

/* loaded from: classes.dex */
public class LogFileParam {
    private int logLevel;
    private String tagName;
    private String threadName;
    private long time;

    public LogFileParam(long j, int i, String str, String str2) {
        this.time = j;
        this.logLevel = i;
        this.threadName = str;
        this.tagName = str2;
    }

    public long getTime() {
        return this.time;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public String getThreadName() {
        return this.threadName;
    }

    public String getTagName() {
        return this.tagName;
    }
}
