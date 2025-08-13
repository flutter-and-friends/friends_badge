package org.aspectj.runtime.reflect;

import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import org.aspectj.lang.reflect.MethodSignature;

/* loaded from: classes2.dex */
class MethodSignatureImpl extends CodeSignatureImpl implements MethodSignature {
    private Method method;
    Class returnType;

    MethodSignatureImpl(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i, str, cls, clsArr, strArr, clsArr2);
        this.returnType = cls2;
    }

    MethodSignatureImpl(String str) {
        super(str);
    }

    @Override // org.aspectj.lang.reflect.MethodSignature
    public Class getReturnType() {
        if (this.returnType == null) {
            this.returnType = extractType(6);
        }
        return this.returnType;
    }

    @Override // org.aspectj.runtime.reflect.SignatureImpl
    protected String createToString(StringMaker stringMaker) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(stringMaker.makeModifiersString(getModifiers()));
        if (stringMaker.includeArgs) {
            stringBuffer.append(stringMaker.makeTypeName(getReturnType()));
        }
        if (stringMaker.includeArgs) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(stringMaker.makePrimaryTypeName(getDeclaringType(), getDeclaringTypeName()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        stringMaker.addSignature(stringBuffer, getParameterTypes());
        stringMaker.addThrows(stringBuffer, getExceptionTypes());
        return stringBuffer.toString();
    }

    @Override // org.aspectj.lang.reflect.MethodSignature
    public Method getMethod() {
        if (this.method == null) {
            Class declaringType = getDeclaringType();
            try {
                this.method = declaringType.getDeclaredMethod(getName(), getParameterTypes());
            } catch (NoSuchMethodException unused) {
                HashSet hashSet = new HashSet();
                hashSet.add(declaringType);
                this.method = search(declaringType, getName(), getParameterTypes(), hashSet);
            }
        }
        return this.method;
    }

    private Method search(Class cls, String str, Class[] clsArr, Set set) {
        if (cls == null) {
            return null;
        }
        if (!set.contains(cls)) {
            set.add(cls);
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
        }
        Method methodSearch = search(cls.getSuperclass(), str, clsArr, set);
        if (methodSearch != null) {
            return methodSearch;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces != null) {
            for (Class<?> cls2 : interfaces) {
                Method methodSearch2 = search(cls2, str, clsArr, set);
                if (methodSearch2 != null) {
                    return methodSearch2;
                }
            }
        }
        return null;
    }
}
