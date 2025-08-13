package com.apkfuns.logutils.parser;

import com.apkfuns.logutils.Parser;
import com.apkfuns.logutils.utils.ObjectUtil;
import java.lang.ref.Reference;

/* loaded from: classes.dex */
public class ReferenceParse implements Parser<Reference> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Reference> parseClassType() {
        return Reference.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Reference reference) {
        Object obj = reference.get();
        StringBuilder sb = new StringBuilder(reference.getClass().getSimpleName() + "<" + obj.getClass().getSimpleName() + "> {");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("→");
        sb2.append(ObjectUtil.objectToString(obj));
        sb.append(sb2.toString());
        return sb.toString() + "}";
    }
}
