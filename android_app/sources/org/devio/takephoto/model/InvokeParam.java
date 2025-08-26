package org.devio.takephoto.model;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class InvokeParam {
    private Object[] args;
    private Method method;
    private Object proxy;

    public InvokeParam(Object obj, Method method, Object[] objArr) {
        this.proxy = obj;
        this.method = method;
        this.args = objArr;
    }

    public Object getProxy() {
        return this.proxy;
    }

    public void setProxy(Object obj) {
        this.proxy = obj;
    }

    public Method getMethod() {
        return this.method;
    }

    public void setMethod(Method method) {
        this.method = method;
    }

    public Object[] getArgs() {
        return this.args;
    }

    public void setArgs(Object[] objArr) {
        this.args = objArr;
    }
}
