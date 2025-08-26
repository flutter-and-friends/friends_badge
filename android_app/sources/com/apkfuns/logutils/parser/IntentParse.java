package com.apkfuns.logutils.parser;

import android.content.Intent;
import android.text.TextUtils;
import com.apkfuns.logutils.Parser;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class IntentParse implements Parser<Intent> {
    private static Map<Integer, String> flagMap = new HashMap();

    static {
        Object obj;
        for (Field field : Intent.class.getDeclaredFields()) {
            field.setAccessible(true);
            if (field.getName().startsWith("FLAG_")) {
                try {
                    obj = field.get(Intent.class);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                int iIntValue = ((obj instanceof Integer) || obj.getClass().getSimpleName().equals("int")) ? ((Integer) obj).intValue() : 0;
                if (flagMap.get(Integer.valueOf(iIntValue)) == null) {
                    flagMap.put(Integer.valueOf(iIntValue), field.getName());
                }
            }
        }
    }

    @Override // com.apkfuns.logutils.Parser
    public Class<Intent> parseClassType() {
        return Intent.class;
    }

    @Override // com.apkfuns.logutils.Parser
    public String parseString(Intent intent) {
        StringBuilder sb = new StringBuilder(parseClassType().getSimpleName() + " [" + LINE_SEPARATOR);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("%s = %s");
        sb2.append(LINE_SEPARATOR);
        sb.append(String.format(sb2.toString(), "Scheme", intent.getScheme()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Action", intent.getAction()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "DataString", intent.getDataString()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Type", intent.getType()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Package", intent.getPackage()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "ComponentInfo", intent.getComponent()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Flags", getFlags(intent.getFlags())));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Categories", intent.getCategories()));
        sb.append(String.format("%s = %s" + LINE_SEPARATOR, "Extras", new BundleParse().parseString(intent.getExtras())));
        return sb.toString() + "]";
    }

    private String getFlags(int i) {
        StringBuilder sb = new StringBuilder();
        Iterator<Integer> it = flagMap.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if ((iIntValue & i) == iIntValue) {
                sb.append(flagMap.get(Integer.valueOf(iIntValue)));
                sb.append(" | ");
            }
        }
        if (TextUtils.isEmpty(sb.toString())) {
            sb.append(i);
        } else if (sb.indexOf("|") != -1) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.toString();
    }
}
