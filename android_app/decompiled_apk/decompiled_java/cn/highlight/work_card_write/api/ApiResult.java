package cn.highlight.work_card_write.api;

/* loaded from: classes.dex */
public interface ApiResult<T> {
    void onFail(String str, String str2);

    void onSuss(T t);
}
