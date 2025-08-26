package common;

import common.log.LoggerName;
import common.log.SimpleLogger;
import java.security.AccessControlException;

/* loaded from: classes2.dex */
public abstract class Logger {
    private static Logger logger;

    public abstract void debug(Object obj);

    public abstract void debug(Object obj, Throwable th);

    public abstract void error(Object obj);

    public abstract void error(Object obj, Throwable th);

    public abstract void fatal(Object obj);

    public abstract void fatal(Object obj, Throwable th);

    protected abstract Logger getLoggerImpl(Class cls);

    public abstract void info(Object obj);

    public abstract void info(Object obj, Throwable th);

    public void setSuppressWarnings(boolean z) {
    }

    public abstract void warn(Object obj);

    public abstract void warn(Object obj, Throwable th);

    public static final Logger getLogger(Class cls) {
        if (logger == null) {
            initializeLogger();
        }
        return logger.getLoggerImpl(cls);
    }

    private static synchronized void initializeLogger() {
        if (logger != null) {
            return;
        }
        String property = LoggerName.NAME;
        try {
            try {
                try {
                    try {
                        property = System.getProperty("logger");
                        if (property == null) {
                            property = LoggerName.NAME;
                        }
                        logger = (Logger) Class.forName(property).newInstance();
                    } catch (InstantiationException unused) {
                        logger = new SimpleLogger();
                        Logger logger2 = logger;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Could not instantiate logger ");
                        stringBuffer.append(property);
                        stringBuffer.append(" using default");
                        logger2.warn(stringBuffer.toString());
                    }
                } catch (IllegalAccessException unused2) {
                    logger = new SimpleLogger();
                    Logger logger3 = logger;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Could not instantiate logger ");
                    stringBuffer2.append(property);
                    stringBuffer2.append(" using default");
                    logger3.warn(stringBuffer2.toString());
                }
            } catch (ClassNotFoundException unused3) {
                logger = new SimpleLogger();
                Logger logger4 = logger;
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Could not instantiate logger ");
                stringBuffer3.append(property);
                stringBuffer3.append(" using default");
                logger4.warn(stringBuffer3.toString());
            }
        } catch (AccessControlException unused4) {
            logger = new SimpleLogger();
            Logger logger5 = logger;
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("Could not instantiate logger ");
            stringBuffer4.append(property);
            stringBuffer4.append(" using default");
            logger5.warn(stringBuffer4.toString());
        }
    }

    protected Logger() {
    }
}
