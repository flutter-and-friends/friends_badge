package com.apkfuns.logutils.parser;

import com.apkfuns.logutils.Parser;
import com.apkfuns.logutils.utils.ObjectUtil;
import java.util.Collection;

/* loaded from: classes.dex */
public class CollectionParse implements Parser<Collection> {
    @Override // com.apkfuns.logutils.Parser
    public Class<Collection> parseClassType() {
        return Collection.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Collection collection) {
        String string = String.format("%s size = %d [" + LINE_SEPARATOR, collection.getClass().getName(), Integer.valueOf(collection.size()));
        if (!collection.isEmpty()) {
            int i = 0;
            for (Object obj : collection) {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                Object[] objArr = new Object[3];
                objArr[0] = Integer.valueOf(i);
                objArr[1] = ObjectUtil.objectToString(obj);
                int i2 = i + 1;
                objArr[2] = i < collection.size() - 1 ? "," + LINE_SEPARATOR : LINE_SEPARATOR;
                sb.append(String.format("[%d]:%s%s", objArr));
                string = sb.toString();
                i = i2;
            }
        }
        return string + "]";
    }
}
