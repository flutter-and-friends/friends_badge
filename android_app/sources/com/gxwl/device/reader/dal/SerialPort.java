package com.gxwl.device.reader.dal;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class SerialPort {
    public static final String UART0 = "/dev/ttyS0";
    public static final String UART1 = "/dev/ttyS1";
    public static final String UART2 = "/dev/ttyS2";
    public static final String UART3 = "/dev/ttyS3";
    public static final String UART_FHR = "/dev/ttyS3";
    public static final String UART_FHR_WIRELESS_EX = "/dev/ttyS2";
    public static final String UART_FHR_WIRELESS_IN = "/dev/ttyS2";
    public static final String UART_NIBP = "/dev/ttyS2";
    public static final String UART_PRINT = "/dev/ttyS1";
    public static final String UART_SPO2 = "/dev/ttyS0";
    private FileDescriptor mFd;
    private FileInputStream mFileInputStream;
    private FileOutputStream mFileOutputStream;

    private static native FileDescriptor open(String str, int i, int i2);

    private native void setParity(int i, int i2, int i3, int i4);

    public native void close();

    public SerialPort(File file, int i, int i2) throws IOException, SecurityException {
        if (!file.canRead() || !file.canWrite()) {
            try {
                Process processExec = Runtime.getRuntime().exec("/system/bin/su");
                processExec.getOutputStream().write(("chmod 666 " + file.getAbsolutePath() + "\nexit\n").getBytes());
                if (processExec.waitFor() != 0 || !file.canRead() || !file.canWrite()) {
                    throw new SecurityException();
                }
            } catch (Exception e) {
                e.printStackTrace();
                throw new SecurityException();
            }
        }
        this.mFd = open(file.getAbsolutePath(), i, i2);
        FileDescriptor fileDescriptor = this.mFd;
        if (fileDescriptor == null) {
            throw new IOException();
        }
        this.mFileInputStream = new FileInputStream(fileDescriptor);
        this.mFileOutputStream = new FileOutputStream(this.mFd);
    }

    public void setParity(int i, int i2, int i3) {
        setParity(-1, i, i2, i3);
    }

    public InputStream getInputStream() {
        return this.mFileInputStream;
    }

    public OutputStream getOutputStream() {
        return this.mFileOutputStream;
    }

    static {
        System.loadLibrary("SerialPort");
    }
}
