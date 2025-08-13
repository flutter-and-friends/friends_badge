package com.apkfuns.logutils;

import com.apkfuns.logutils.file.LogFileEngine;
import com.apkfuns.logutils.file.LogFileFilter;
import java.io.File;

/* loaded from: classes.dex */
public interface Log2FileConfig {
    Log2FileConfig configLog2FileEnable(boolean z);

    Log2FileConfig configLog2FileLevel(int i);

    Log2FileConfig configLog2FileNameFormat(String str);

    Log2FileConfig configLog2FilePath(String str);

    Log2FileConfig configLogFileEngine(LogFileEngine logFileEngine);

    Log2FileConfig configLogFileFilter(LogFileFilter logFileFilter);

    File getLogFile();
}
