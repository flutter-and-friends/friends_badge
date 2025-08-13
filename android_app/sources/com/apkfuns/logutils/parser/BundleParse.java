package com.apkfuns.logutils.parser;

import android.os.Bundle;
import com.apkfuns.logutils.Parser;
import com.apkfuns.logutils.utils.ObjectUtil;

/* loaded from: classes.dex */
public class BundleParse implements Parser<Bundle> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Bundle> parseClassType() {
        return Bundle.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bundle.getClass().getName() + " [" + LINE_SEPARATOR);
        for (String str : bundle.keySet()) {
            sb.append(String.format("'%s' => %s " + LINE_SEPARATOR, str, ObjectUtil.objectToString(bundle.get(str))));
        }
        sb.append("]");
        return sb.toString();
    }
}
