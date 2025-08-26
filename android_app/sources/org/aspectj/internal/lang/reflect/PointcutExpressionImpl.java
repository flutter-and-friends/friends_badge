package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.PointcutExpression;

/* loaded from: classes2.dex */
public class PointcutExpressionImpl implements PointcutExpression {
    private String expression;

    public PointcutExpressionImpl(String str) {
        this.expression = str;
    }

    @Override // org.aspectj.lang.reflect.PointcutExpression
    public String asString() {
        return this.expression;
    }

    public String toString() {
        return asString();
    }
}
