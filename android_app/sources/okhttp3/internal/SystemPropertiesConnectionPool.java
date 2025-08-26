package okhttp3.internal;

import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;

/* loaded from: classes2.dex */
public final class SystemPropertiesConnectionPool {
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    public static final ConnectionPool INSTANCE;

    static {
        int i;
        String property = System.getProperty("http.keepAlive");
        if (property == null || Boolean.parseBoolean(property)) {
            String property2 = System.getProperty("http.maxConnections");
            i = property2 != null ? Integer.parseInt(property2) : 5;
        } else {
            i = 0;
        }
        String property3 = System.getProperty("http.keepAliveDuration");
        INSTANCE = new ConnectionPool(i, property3 != null ? Long.parseLong(property3) : DEFAULT_KEEP_ALIVE_DURATION_MS, TimeUnit.MILLISECONDS);
    }

    private SystemPropertiesConnectionPool() {
    }
}
