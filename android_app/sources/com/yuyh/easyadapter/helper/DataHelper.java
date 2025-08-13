package com.yuyh.easyadapter.helper;

import java.util.List;

/* loaded from: classes.dex */
public interface DataHelper<T> {
    void add(int i, T t);

    void add(T t);

    boolean addAll(int i, List<T> list);

    boolean addAll(List<T> list);

    void clear();

    boolean contains(T t);

    T getData(int i);

    void modify(int i, T t);

    void modify(T t, T t2);

    void remove(int i);

    boolean remove(T t);
}
