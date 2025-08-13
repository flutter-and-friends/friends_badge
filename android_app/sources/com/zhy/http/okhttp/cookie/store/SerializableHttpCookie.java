package com.zhy.http.okhttp.cookie.store;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import okhttp3.Cookie;

/* loaded from: classes2.dex */
public class SerializableHttpCookie implements Serializable {
    private static final long serialVersionUID = 6374381323722046732L;
    private transient Cookie clientCookie;
    private final transient Cookie cookie;

    public SerializableHttpCookie(Cookie cookie) {
        this.cookie = cookie;
    }

    public Cookie getCookie() {
        Cookie cookie = this.cookie;
        Cookie cookie2 = this.clientCookie;
        return cookie2 != null ? cookie2 : cookie;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.cookie.name());
        objectOutputStream.writeObject(this.cookie.value());
        objectOutputStream.writeLong(this.cookie.expiresAt());
        objectOutputStream.writeObject(this.cookie.domain());
        objectOutputStream.writeObject(this.cookie.path());
        objectOutputStream.writeBoolean(this.cookie.secure());
        objectOutputStream.writeBoolean(this.cookie.httpOnly());
        objectOutputStream.writeBoolean(this.cookie.hostOnly());
        objectOutputStream.writeBoolean(this.cookie.persistent());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        String str = (String) objectInputStream.readObject();
        String str2 = (String) objectInputStream.readObject();
        long j = objectInputStream.readLong();
        String str3 = (String) objectInputStream.readObject();
        String str4 = (String) objectInputStream.readObject();
        boolean z = objectInputStream.readBoolean();
        boolean z2 = objectInputStream.readBoolean();
        boolean z3 = objectInputStream.readBoolean();
        objectInputStream.readBoolean();
        Cookie.Builder builderExpiresAt = new Cookie.Builder().name(str).value(str2).expiresAt(j);
        Cookie.Builder builderPath = (z3 ? builderExpiresAt.hostOnlyDomain(str3) : builderExpiresAt.domain(str3)).path(str4);
        if (z) {
            builderPath = builderPath.secure();
        }
        if (z2) {
            builderPath = builderPath.httpOnly();
        }
        this.clientCookie = builderPath.build();
    }
}
