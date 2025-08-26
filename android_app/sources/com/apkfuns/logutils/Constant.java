package com.apkfuns.logutils;

import com.apkfuns.logutils.parser.BundleParse;
import com.apkfuns.logutils.parser.CollectionParse;
import com.apkfuns.logutils.parser.IntentParse;
import com.apkfuns.logutils.parser.MapParse;
import com.apkfuns.logutils.parser.MessageParse;
import com.apkfuns.logutils.parser.ReferenceParse;
import com.apkfuns.logutils.parser.ThrowableParse;
import java.util.List;

/* loaded from: classes.dex */
public class Constant {

    /* renamed from: BR */
    public static final String f303BR = System.getProperty("line.separator");
    public static final Class<? extends Parser>[] DEFAULT_PARSE_CLASS = {BundleParse.class, IntentParse.class, CollectionParse.class, MapParse.class, ThrowableParse.class, ReferenceParse.class, MessageParse.class};
    public static final int LINE_MAX = 3072;
    public static final int MAX_CHILD_LEVEL = 2;
    public static final int MIN_STACK_OFFSET = 5;
    public static final String SPACE = "\t";
    public static final String STRING_OBJECT_NULL = "Object[object is null]";
    public static final String TAG = "LogUtils";

    public static final List<Parser> getParsers() {
        return LogConfigImpl.getInstance().getParseList();
    }
}
