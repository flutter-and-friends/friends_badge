package org.aspectj.lang.reflect;

/* loaded from: classes2.dex */
public interface SourceLocation {
    int getColumn();

    String getFileName();

    int getLine();

    Class getWithinType();
}
