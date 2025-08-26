package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.InterTypeDeclaration;

/* loaded from: classes2.dex */
public class InterTypeDeclarationImpl implements InterTypeDeclaration {
    private AjType<?> declaringType;
    private int modifiers;
    private AjType<?> targetType;
    protected String targetTypeName;

    public InterTypeDeclarationImpl(AjType<?> ajType, String str, int i) {
        this.declaringType = ajType;
        this.targetTypeName = str;
        this.modifiers = i;
        try {
            this.targetType = (AjType) StringToType.stringToType(str, ajType.getJavaClass());
        } catch (ClassNotFoundException unused) {
        }
    }

    public InterTypeDeclarationImpl(AjType<?> ajType, AjType<?> ajType2, int i) {
        this.declaringType = ajType;
        this.targetType = ajType2;
        this.targetTypeName = ajType2.getName();
        this.modifiers = i;
    }

    @Override // org.aspectj.lang.reflect.InterTypeDeclaration
    public AjType<?> getDeclaringType() {
        return this.declaringType;
    }

    @Override // org.aspectj.lang.reflect.InterTypeDeclaration
    public AjType<?> getTargetType() throws ClassNotFoundException {
        AjType<?> ajType = this.targetType;
        if (ajType != null) {
            return ajType;
        }
        throw new ClassNotFoundException(this.targetTypeName);
    }

    @Override // org.aspectj.lang.reflect.InterTypeDeclaration
    public int getModifiers() {
        return this.modifiers;
    }
}
