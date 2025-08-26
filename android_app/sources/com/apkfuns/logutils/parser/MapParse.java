package com.apkfuns.logutils.parser;

import com.apkfuns.logutils.Parser;
import com.apkfuns.logutils.utils.ObjectUtil;
import java.util.Map;

/* loaded from: classes.dex */
public class MapParse implements Parser<Map> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Map> parseClassType() {
        return Map.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Map map) {
        String str = map.getClass().getName() + " [" + LINE_SEPARATOR;
        for (Object obj : map.keySet()) {
            String str2 = "%s -> %s" + LINE_SEPARATOR;
            Object obj2 = map.get(obj);
            if (obj2 != null) {
                if (obj2 instanceof String) {
                    obj2 = "\"" + obj2 + "\"";
                } else if (obj2 instanceof Character) {
                    obj2 = "'" + obj2 + "'";
                }
            }
            str = str + String.format(str2, ObjectUtil.objectToString(obj), ObjectUtil.objectToString(obj2));
        }
        return str + "]";
    }
}
