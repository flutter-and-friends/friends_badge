package com.apkfuns.logutils.file;

import java.io.File;

/* loaded from: classes.dex */
public interface LogFileEngine {
    void writeToFile(File file, String str, LogFileParam logFileParam);
}
