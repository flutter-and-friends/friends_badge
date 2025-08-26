package org.aspectj.runtime.internal;

import com.chad.library.BuildConfig;
import java.util.Stack;
import org.aspectj.lang.NoAspectBoundException;
import org.aspectj.runtime.CFlow;
import org.aspectj.runtime.internal.cflowstack.ThreadStack;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactory;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl11;

/* loaded from: classes2.dex */
public class CFlowStack {
    private static ThreadStackFactory tsFactory;
    private ThreadStack stackProxy = tsFactory.getNewThreadStack();

    static {
        selectFactoryForVMVersion();
    }

    private Stack getThreadStack() {
        return this.stackProxy.getThreadStack();
    }

    public void push(Object obj) {
        getThreadStack().push(obj);
    }

    public void pushInstance(Object obj) {
        getThreadStack().push(new CFlow(obj));
    }

    public void push(Object[] objArr) {
        getThreadStack().push(new CFlowPlusState(objArr));
    }

    public void pop() {
        Stack threadStack = getThreadStack();
        threadStack.pop();
        if (threadStack.isEmpty()) {
            this.stackProxy.removeThreadStack();
        }
    }

    public Object peek() {
        Stack threadStack = getThreadStack();
        if (threadStack.isEmpty()) {
            throw new NoAspectBoundException();
        }
        return threadStack.peek();
    }

    public Object get(int i) {
        CFlow cFlowPeekCFlow = peekCFlow();
        if (cFlowPeekCFlow == null) {
            return null;
        }
        return cFlowPeekCFlow.get(i);
    }

    public Object peekInstance() {
        CFlow cFlowPeekCFlow = peekCFlow();
        if (cFlowPeekCFlow != null) {
            return cFlowPeekCFlow.getAspect();
        }
        throw new NoAspectBoundException();
    }

    public CFlow peekCFlow() {
        Stack threadStack = getThreadStack();
        if (threadStack.isEmpty()) {
            return null;
        }
        return (CFlow) threadStack.peek();
    }

    public CFlow peekTopCFlow() {
        Stack threadStack = getThreadStack();
        if (threadStack.isEmpty()) {
            return null;
        }
        return (CFlow) threadStack.elementAt(0);
    }

    public boolean isValid() {
        return !getThreadStack().isEmpty();
    }

    private static ThreadStackFactory getThreadLocalStackFactory() {
        return new ThreadStackFactoryImpl();
    }

    private static ThreadStackFactory getThreadLocalStackFactoryFor11() {
        return new ThreadStackFactoryImpl11();
    }

    private static void selectFactoryForVMVersion() {
        String systemPropertyWithoutSecurityException = getSystemPropertyWithoutSecurityException("aspectj.runtime.cflowstack.usethreadlocal", BuildConfig.VERSION_NAME);
        boolean z = false;
        if (!systemPropertyWithoutSecurityException.equals(BuildConfig.VERSION_NAME) ? systemPropertyWithoutSecurityException.equals("yes") || systemPropertyWithoutSecurityException.equals("true") : System.getProperty("java.class.version", "0.0").compareTo("46.0") >= 0) {
            z = true;
        }
        if (z) {
            tsFactory = getThreadLocalStackFactory();
        } else {
            tsFactory = getThreadLocalStackFactoryFor11();
        }
    }

    private static String getSystemPropertyWithoutSecurityException(String str, String str2) {
        try {
            return System.getProperty(str, str2);
        } catch (SecurityException unused) {
            return str2;
        }
    }

    public static String getThreadStackFactoryClassName() {
        return tsFactory.getClass().getName();
    }
}
