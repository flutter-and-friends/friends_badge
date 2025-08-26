package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public enum TlsVersion {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    final String javaName;

    TlsVersion(String str) {
        this.javaName = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static okhttp3.TlsVersion forJavaName(java.lang.String r6) {
        /*
            int r0 = r6.hashCode()
            r1 = 79201641(0x4b88569, float:4.338071E-36)
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r0 == r1) goto L3e
            r1 = 79923350(0x4c38896, float:4.5969714E-36)
            if (r0 == r1) goto L34
            switch(r0) {
                case -503070503: goto L2a;
                case -503070502: goto L20;
                case -503070501: goto L16;
                default: goto L15;
            }
        L15:
            goto L48
        L16:
            java.lang.String r0 = "TLSv1.3"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L48
            r0 = 0
            goto L49
        L20:
            java.lang.String r0 = "TLSv1.2"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L48
            r0 = 1
            goto L49
        L2a:
            java.lang.String r0 = "TLSv1.1"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L48
            r0 = 2
            goto L49
        L34:
            java.lang.String r0 = "TLSv1"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L48
            r0 = 3
            goto L49
        L3e:
            java.lang.String r0 = "SSLv3"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L48
            r0 = 4
            goto L49
        L48:
            r0 = -1
        L49:
            if (r0 == 0) goto L76
            if (r0 == r5) goto L73
            if (r0 == r4) goto L70
            if (r0 == r3) goto L6d
            if (r0 != r2) goto L56
            okhttp3.TlsVersion r6 = okhttp3.TlsVersion.SSL_3_0
            return r6
        L56:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unexpected TLS version: "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.<init>(r6)
            throw r0
        L6d:
            okhttp3.TlsVersion r6 = okhttp3.TlsVersion.TLS_1_0
            return r6
        L70:
            okhttp3.TlsVersion r6 = okhttp3.TlsVersion.TLS_1_1
            return r6
        L73:
            okhttp3.TlsVersion r6 = okhttp3.TlsVersion.TLS_1_2
            return r6
        L76:
            okhttp3.TlsVersion r6 = okhttp3.TlsVersion.TLS_1_3
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.TlsVersion.forJavaName(java.lang.String):okhttp3.TlsVersion");
    }

    static List<TlsVersion> forJavaNames(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(forJavaName(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String javaName() {
        return this.javaName;
    }
}
