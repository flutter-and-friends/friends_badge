package com.apkfuns.logutils.parser;

import android.util.Log;
import com.apkfuns.logutils.Parser;

/* loaded from: classes.dex */
public class ThrowableParse implements Parser<Throwable> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Throwable> parseClassType() {
        return Throwable.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Throwable th) {
        return Log.getStackTraceString(th);
    }
}
