package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class ExpandedProductResultParser extends ResultParser {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0174, code lost:
    
        if (r1.equals("3107") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x017e, code lost:
    
        if (r1.equals("3106") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0188, code lost:
    
        if (r1.equals("3105") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0192, code lost:
    
        if (r1.equals("3104") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x019c, code lost:
    
        if (r1.equals("3103") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01a6, code lost:
    
        if (r1.equals("3102") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01b0, code lost:
    
        if (r1.equals("3101") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01ba, code lost:
    
        if (r1.equals("3100") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01be, code lost:
    
        r14 = r1.substring(3);
        r13 = com.google.zxing.client.result.ExpandedProductParsedResult.KILOGRAM;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01c4, code lost:
    
        r12 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f4, code lost:
    
        if (r1.equals("3209") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00fe, code lost:
    
        if (r1.equals("3208") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0108, code lost:
    
        if (r1.equals("3207") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0112, code lost:
    
        if (r1.equals("3206") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011c, code lost:
    
        if (r1.equals("3205") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0126, code lost:
    
        if (r1.equals("3204") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0130, code lost:
    
        if (r1.equals("3203") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x013a, code lost:
    
        if (r1.equals("3202") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0144, code lost:
    
        if (r1.equals("3201") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x014e, code lost:
    
        if (r1.equals("3200") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0152, code lost:
    
        r14 = r1.substring(3);
        r13 = com.google.zxing.client.result.ExpandedProductParsedResult.POUND;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0160, code lost:
    
        if (r1.equals("3109") == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x016a, code lost:
    
        if (r1.equals("3108") == false) goto L152;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e7  */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r22) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }

    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == '(') {
                if (findAIvalue(i2, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
