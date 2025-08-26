package com.uhf.api.cls;

import com.uhf.api.cls.R2000Command;

/* loaded from: classes.dex */
public class R2000DataCmdReturn {
    private byte[] cmdcrc;
    private int command;
    private byte[] data;
    private int datalength;
    private int headercode;
    private boolean onebyte;
    private byte sdata;
    private int status = -1;

    public R2000Command.R2000CmdSatus Status() {
        return R2000Command.R2000CmdSatus.valueOf(this.status);
    }

    public int DataLength() {
        return this.datalength;
    }

    public byte SData() {
        return this.sdata;
    }

    public byte[] Data() {
        return this.data;
    }

    public void GetData(byte[] bArr) {
        this.cmdcrc = new byte[2];
        this.headercode = bArr[0];
        this.datalength = bArr[1];
        this.command = bArr[2];
        this.status = (bArr[3] << 8) | bArr[4];
        int i = this.datalength;
        if (i == 1) {
            this.sdata = bArr[5];
            this.data = new byte[1];
            this.data[0] = this.sdata;
            this.onebyte = true;
        } else if (i > 1) {
            this.data = new byte[i];
            System.arraycopy(bArr, 5, this.data, 0, i);
            this.onebyte = false;
        } else {
            this.sdata = (byte) 0;
            this.data = null;
        }
        byte[] bArr2 = this.cmdcrc;
        bArr2[0] = bArr[bArr.length - 2];
        bArr2[1] = bArr[bArr.length - 1];
    }
}
