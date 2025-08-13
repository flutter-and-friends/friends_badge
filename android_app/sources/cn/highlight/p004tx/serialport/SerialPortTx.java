package cn.highlight.p004tx.serialport;

import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: classes.dex */
public class SerialPortTx {
    private static final String TAG;

    protected native void close();

    protected native FileDescriptor open(String str, int i, int i2);

    static {
        System.loadLibrary("SerialPortTx");
        TAG = SerialPortTx.class.getSimpleName();
    }

    boolean chmod777(File file) throws IOException {
        if (file != null && file.exists()) {
            try {
                Process processExec = Runtime.getRuntime().exec("/system/bin/su");
                processExec.getOutputStream().write(("chmod 777 " + file.getAbsolutePath() + "\nexit\n").getBytes());
                if (processExec.waitFor() == 0 && file.canRead() && file.canWrite()) {
                    if (file.canExecute()) {
                        return true;
                    }
                }
            } catch (IOException | InterruptedException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
