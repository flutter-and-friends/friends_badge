package p024rx.exceptions;

import java.util.HashSet;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class AssemblyStackTraceException extends RuntimeException {
    private static final long serialVersionUID = 2038859767182585852L;

    public AssemblyStackTraceException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }

    public void attachTo(Throwable th) {
        HashSet hashSet = new HashSet();
        while (th.getCause() != null) {
            th = th.getCause();
            if (!hashSet.add(th)) {
                RxJavaHooks.onError(this);
                return;
            }
        }
        th.initCause(this);
    }

    public static AssemblyStackTraceException find(Throwable th) {
        HashSet hashSet = new HashSet();
        while (!(th instanceof AssemblyStackTraceException)) {
            if (th != null && th.getCause() != null) {
                th = th.getCause();
                if (!hashSet.add(th)) {
                }
            }
            return null;
        }
        return (AssemblyStackTraceException) th;
    }
}
