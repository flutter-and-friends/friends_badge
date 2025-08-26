package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.PerClause;
import org.aspectj.lang.reflect.PerClauseKind;

/* loaded from: classes2.dex */
public class PerClauseImpl implements PerClause {
    private final PerClauseKind kind;

    public String toString() {
        return "issingleton()";
    }

    protected PerClauseImpl(PerClauseKind perClauseKind) {
        this.kind = perClauseKind;
    }

    @Override // org.aspectj.lang.reflect.PerClause
    public PerClauseKind getKind() {
        return this.kind;
    }
}
