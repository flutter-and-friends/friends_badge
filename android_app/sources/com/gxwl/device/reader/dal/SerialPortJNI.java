package com.gxwl.device.reader.dal;

/* loaded from: classes.dex */
public class SerialPortJNI {
    public static native void closePort();

    public static native int openPort(String str, int i, int i2, int i3, char c);

    public static native byte[] readPort(int i);

    public static native int setMode(int i);

    public static native void writePort(byte[] bArr);

    static {
        System.loadLibrary("SerialPortLib");
    }
}
