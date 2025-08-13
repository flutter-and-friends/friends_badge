package org.aspectj.lang.reflect;

import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public interface FieldSignature extends MemberSignature {
    Field getField();

    Class getFieldType();
}
