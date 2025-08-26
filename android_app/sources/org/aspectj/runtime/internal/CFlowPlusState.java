package org.aspectj.runtime.internal;

import org.aspectj.runtime.CFlow;

/* loaded from: classes2.dex */
public class CFlowPlusState extends CFlow {
    private Object[] state;

    public CFlowPlusState(Object[] objArr) {
        this.state = objArr;
    }

    public CFlowPlusState(Object[] objArr, Object obj) {
        super(obj);
        this.state = objArr;
    }

    @Override // org.aspectj.runtime.CFlow
    public Object get(int i) {
        return this.state[i];
    }
}
