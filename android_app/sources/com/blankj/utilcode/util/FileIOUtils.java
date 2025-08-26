package com.blankj.utilcode.util;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes.dex */
public final class FileIOUtils {
    private static int sBufferSize = 8192;

    private FileIOUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream) {
        return writeFileFromIS(getFileByPath(str), inputStream, false);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, boolean z) {
        return writeFileFromIS(getFileByPath(str), inputStream, z);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream) {
        return writeFileFromIS(file, inputStream, false);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream, boolean z) throws Throwable {
        if (!createOrExistsFile(file) || inputStream == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file, z));
                try {
                    byte[] bArr = new byte[sBufferSize];
                    while (true) {
                        int i = inputStream.read(bArr);
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

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, false);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, boolean z) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, z);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr) {
        return writeFileFromBytesByStream(file, bArr, false);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr, boolean z) throws Throwable {
        if (bArr == null || !createOrExistsFile(file)) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file, z));
                try {
                    bufferedOutputStream2.write(bArr);
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    bufferedOutputStream = bufferedOutputStream2;
                    e.printStackTrace();
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }

    public static boolean writeFileFromBytesByChannel(String str, byte[] bArr, boolean z) {
        return writeFileFromBytesByChannel(getFileByPath(str), bArr, false, z);
    }

    public static boolean writeFileFromBytesByChannel(String str, byte[] bArr, boolean z, boolean z2) {
        return writeFileFromBytesByChannel(getFileByPath(str), bArr, z, z2);
    }

    public static boolean writeFileFromBytesByChannel(File file, byte[] bArr, boolean z) {
        return writeFileFromBytesByChannel(file, bArr, false, z);
    }

    public static boolean writeFileFromBytesByChannel(File file, byte[] bArr, boolean z, boolean z2) {
        if (bArr == null) {
            return false;
        }
        FileChannel channel = null;
        try {
            try {
                channel = new FileOutputStream(file, z).getChannel();
                channel.position(channel.size());
                channel.write(ByteBuffer.wrap(bArr));
                if (z2) {
                    channel.force(true);
                }
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return false;
            }
        } catch (Throwable th) {
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean writeFileFromBytesByMap(String str, byte[] bArr, boolean z) {
        return writeFileFromBytesByMap(str, bArr, false, z);
    }

    public static boolean writeFileFromBytesByMap(String str, byte[] bArr, boolean z, boolean z2) {
        return writeFileFromBytesByMap(getFileByPath(str), bArr, z, z2);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z) {
        return writeFileFromBytesByMap(file, bArr, false, z);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z, boolean z2) throws Throwable {
        FileChannel channel;
        if (bArr == null || !createOrExistsFile(file)) {
            return false;
        }
        FileChannel fileChannel = null;
        try {
            try {
                channel = new FileOutputStream(file, z).getChannel();
                try {
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, channel.size(), bArr.length);
                    map.put(bArr);
                    if (z2) {
                        map.force();
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    fileChannel = channel;
                    e.printStackTrace();
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
            channel = fileChannel;
        }
    }

    public static boolean writeFileFromString(String str, String str2) {
        return writeFileFromString(getFileByPath(str), str2, false);
    }

    public static boolean writeFileFromString(String str, String str2, boolean z) {
        return writeFileFromString(getFileByPath(str), str2, z);
    }

    public static boolean writeFileFromString(File file, String str) {
        return writeFileFromString(file, str, false);
    }

    public static boolean writeFileFromString(File file, String str, boolean z) throws Throwable {
        if (file == null || str == null || !createOrExistsFile(file)) {
            return false;
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file, z));
                try {
                    bufferedWriter2.write(str);
                    try {
                        bufferedWriter2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    e.printStackTrace();
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static List<String> readFile2List(String str) {
        return readFile2List(getFileByPath(str), (String) null);
    }

    public static List<String> readFile2List(String str, String str2) {
        return readFile2List(getFileByPath(str), str2);
    }

    public static List<String> readFile2List(File file) {
        return readFile2List(file, 0, Integer.MAX_VALUE, (String) null);
    }

    public static List<String> readFile2List(File file, String str) {
        return readFile2List(file, 0, Integer.MAX_VALUE, str);
    }

    public static List<String> readFile2List(String str, int i, int i2) {
        return readFile2List(getFileByPath(str), i, i2, (String) null);
    }

    public static List<String> readFile2List(String str, int i, int i2, String str2) {
        return readFile2List(getFileByPath(str), i, i2, str2);
    }

    public static List<String> readFile2List(File file, int i, int i2) {
        return readFile2List(file, i, i2, (String) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> readFile2List(java.io.File r6, int r7, int r8, java.lang.String r9) throws java.lang.Throwable {
        /*
            boolean r0 = isFileExists(r6)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            if (r7 <= r8) goto Lb
            return r1
        Lb:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r0.<init>()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            boolean r2 = isSpace(r9)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r3 = 1
            if (r2 == 0) goto L27
            java.io.BufferedReader r9 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r9.<init>(r2)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            goto L37
        L27:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r4.<init>(r5, r9)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r9 = r2
        L37:
            java.lang.String r6 = r9.readLine()     // Catch: java.io.IOException -> L53 java.lang.Throwable -> L67
            if (r6 == 0) goto L4a
            if (r3 <= r8) goto L40
            goto L4a
        L40:
            if (r7 > r3) goto L47
            if (r3 > r8) goto L47
            r0.add(r6)     // Catch: java.io.IOException -> L53 java.lang.Throwable -> L67
        L47:
            int r3 = r3 + 1
            goto L37
        L4a:
            r9.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r6 = move-exception
            r6.printStackTrace()
        L52:
            return r0
        L53:
            r6 = move-exception
            goto L59
        L55:
            r6 = move-exception
            goto L69
        L57:
            r6 = move-exception
            r9 = r1
        L59:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L67
            if (r9 == 0) goto L66
            r9.close()     // Catch: java.io.IOException -> L62
            goto L66
        L62:
            r6 = move-exception
            r6.printStackTrace()
        L66:
            return r1
        L67:
            r6 = move-exception
            r1 = r9
        L69:
            if (r1 == 0) goto L73
            r1.close()     // Catch: java.io.IOException -> L6f
            goto L73
        L6f:
            r7 = move-exception
            r7.printStackTrace()
        L73:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.blankj.utilcode.util.FileIOUtils.readFile2List(java.io.File, int, int, java.lang.String):java.util.List");
    }

    public static String readFile2String(String str) {
        return readFile2String(getFileByPath(str), (String) null);
    }

    public static String readFile2String(String str, String str2) {
        return readFile2String(getFileByPath(str), str2);
    }

    public static String readFile2String(File file) {
        return readFile2String(file, (String) null);
    }

    public static String readFile2String(File file, String str) {
        byte[] file2BytesByStream = readFile2BytesByStream(file);
        if (file2BytesByStream == null) {
            return null;
        }
        if (isSpace(str)) {
            return new String(file2BytesByStream);
        }
        try {
            return new String(file2BytesByStream, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static byte[] readFile2BytesByStream(String str) {
        return readFile2BytesByStream(getFileByPath(str));
    }

    public static byte[] readFile2BytesByStream(File file) {
        if (!isFileExists(file)) {
            return null;
        }
        try {
            return is2Bytes(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] readFile2BytesByChannel(String str) {
        return readFile2BytesByChannel(getFileByPath(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    public static byte[] readFile2BytesByChannel(File file) throws Throwable {
        FileChannel channel;
        try {
            if (!isFileExists(file)) {
                return null;
            }
            try {
                channel = new RandomAccessFile(file, "r").getChannel();
            } catch (IOException e) {
                e = e;
                channel = null;
            } catch (Throwable th) {
                th = th;
                file = 0;
                if (file != 0) {
                    try {
                        file.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
            try {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) channel.size());
                while (channel.read(byteBufferAllocate) > 0) {
                }
                byte[] bArrArray = byteBufferAllocate.array();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return bArrArray;
            } catch (IOException e4) {
                e = e4;
                e.printStackTrace();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static byte[] readFile2BytesByMap(String str) {
        return readFile2BytesByMap(getFileByPath(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] readFile2BytesByMap(java.io.File r9) throws java.lang.Throwable {
        /*
            boolean r0 = isFileExists(r9)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3c
            java.lang.String r2 = "r"
            r0.<init>(r9, r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3c
            java.nio.channels.FileChannel r9 = r0.getChannel()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3c
            long r2 = r9.size()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            int r0 = (int) r2     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            java.nio.channels.FileChannel$MapMode r4 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            r5 = 0
            long r7 = (long) r0     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            r3 = r9
            java.nio.MappedByteBuffer r2 = r3.map(r4, r5, r7)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            java.nio.MappedByteBuffer r2 = r2.load()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            byte[] r3 = new byte[r0]     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            r4 = 0
            r2.get(r3, r4, r0)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L4c
            if (r9 == 0) goto L36
            r9.close()     // Catch: java.io.IOException -> L32
            goto L36
        L32:
            r9 = move-exception
            r9.printStackTrace()
        L36:
            return r3
        L37:
            r0 = move-exception
            goto L3e
        L39:
            r0 = move-exception
            r9 = r1
            goto L4d
        L3c:
            r0 = move-exception
            r9 = r1
        L3e:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r9 == 0) goto L4b
            r9.close()     // Catch: java.io.IOException -> L47
            goto L4b
        L47:
            r9 = move-exception
            r9.printStackTrace()
        L4b:
            return r1
        L4c:
            r0 = move-exception
        L4d:
            if (r9 == 0) goto L57
            r9.close()     // Catch: java.io.IOException -> L53
            goto L57
        L53:
            r9 = move-exception
            r9.printStackTrace()
        L57:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.blankj.utilcode.util.FileIOUtils.readFile2BytesByMap(java.io.File):byte[]");
    }

    public static void setBufferSize(int i) {
        sBufferSize = i;
    }

    private static File getFileByPath(String str) {
        if (isSpace(str)) {
            return null;
        }
        return new File(str);
    }

    private static boolean createOrExistsFile(String str) {
        return createOrExistsFile(getFileByPath(str));
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

    private static boolean isFileExists(File file) {
        return file != null && file.exists();
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

    /* JADX WARN: Removed duplicated region for block: B:58:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] is2Bytes(java.io.InputStream r7) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            r1.<init>()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            int r2 = com.blankj.utilcode.util.FileIOUtils.sBufferSize     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
            byte[] r2 = new byte[r2]     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
        Ld:
            int r3 = com.blankj.utilcode.util.FileIOUtils.sBufferSize     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
            r4 = 0
            int r3 = r7.read(r2, r4, r3)     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
            r5 = -1
            if (r3 == r5) goto L1b
            r1.write(r2, r4, r3)     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
            goto Ld
        L1b:
            byte[] r0 = r1.toByteArray()     // Catch: java.io.IOException -> L30 java.lang.Throwable -> L4f
            r7.close()     // Catch: java.io.IOException -> L23
            goto L27
        L23:
            r7 = move-exception
            r7.printStackTrace()
        L27:
            r1.close()     // Catch: java.io.IOException -> L2b
            goto L2f
        L2b:
            r7 = move-exception
            r7.printStackTrace()
        L2f:
            return r0
        L30:
            r2 = move-exception
            goto L39
        L32:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L50
        L37:
            r2 = move-exception
            r1 = r0
        L39:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L4f
            r7.close()     // Catch: java.io.IOException -> L40
            goto L44
        L40:
            r7 = move-exception
            r7.printStackTrace()
        L44:
            if (r1 == 0) goto L4e
            r1.close()     // Catch: java.io.IOException -> L4a
            goto L4e
        L4a:
            r7 = move-exception
            r7.printStackTrace()
        L4e:
            return r0
        L4f:
            r0 = move-exception
        L50:
            r7.close()     // Catch: java.io.IOException -> L54
            goto L58
        L54:
            r7 = move-exception
            r7.printStackTrace()
        L58:
            if (r1 == 0) goto L62
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L62
        L5e:
            r7 = move-exception
            r7.printStackTrace()
        L62:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.blankj.utilcode.util.FileIOUtils.is2Bytes(java.io.InputStream):byte[]");
    }
}
