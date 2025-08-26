package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.AjTypeSystem;
import org.aspectj.lang.reflect.InterTypeConstructorDeclaration;

/* loaded from: classes2.dex */
public class InterTypeConstructorDeclarationImpl extends InterTypeDeclarationImpl implements InterTypeConstructorDeclaration {
    private Method baseMethod;

    public InterTypeConstructorDeclarationImpl(AjType<?> ajType, String str, int i, Method method) {
        super(ajType, str, i);
        this.baseMethod = method;
    }

    @Override // org.aspectj.lang.reflect.InterTypeConstructorDeclaration
    public AjType<?>[] getParameterTypes() {
        Class<?>[] parameterTypes = this.baseMethod.getParameterTypes();
        AjType<?>[] ajTypeArr = new AjType[parameterTypes.length - 1];
        for (int i = 1; i < parameterTypes.length; i++) {
            ajTypeArr[i - 1] = AjTypeSystem.getAjType(parameterTypes[i]);
        }
        return ajTypeArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.aspectj.lang.reflect.InterTypeConstructorDeclaration
    public Type[] getGenericParameterTypes() {
        Type[] genericParameterTypes = this.baseMethod.getGenericParameterTypes();
        AjType[] ajTypeArr = new AjType[genericParameterTypes.length - 1];
        for (int i = 1; i < genericParameterTypes.length; i++) {
            if (genericParameterTypes[i] instanceof Class) {
                ajTypeArr[i - 1] = AjTypeSystem.getAjType((Class) genericParameterTypes[i]);
            } else {
                ajTypeArr[i - 1] = genericParameterTypes[i];
            }
        }
        return ajTypeArr;
    }

    @Override // org.aspectj.lang.reflect.InterTypeConstructorDeclaration
    public AjType<?>[] getExceptionTypes() {
        Class<?>[] exceptionTypes = this.baseMethod.getExceptionTypes();
        AjType<?>[] ajTypeArr = new AjType[exceptionTypes.length];
        for (int i = 0; i < exceptionTypes.length; i++) {
            ajTypeArr[i] = AjTypeSystem.getAjType(exceptionTypes[i]);
        }
        return ajTypeArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(getModifiers()));
        stringBuffer.append(" ");
        stringBuffer.append(this.targetTypeName);
        stringBuffer.append(".new");
        stringBuffer.append("(");
        AjType<?>[] parameterTypes = getParameterTypes();
        for (int i = 0; i < parameterTypes.length - 1; i++) {
            stringBuffer.append(parameterTypes[i].toString());
            stringBuffer.append(", ");
        }
        if (parameterTypes.length > 0) {
            stringBuffer.append(parameterTypes[parameterTypes.length - 1].toString());
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }
}
