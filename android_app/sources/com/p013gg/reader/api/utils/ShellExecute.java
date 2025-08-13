package com.p013gg.reader.api.utils;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ShellExecute {
    private static ShellExecute instance;
    Process exeEcho = null;

    /* renamed from: os */
    DataOutputStream f364os = null;
    DataInputStream dis = null;

    public static ShellExecute getInstance() {
        if (instance == null) {
            instance = new ShellExecute();
        }
        return instance;
    }

    private void initCmdExe() {
        if (this.exeEcho != null) {
            return;
        }
        try {
            this.exeEcho = Runtime.getRuntime().exec("sh");
            this.f364os = new DataOutputStream(this.exeEcho.getOutputStream());
            this.dis = new DataInputStream(this.exeEcho.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void disposeCmdExe() throws InterruptedException {
        if (this.exeEcho == null) {
            return;
        }
        try {
            if (this.dis != null) {
                this.dis.close();
                this.dis = null;
            }
            if (this.f364os != null) {
                this.f364os.close();
                this.f364os = null;
            }
            if (this.exeEcho != null) {
                this.exeEcho.waitFor();
                this.exeEcho = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int exeCmd(String str) throws InterruptedException, IOException {
        initCmdExe();
        int iExitValue = -1;
        try {
            if (this.exeEcho != null && this.f364os != null) {
                this.f364os.writeBytes(str + "\n");
                this.f364os.flush();
                this.f364os.writeBytes("exit\n");
                this.f364os.flush();
                this.exeEcho.waitFor();
                iExitValue = this.exeEcho.exitValue();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        disposeCmdExe();
        return iExitValue;
    }

    public String exeCmdRt(String str) throws InterruptedException, IOException {
        String str2 = "";
        initCmdExe();
        try {
            if (this.exeEcho != null && this.f364os != null) {
                this.f364os.writeBytes(str + "\n");
                this.f364os.flush();
                this.f364os.writeBytes("exit\n");
                this.f364os.flush();
                while (true) {
                    String utf = this.dis.readUTF();
                    if (utf == null) {
                        break;
                    }
                    str2 = str2 + utf;
                }
                this.exeEcho.waitFor();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        disposeCmdExe();
        return str2;
    }
}
