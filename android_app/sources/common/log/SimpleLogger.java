package common.log;

import common.Logger;

/* loaded from: classes2.dex */
public class SimpleLogger extends Logger {
    private boolean suppressWarnings = false;

    @Override // common.Logger
    protected Logger getLoggerImpl(Class cls) {
        return this;
    }

    @Override // common.Logger
    public void debug(Object obj) {
        if (this.suppressWarnings) {
            return;
        }
        System.out.print("Debug: ");
        System.out.println(obj);
    }

    @Override // common.Logger
    public void debug(Object obj, Throwable th) {
        if (this.suppressWarnings) {
            return;
        }
        System.out.print("Debug: ");
        System.out.println(obj);
        th.printStackTrace();
    }

    @Override // common.Logger
    public void error(Object obj) {
        System.err.print("Error: ");
        System.err.println(obj);
    }

    @Override // common.Logger
    public void error(Object obj, Throwable th) {
        System.err.print("Error: ");
        System.err.println(obj);
        th.printStackTrace();
    }

    @Override // common.Logger
    public void fatal(Object obj) {
        System.err.print("Fatal: ");
        System.err.println(obj);
    }

    @Override // common.Logger
    public void fatal(Object obj, Throwable th) {
        System.err.print("Fatal:  ");
        System.err.println(obj);
        th.printStackTrace();
    }

    @Override // common.Logger
    public void info(Object obj) {
        if (this.suppressWarnings) {
            return;
        }
        System.out.println(obj);
    }

    @Override // common.Logger
    public void info(Object obj, Throwable th) {
        if (this.suppressWarnings) {
            return;
        }
        System.out.println(obj);
        th.printStackTrace();
    }

    @Override // common.Logger
    public void warn(Object obj) {
        if (this.suppressWarnings) {
            return;
        }
        System.err.print("Warning:  ");
        System.err.println(obj);
    }

    @Override // common.Logger
    public void warn(Object obj, Throwable th) {
        if (this.suppressWarnings) {
            return;
        }
        System.err.print("Warning:  ");
        System.err.println(obj);
        th.printStackTrace();
    }

    @Override // common.Logger
    public void setSuppressWarnings(boolean z) {
        this.suppressWarnings = z;
    }
}
