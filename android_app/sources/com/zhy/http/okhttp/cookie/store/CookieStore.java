package com.zhy.http.okhttp.cookie.store;

import java.util.List;
import okhttp3.Cookie;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public interface CookieStore {
    void add(HttpUrl httpUrl, List<Cookie> list);

    List<Cookie> get(HttpUrl httpUrl);

    List<Cookie> getCookies();

    boolean remove(HttpUrl httpUrl, Cookie cookie);

    boolean removeAll();
}
