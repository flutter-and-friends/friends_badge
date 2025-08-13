package jxl.biff;

import common.Logger;
import jxl.WorkbookSettings;

/* loaded from: classes2.dex */
public class EncodedURLHelper {
    static /* synthetic */ Class class$jxl$biff$EncodedURLHelper;
    private static byte endOfSubdirectory;
    private static Logger logger;
    private static byte msDosDriveLetter;
    private static byte parentDirectory;
    private static byte sameDrive;
    private static byte unencodedUrl;

    static {
        Class clsClass$ = class$jxl$biff$EncodedURLHelper;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.EncodedURLHelper");
            class$jxl$biff$EncodedURLHelper = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        msDosDriveLetter = (byte) 1;
        sameDrive = (byte) 2;
        endOfSubdirectory = (byte) 3;
        parentDirectory = (byte) 4;
        unencodedUrl = (byte) 5;
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static byte[] getEncodedURL(String str, WorkbookSettings workbookSettings) {
        if (str.startsWith("http:")) {
            return getURL(str, workbookSettings);
        }
        return getFile(str, workbookSettings);
    }

    private static byte[] getFile(String str, WorkbookSettings workbookSettings) {
        int i;
        int iMax;
        String strSubstring;
        int length;
        ByteArray byteArray = new ByteArray();
        if (str.charAt(1) == ':') {
            byteArray.add(msDosDriveLetter);
            byteArray.add((byte) str.charAt(0));
            i = 2;
        } else {
            if (str.charAt(0) == '\\' || str.charAt(0) == '/') {
                byteArray.add(sameDrive);
            }
            i = 0;
        }
        while (true) {
            if (str.charAt(i) != '\\' && str.charAt(i) != '/') {
                break;
            }
            i++;
        }
        while (i < str.length()) {
            int iIndexOf = str.indexOf(47, i);
            int iIndexOf2 = str.indexOf(92, i);
            if (iIndexOf != -1 && iIndexOf2 != -1) {
                iMax = Math.min(iIndexOf, iIndexOf2);
            } else {
                iMax = (iIndexOf == -1 || iIndexOf2 == -1) ? Math.max(iIndexOf, iIndexOf2) : 0;
            }
            if (iMax == -1) {
                strSubstring = str.substring(i);
                length = str.length();
            } else {
                strSubstring = str.substring(i, iMax);
                length = iMax + 1;
            }
            if (!strSubstring.equals(".")) {
                if (strSubstring.equals("..")) {
                    byteArray.add(parentDirectory);
                } else {
                    byteArray.add(StringHelper.getBytes(strSubstring, workbookSettings));
                }
            }
            if (length < str.length()) {
                byteArray.add(endOfSubdirectory);
            }
            i = length;
        }
        return byteArray.getBytes();
    }

    private static byte[] getURL(String str, WorkbookSettings workbookSettings) {
        ByteArray byteArray = new ByteArray();
        byteArray.add(unencodedUrl);
        byteArray.add((byte) str.length());
        byteArray.add(StringHelper.getBytes(str, workbookSettings));
        return byteArray.getBytes();
    }
}
