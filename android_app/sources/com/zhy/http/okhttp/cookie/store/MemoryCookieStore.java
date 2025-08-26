package com.zhy.http.okhttp.cookie.store;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public class MemoryCookieStore implements CookieStore {
    private final HashMap<String, List<Cookie>> allCookies = new HashMap<>();

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public void add(HttpUrl httpUrl, List<Cookie> list) {
        List<Cookie> list2 = this.allCookies.get(httpUrl.host());
        if (list2 != null) {
            Iterator<Cookie> it = list.iterator();
            Iterator<Cookie> it2 = list2.iterator();
            while (it.hasNext()) {
                String strName = it.next().name();
                while (strName != null && it2.hasNext()) {
                    String strName2 = it2.next().name();
                    if (strName2 != null && strName.equals(strName2)) {
                        it2.remove();
                    }
                }
            }
            list2.addAll(list);
            return;
        }
        this.allCookies.put(httpUrl.host(), list);
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public List<Cookie> get(HttpUrl httpUrl) {
        List<Cookie> list = this.allCookies.get(httpUrl.host());
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        this.allCookies.put(httpUrl.host(), arrayList);
        return arrayList;
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public boolean removeAll() {
        this.allCookies.clear();
        return true;
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public List<Cookie> getCookies() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.allCookies.keySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(this.allCookies.get(it.next()));
        }
        return arrayList;
    }

    @Override // com.zhy.http.okhttp.cookie.store.CookieStore
    public boolean remove(HttpUrl httpUrl, Cookie cookie) {
        List<Cookie> list = this.allCookies.get(httpUrl.host());
        if (cookie != null) {
            return list.remove(cookie);
        }
        return false;
    }
}
