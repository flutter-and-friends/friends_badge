package common.log;

/* loaded from: classes2.dex */
public class LoggerName {
    public static final String NAME;
    static /* synthetic */ Class class$common$log$SimpleLogger;

    static {
        Class clsClass$ = class$common$log$SimpleLogger;
        if (clsClass$ == null) {
            clsClass$ = class$("common.log.SimpleLogger");
            class$common$log$SimpleLogger = clsClass$;
        }
        NAME = clsClass$.getName();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }
}
