package com.apkfuns.logutils.utils;

import com.apkfuns.logutils.Constant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Utils {
    public static final int DIVIDER_BOTTOM = 2;
    public static final int DIVIDER_CENTER = 4;
    public static final int DIVIDER_NORMAL = 3;
    public static final int DIVIDER_TOP = 1;

    public static String printDividingLine(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : "╟───────────────────────────────────────────────────────────────────────────────────────────────────────────────────" : "║ " : "╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════" : "╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════";
    }

    public static List<String> largeStringToList(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length() / Constant.LINE_MAX;
        if (length > 0) {
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + Constant.LINE_MAX;
                arrayList.add(str.substring(i2, i3));
                i++;
                i2 = i3;
            }
            arrayList.add(str.substring(i2, str.length()));
        } else {
            arrayList.add(str);
        }
        return arrayList;
    }

    public static String shorten(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (Math.abs(i2) < str.length()) {
            str = i2 < 0 ? str.substring(str.length() + i2, str.length()) : i2 > 0 ? str.substring(0, i2) : str;
        }
        if (Math.abs(i) <= str.length()) {
            return str;
        }
        return String.format("%" + i + "s", str);
    }

    public static String shortenClassName(String str, int i, int i2) throws Exception {
        String strShortenPackagesName = shortenPackagesName(str, i);
        if (strShortenPackagesName == null) {
            return null;
        }
        if (i2 == 0 || i2 > strShortenPackagesName.length()) {
            return strShortenPackagesName;
        }
        int i3 = 0;
        if (i2 < 0) {
            int i4 = -i2;
            StringBuilder sb = new StringBuilder();
            int length = strShortenPackagesName.length() - 1;
            while (true) {
                if (length > 0) {
                    int iLastIndexOf = strShortenPackagesName.lastIndexOf(46, length);
                    if (iLastIndexOf == -1) {
                        if (sb.length() > 0 && sb.length() + length + 1 > i4) {
                            sb.insert(0, '*');
                            break;
                        }
                        sb.insert(0, strShortenPackagesName.substring(0, length + 1));
                        length = iLastIndexOf - 1;
                    } else {
                        if (sb.length() > 0 && sb.length() + ((length + 1) - iLastIndexOf) + 1 > i4) {
                            sb.insert(0, '*');
                            break;
                        }
                        sb.insert(0, strShortenPackagesName.substring(iLastIndexOf, length + 1));
                        length = iLastIndexOf - 1;
                    }
                } else {
                    break;
                }
            }
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            if (i3 < strShortenPackagesName.length()) {
                int iIndexOf = strShortenPackagesName.indexOf(46, i3);
                if (iIndexOf == -1) {
                    if (sb2.length() > 0) {
                        sb2.insert(sb2.length(), '*');
                    } else {
                        sb2.insert(sb2.length(), strShortenPackagesName.substring(i3, strShortenPackagesName.length()));
                    }
                } else {
                    if (sb2.length() > 0 && iIndexOf + 1 > i2) {
                        sb2.insert(sb2.length(), '*');
                        break;
                    }
                    int i5 = iIndexOf + 1;
                    sb2.insert(sb2.length(), strShortenPackagesName.substring(i3, i5));
                    i3 = i5;
                }
            } else {
                break;
            }
        }
        return sb2.toString();
    }

    private static String shortenPackagesName(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 1;
        if (i > 0) {
            int i3 = 0;
            while (true) {
                if (i3 >= str.length()) {
                    break;
                }
                int iIndexOf = str.indexOf(46, i3);
                if (iIndexOf == -1) {
                    sb.insert(sb.length(), str.substring(i3, str.length()));
                    break;
                }
                if (i2 == i) {
                    sb.insert(sb.length(), str.substring(i3, iIndexOf));
                    break;
                }
                int i4 = iIndexOf + 1;
                sb.insert(sb.length(), str.substring(i3, i4));
                i2++;
                i3 = i4;
            }
        } else if (i < 0) {
            String strShortenPackagesName = shortenPackagesName(str, -i);
            if (str.equals(strShortenPackagesName)) {
                sb.insert(sb.length(), str.substring(str.lastIndexOf(46) + 1, str.length()));
            } else {
                return str.replaceFirst(strShortenPackagesName + '.', "");
            }
        }
        return sb.toString();
    }
}
