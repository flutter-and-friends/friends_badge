package cn.highlight.work_card_write.api;

import java.io.Serializable;

/* loaded from: classes.dex */
public class Result<T> implements Serializable {
    private T data;
    private String msg;
    private String status;
    private boolean success;

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public T getData() {
        return this.data;
    }

    public void setData(T t) {
        this.data = t;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }

    public String toString() {
        return "Result{status='" + this.status + "', msg='" + this.msg + "', data=" + this.data + ", success=" + this.success + '}';
    }
}
