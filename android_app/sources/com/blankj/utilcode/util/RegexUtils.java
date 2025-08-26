package com.blankj.utilcode.util;

import androidx.collection.SimpleArrayMap;
import cn.highlight.work_card_write.util.NDCMD;
import com.blankj.utilcode.constant.RegexConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class RegexUtils {
    private static final SimpleArrayMap<String, String> CITY_MAP = new SimpleArrayMap<>();

    private RegexUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean isMobileSimple(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_MOBILE_SIMPLE, charSequence);
    }

    public static boolean isMobileExact(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_MOBILE_EXACT, charSequence);
    }

    public static boolean isTel(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_TEL, charSequence);
    }

    public static boolean isIDCard15(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_ID_CARD15, charSequence);
    }

    public static boolean isIDCard18(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_ID_CARD18, charSequence);
    }

    public static boolean isIDCard18Exact(CharSequence charSequence) {
        if (!isIDCard18(charSequence)) {
            return false;
        }
        int[] iArr = {7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2};
        char[] cArr = {'1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'};
        if (CITY_MAP.isEmpty()) {
            CITY_MAP.put(NDCMD.M11, "北京");
            CITY_MAP.put("12", "天津");
            CITY_MAP.put(NDCMD.M13, "河北");
            CITY_MAP.put(NDCMD.M14, "山西");
            CITY_MAP.put("15", "内蒙古");
            CITY_MAP.put("21", "辽宁");
            CITY_MAP.put("22", "吉林");
            CITY_MAP.put("23", "黑龙江");
            CITY_MAP.put("31", "上海");
            CITY_MAP.put("32", "江苏");
            CITY_MAP.put("33", "浙江");
            CITY_MAP.put("34", "安徽");
            CITY_MAP.put("35", "福建");
            CITY_MAP.put("36", "江西");
            CITY_MAP.put("37", "山东");
            CITY_MAP.put("41", "河南");
            CITY_MAP.put("42", "湖北");
            CITY_MAP.put("43", "湖南");
            CITY_MAP.put("44", "广东");
            CITY_MAP.put("45", "广西");
            CITY_MAP.put("46", "海南");
            CITY_MAP.put("50", "重庆");
            CITY_MAP.put("51", "四川");
            CITY_MAP.put("52", "贵州");
            CITY_MAP.put("53", "云南");
            CITY_MAP.put("54", "西藏");
            CITY_MAP.put("61", "陕西");
            CITY_MAP.put("62", "甘肃");
            CITY_MAP.put("63", "青海");
            CITY_MAP.put("64", "宁夏");
            CITY_MAP.put("65", "新疆");
            CITY_MAP.put("71", "台湾");
            CITY_MAP.put("81", "香港");
            CITY_MAP.put("82", "澳门");
            CITY_MAP.put("91", "国外");
        }
        if (CITY_MAP.get(charSequence.subSequence(0, 2).toString()) == null) {
            return false;
        }
        int iCharAt = 0;
        for (int i = 0; i < 17; i++) {
            iCharAt += (charSequence.charAt(i) - '0') * iArr[i];
        }
        return charSequence.charAt(17) == cArr[iCharAt % 11];
    }

    public static boolean isEmail(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_EMAIL, charSequence);
    }

    public static boolean isURL(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_URL, charSequence);
    }

    public static boolean isZh(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_ZH, charSequence);
    }

    public static boolean isUsername(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_USERNAME, charSequence);
    }

    public static boolean isDate(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_DATE, charSequence);
    }

    public static boolean isIP(CharSequence charSequence) {
        return isMatch(RegexConstants.REGEX_IP, charSequence);
    }

    public static boolean isMatch(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }

    public static List<String> getMatches(String str, CharSequence charSequence) {
        if (charSequence == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str).matcher(charSequence);
        while (matcher.find()) {
            arrayList.add(matcher.group());
        }
        return arrayList;
    }

    public static String[] getSplits(String str, String str2) {
        return str == null ? new String[0] : str.split(str2);
    }

    public static String getReplaceFirst(String str, String str2, String str3) {
        return str == null ? "" : Pattern.compile(str2).matcher(str).replaceFirst(str3);
    }

    public static String getReplaceAll(String str, String str2, String str3) {
        return str == null ? "" : Pattern.compile(str2).matcher(str).replaceAll(str3);
    }
}
