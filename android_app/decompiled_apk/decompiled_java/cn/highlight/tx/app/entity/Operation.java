package cn.highlight.tx.app.entity;

/* loaded from: classes.dex */
public class Operation {
    private String msg;
    private int status;

    public Operation() {
    }

    public Operation(int i, String str) {
        this.status = i;
        this.msg = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
