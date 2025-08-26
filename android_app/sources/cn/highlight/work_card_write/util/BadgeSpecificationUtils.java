package cn.highlight.work_card_write.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BadgeSpecificationUtils {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getSpecificationByHardware(java.lang.String r1) {
        /*
            int r0 = r1.hashCode()
            switch(r0) {
                case 1536: goto L65;
                case 1537: goto L5b;
                case 1538: goto L51;
                case 1539: goto L47;
                case 1540: goto L3d;
                case 1541: goto L33;
                case 1542: goto L29;
                case 1543: goto L1f;
                case 1544: goto L14;
                case 1545: goto L9;
                default: goto L7;
            }
        L7:
            goto L6f
        L9:
            java.lang.String r0 = "09"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 9
            goto L70
        L14:
            java.lang.String r0 = "08"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 8
            goto L70
        L1f:
            java.lang.String r0 = "07"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 7
            goto L70
        L29:
            java.lang.String r0 = "06"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 6
            goto L70
        L33:
            java.lang.String r0 = "05"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 5
            goto L70
        L3d:
            java.lang.String r0 = "04"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 4
            goto L70
        L47:
            java.lang.String r0 = "03"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 3
            goto L70
        L51:
            java.lang.String r0 = "02"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 2
            goto L70
        L5b:
            java.lang.String r0 = "01"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 1
            goto L70
        L65:
            java.lang.String r0 = "00"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L6f
            r1 = 0
            goto L70
        L6f:
            r1 = -1
        L70:
            switch(r1) {
                case 0: goto L91;
                case 1: goto L8e;
                case 2: goto L8b;
                case 3: goto L88;
                case 4: goto L85;
                case 5: goto L82;
                case 6: goto L7f;
                case 7: goto L7c;
                case 8: goto L79;
                case 9: goto L76;
                default: goto L73;
            }
        L73:
            java.lang.String r1 = ""
            goto L93
        L76:
            java.lang.String r1 = "无源-2.9-黑白红黄"
            goto L93
        L79:
            java.lang.String r1 = "无源-2.9-黑白红"
            goto L93
        L7c:
            java.lang.String r1 = "无源-2.6-黑白红黄"
            goto L93
        L7f:
            java.lang.String r1 = "无源-2.6-黑白红"
            goto L93
        L82:
            java.lang.String r1 = "有源-3.7-黑白"
            goto L93
        L85:
            java.lang.String r1 = "有源-3.7-黑白红黄"
            goto L93
        L88:
            java.lang.String r1 = "有源-3.7-黑白红"
            goto L93
        L8b:
            java.lang.String r1 = "无源-3.7-黑白"
            goto L93
        L8e:
            java.lang.String r1 = "无源-3.7-黑白红黄"
            goto L93
        L91:
            java.lang.String r1 = "无源-3.7-黑白红"
        L93:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.BadgeSpecificationUtils.getSpecificationByHardware(java.lang.String):java.lang.String");
    }

    public static List<String> getSpecificationList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("3.7");
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> getColorBySize(java.lang.String r5) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r1 = r5.hashCode()
            r2 = 49530(0xc17a, float:6.9406E-41)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L2f
            r2 = 49533(0xc17d, float:6.941E-41)
            if (r1 == r2) goto L25
            r2 = 50492(0xc53c, float:7.0754E-41)
            if (r1 == r2) goto L1b
            goto L39
        L1b:
            java.lang.String r1 = "3.7"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L39
            r5 = 2
            goto L3a
        L25:
            java.lang.String r1 = "2.9"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L39
            r5 = 1
            goto L3a
        L2f:
            java.lang.String r1 = "2.6"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L39
            r5 = 0
            goto L3a
        L39:
            r5 = -1
        L3a:
            java.lang.String r1 = "黑白红黄"
            java.lang.String r2 = "黑白红"
            if (r5 == 0) goto L51
            if (r5 == r4) goto L51
            if (r5 == r3) goto L45
            goto L57
        L45:
            java.lang.String r5 = "黑白"
            r0.add(r5)
            r0.add(r2)
            r0.add(r1)
            goto L57
        L51:
            r0.add(r2)
            r0.add(r1)
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.BadgeSpecificationUtils.getColorBySize(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getWidthBySzie(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 49530(0xc17a, float:6.9406E-41)
            r2 = 2
            r3 = 1
            r4 = 0
            if (r0 == r1) goto L2b
            r1 = 49533(0xc17d, float:6.941E-41)
            if (r0 == r1) goto L21
            r1 = 50492(0xc53c, float:7.0754E-41)
            if (r0 == r1) goto L17
            goto L35
        L17:
            java.lang.String r0 = "3.7"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 2
            goto L36
        L21:
            java.lang.String r0 = "2.9"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 1
            goto L36
        L2b:
            java.lang.String r0 = "2.6"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 0
            goto L36
        L35:
            r5 = -1
        L36:
            if (r5 == 0) goto L40
            if (r5 == r3) goto L40
            if (r5 == r2) goto L3d
            goto L42
        L3d:
            r4 = 240(0xf0, float:3.36E-43)
            goto L42
        L40:
            r4 = 296(0x128, float:4.15E-43)
        L42:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.BadgeSpecificationUtils.getWidthBySzie(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getHeightBySzie(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 49530(0xc17a, float:6.9406E-41)
            r2 = 2
            r3 = 1
            r4 = 0
            if (r0 == r1) goto L2b
            r1 = 49533(0xc17d, float:6.941E-41)
            if (r0 == r1) goto L21
            r1 = 50492(0xc53c, float:7.0754E-41)
            if (r0 == r1) goto L17
            goto L35
        L17:
            java.lang.String r0 = "3.7"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 2
            goto L36
        L21:
            java.lang.String r0 = "2.9"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 1
            goto L36
        L2b:
            java.lang.String r0 = "2.6"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L35
            r5 = 0
            goto L36
        L35:
            r5 = -1
        L36:
            if (r5 == 0) goto L43
            if (r5 == r3) goto L40
            if (r5 == r2) goto L3d
            goto L45
        L3d:
            r4 = 416(0x1a0, float:5.83E-43)
            goto L45
        L40:
            r4 = 128(0x80, float:1.8E-43)
            goto L45
        L43:
            r4 = 152(0x98, float:2.13E-43)
        L45:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.util.BadgeSpecificationUtils.getHeightBySzie(java.lang.String):int");
    }
}
