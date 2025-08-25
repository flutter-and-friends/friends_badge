package cn.highlight.work_card_write.util;

import com.gg.reader.api.protocol.gx.EnumG;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BadgeSpecificationUtils {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getSpecificationByHardware(String str) {
        switch (str) {
            case "00":
                return "无源-3.7-黑白红";
            case "01":
                return "无源-3.7-黑白红黄";
            case "02":
                return "无源-3.7-黑白";
            case "03":
                return "有源-3.7-黑白红";
            case "04":
                return "有源-3.7-黑白红黄";
            case "05":
                return "有源-3.7-黑白";
            case "06":
                return "无源-2.6-黑白红";
            case "07":
                return "无源-2.6-黑白红黄";
            case "08":
                return "无源-2.9-黑白红";
            case "09":
                return "无源-2.9-黑白红黄";
            default:
                return "";
        }
    }

    public static List<String> getSpecificationList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("3.7");
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> getColorBySize(String str) {
        char c;
        ArrayList arrayList = new ArrayList();
        int iHashCode = str.hashCode();
        if (iHashCode != 49530) {
            if (iHashCode != 49533) {
                c = (iHashCode == 50492 && str.equals("3.7")) ? (char) 2 : (char) 65535;
            } else if (str.equals("2.9")) {
                c = 1;
            }
        } else if (str.equals("2.6")) {
            c = 0;
        }
        if (c == 0 || c == 1) {
            arrayList.add("黑白红");
            arrayList.add("黑白红黄");
        } else if (c == 2) {
            arrayList.add("黑白");
            arrayList.add("黑白红");
            arrayList.add("黑白红黄");
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getWidthBySzie(String str) {
        char c;
        int iHashCode = str.hashCode();
        if (iHashCode != 49530) {
            if (iHashCode != 49533) {
                c = (iHashCode == 50492 && str.equals("3.7")) ? (char) 2 : (char) 65535;
            } else if (str.equals("2.9")) {
                c = 1;
            }
        } else if (str.equals("2.6")) {
            c = 0;
        }
        if (c == 0 || c == 1) {
            return 296;
        }
        if (c != 2) {
            return 0;
        }
        return EnumG.BaseMid_SafeCertification;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getHeightBySzie(String str) {
        char c;
        int iHashCode = str.hashCode();
        if (iHashCode != 49530) {
            if (iHashCode != 49533) {
                c = (iHashCode == 50492 && str.equals("3.7")) ? (char) 2 : (char) 65535;
            } else if (str.equals("2.9")) {
                c = 1;
            }
        } else if (str.equals("2.6")) {
            c = 0;
        }
        if (c == 0) {
            return 152;
        }
        if (c != 1) {
            return c != 2 ? 0 : 416;
        }
        return 128;
    }
}
