package com.blankj.utilcode.util;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* loaded from: classes.dex */
public final class ResourceUtils {
    private static final int BUFFER_SIZE = 8192;

    private ResourceUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean copyFileFromAssets(String str, String str2) throws IOException {
        try {
            String[] list = Utils.getApp().getAssets().list(str);
            if (list.length > 0) {
                boolean zCopyFileFromAssets = true;
                for (String str3 : list) {
                    zCopyFileFromAssets &= copyFileFromAssets(str + "/" + str3, str2 + "/" + str3);
                }
                return zCopyFileFromAssets;
            }
            return writeFileFromIS(str2, Utils.getApp().getAssets().open(str), false);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String readAssets2String(String str) {
        return readAssets2String(str, null);
    }

    public static String readAssets2String(String str, String str2) throws Throwable {
        try {
            byte[] bArrIs2Bytes = is2Bytes(Utils.getApp().getAssets().open(str));
            if (bArrIs2Bytes == null) {
                return null;
            }
            if (isSpace(str2)) {
                return new String(bArrIs2Bytes);
            }
            try {
                return new String(bArrIs2Bytes, str2);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return "";
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static List<String> readAssets2List(String str) {
        return readAssets2List(str, null);
    }

    public static List<String> readAssets2List(String str, String str2) {
        try {
            return is2List(Utils.getApp().getResources().getAssets().open(str), str2);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean copyFileFromRaw(int i, String str) {
        return writeFileFromIS(str, Utils.getApp().getResources().openRawResource(i), false);
    }

    public static String readRaw2String(int i) {
        return readRaw2String(i, null);
    }

    public static String readRaw2String(int i, String str) throws Throwable {
        byte[] bArrIs2Bytes = is2Bytes(Utils.getApp().getResources().openRawResource(i));
        if (bArrIs2Bytes == null) {
            return null;
        }
        if (isSpace(str)) {
            return new String(bArrIs2Bytes);
        }
        try {
            return new String(bArrIs2Bytes, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static List<String> readRaw2List(int i) {
        return readRaw2List(i, null);
    }

    public static List<String> readRaw2List(int i, String str) {
        return is2List(Utils.getApp().getResources().openRawResource(i), str);
    }

    private static boolean writeFileFromIS(String str, InputStream inputStream, boolean z) {
        return writeFileFromIS(getFileByPath(str), inputStream, z);
    }

    private static boolean writeFileFromIS(File file, InputStream inputStream, boolean z) throws Throwable {
        if (!createOrExistsFile(file) || inputStream == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file, z));
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i = inputStream.read(bArr, 0, 8192);
                        if (i == -1) {
                            break;
                        }
                        bufferedOutputStream2.write(bArr, 0, i);
                    }
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return true;
                } catch (IOException e3) {
                    e = e3;
                    bufferedOutputStream = bufferedOutputStream2;
                    e.printStackTrace();
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedOutputStream = bufferedOutputStream2;
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                            throw th;
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (IOException e8) {
                e = e8;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static File getFileByPath(String str) {
        if (isSpace(str)) {
            return null;
        }
        return new File(str);
    }

    private static boolean createOrExistsFile(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static byte[] is2Bytes(InputStream inputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (IOException e) {
                e = e;
                byteArrayOutputStream = null;
            } catch (Throwable th) {
                th = th;
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                if (0 != 0) {
                    try {
                        byteArrayOutputStream2.close();
                        throw th;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        throw th;
                    }
                }
                throw th;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = inputStream.read(bArr, 0, 8192);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                return byteArray;
            } catch (IOException e6) {
                e = e6;
                e.printStackTrace();
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List<java.lang.String> is2List(java.io.InputStream r4, java.lang.String r5) throws java.lang.Throwable {
        /*
            r0 = 0
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r1.<init>()     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            boolean r2 = isSpace(r5)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            if (r2 == 0) goto L17
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            goto L22
        L17:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r5 = r2
        L22:
            java.lang.String r4 = r5.readLine()     // Catch: java.io.IOException -> L35 java.lang.Throwable -> L49
            if (r4 == 0) goto L2c
            r1.add(r4)     // Catch: java.io.IOException -> L35 java.lang.Throwable -> L49
            goto L22
        L2c:
            r5.close()     // Catch: java.io.IOException -> L30
            goto L34
        L30:
            r4 = move-exception
            r4.printStackTrace()
        L34:
            return r1
        L35:
            r4 = move-exception
            goto L3b
        L37:
            r4 = move-exception
            goto L4b
        L39:
            r4 = move-exception
            r5 = r0
        L3b:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L48
            r5.close()     // Catch: java.io.IOException -> L44
            goto L48
        L44:
            r4 = move-exception
            r4.printStackTrace()
        L48:
            return r0
        L49:
            r4 = move-exception
            r0 = r5
        L4b:
            if (r0 == 0) goto L55
            r0.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r5 = move-exception
            r5.printStackTrace()
        L55:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.blankj.utilcode.util.ResourceUtils.is2List(java.io.InputStream, java.lang.String):java.util.List");
    }
}
