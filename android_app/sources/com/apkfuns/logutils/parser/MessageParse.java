package com.apkfuns.logutils.parser;

import android.os.Message;
import com.apkfuns.logutils.Parser;
import com.apkfuns.logutils.utils.ObjectUtil;

/* loaded from: classes.dex */
public class MessageParse implements Parser<Message> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Message> parseClassType() {
        return Message.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Message message) {
        if (message == null) {
            return null;
        }
        return (message.getClass().getName() + " [" + LINE_SEPARATOR) + String.format("%s = %s", "what", Integer.valueOf(message.what)) + LINE_SEPARATOR + String.format("%s = %s", "when", Long.valueOf(message.getWhen())) + LINE_SEPARATOR + String.format("%s = %s", "arg1", Integer.valueOf(message.arg1)) + LINE_SEPARATOR + String.format("%s = %s", "arg2", Integer.valueOf(message.arg2)) + LINE_SEPARATOR + String.format("%s = %s", "data", new BundleParse().parseString(message.getData())) + LINE_SEPARATOR + String.format("%s = %s", "obj", ObjectUtil.objectToString(message.obj)) + LINE_SEPARATOR + "]";
    }
}
