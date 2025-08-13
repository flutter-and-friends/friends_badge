package org.aspectj.runtime.reflect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.StringTokenizer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.AdviceSignature;
import org.aspectj.lang.reflect.CatchClauseSignature;
import org.aspectj.lang.reflect.ConstructorSignature;
import org.aspectj.lang.reflect.FieldSignature;
import org.aspectj.lang.reflect.InitializerSignature;
import org.aspectj.lang.reflect.LockSignature;
import org.aspectj.lang.reflect.MethodSignature;
import org.aspectj.lang.reflect.SourceLocation;
import org.aspectj.lang.reflect.UnlockSignature;
import org.aspectj.runtime.reflect.JoinPointImpl;

/* loaded from: classes2.dex */
public final class Factory {
    private static Object[] NO_ARGS;
    static /* synthetic */ Class class$java$lang$ClassNotFoundException;
    static Hashtable prims = new Hashtable();
    int count = 0;
    String filename;
    Class lexicalClass;
    ClassLoader lookupClassLoader;

    static {
        prims.put("void", Void.TYPE);
        prims.put("boolean", Boolean.TYPE);
        prims.put("byte", Byte.TYPE);
        prims.put("char", Character.TYPE);
        prims.put("short", Short.TYPE);
        prims.put("int", Integer.TYPE);
        prims.put("long", Long.TYPE);
        prims.put("float", Float.TYPE);
        prims.put("double", Double.TYPE);
        NO_ARGS = new Object[0];
    }

    static Class makeClass(String str, ClassLoader classLoader) {
        if (str.equals("*")) {
            return null;
        }
        Class cls = (Class) prims.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            if (classLoader == null) {
                return Class.forName(str);
            }
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            Class cls2 = class$java$lang$ClassNotFoundException;
            if (cls2 != null) {
                return cls2;
            }
            Class clsClass$ = class$("java.lang.ClassNotFoundException");
            class$java$lang$ClassNotFoundException = clsClass$;
            return clsClass$;
        }
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public Factory(String str, Class cls) {
        this.filename = str;
        this.lexicalClass = cls;
        this.lookupClassLoader = cls.getClassLoader();
    }

    public JoinPoint.StaticPart makeSJP(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i) throws NumberFormatException {
        MethodSignature methodSignatureMakeMethodSig = makeMethodSig(str2, str3, str4, str5, str6, str7, str8);
        int i2 = this.count;
        this.count = i2 + 1;
        return new JoinPointImpl.StaticPartImpl(i2, str, methodSignatureMakeMethodSig, makeSourceLoc(i, -1));
    }

    public JoinPoint.StaticPart makeSJP(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i) throws NumberFormatException {
        MethodSignature methodSignatureMakeMethodSig = makeMethodSig(str2, str3, str4, str5, str6, "", str7);
        int i2 = this.count;
        this.count = i2 + 1;
        return new JoinPointImpl.StaticPartImpl(i2, str, methodSignatureMakeMethodSig, makeSourceLoc(i, -1));
    }

    public JoinPoint.StaticPart makeSJP(String str, Signature signature, SourceLocation sourceLocation) {
        int i = this.count;
        this.count = i + 1;
        return new JoinPointImpl.StaticPartImpl(i, str, signature, sourceLocation);
    }

    public JoinPoint.StaticPart makeSJP(String str, Signature signature, int i, int i2) {
        int i3 = this.count;
        this.count = i3 + 1;
        return new JoinPointImpl.StaticPartImpl(i3, str, signature, makeSourceLoc(i, i2));
    }

    public JoinPoint.StaticPart makeSJP(String str, Signature signature, int i) {
        int i2 = this.count;
        this.count = i2 + 1;
        return new JoinPointImpl.StaticPartImpl(i2, str, signature, makeSourceLoc(i, -1));
    }

    public JoinPoint.EnclosingStaticPart makeESJP(String str, Signature signature, SourceLocation sourceLocation) {
        int i = this.count;
        this.count = i + 1;
        return new JoinPointImpl.EnclosingStaticPartImpl(i, str, signature, sourceLocation);
    }

    public JoinPoint.EnclosingStaticPart makeESJP(String str, Signature signature, int i, int i2) {
        int i3 = this.count;
        this.count = i3 + 1;
        return new JoinPointImpl.EnclosingStaticPartImpl(i3, str, signature, makeSourceLoc(i, i2));
    }

    public JoinPoint.EnclosingStaticPart makeESJP(String str, Signature signature, int i) {
        int i2 = this.count;
        this.count = i2 + 1;
        return new JoinPointImpl.EnclosingStaticPartImpl(i2, str, signature, makeSourceLoc(i, -1));
    }

    public static JoinPoint.StaticPart makeEncSJP(Member member) {
        CodeSignatureImpl constructorSignatureImpl;
        String str;
        if (member instanceof Method) {
            Method method = (Method) member;
            CodeSignatureImpl methodSignatureImpl = new MethodSignatureImpl(method.getModifiers(), method.getName(), method.getDeclaringClass(), method.getParameterTypes(), new String[method.getParameterTypes().length], method.getExceptionTypes(), method.getReturnType());
            str = JoinPoint.METHOD_EXECUTION;
            constructorSignatureImpl = methodSignatureImpl;
        } else if (member instanceof Constructor) {
            Constructor constructor = (Constructor) member;
            constructorSignatureImpl = new ConstructorSignatureImpl(constructor.getModifiers(), constructor.getDeclaringClass(), constructor.getParameterTypes(), new String[constructor.getParameterTypes().length], constructor.getExceptionTypes());
            str = JoinPoint.CONSTRUCTOR_EXECUTION;
        } else {
            throw new IllegalArgumentException("member must be either a method or constructor");
        }
        return new JoinPointImpl.EnclosingStaticPartImpl(-1, str, constructorSignatureImpl, null);
    }

    public static JoinPoint makeJP(JoinPoint.StaticPart staticPart, Object obj, Object obj2) {
        return new JoinPointImpl(staticPart, obj, obj2, NO_ARGS);
    }

    public static JoinPoint makeJP(JoinPoint.StaticPart staticPart, Object obj, Object obj2, Object obj3) {
        return new JoinPointImpl(staticPart, obj, obj2, new Object[]{obj3});
    }

    public static JoinPoint makeJP(JoinPoint.StaticPart staticPart, Object obj, Object obj2, Object obj3, Object obj4) {
        return new JoinPointImpl(staticPart, obj, obj2, new Object[]{obj3, obj4});
    }

    public static JoinPoint makeJP(JoinPoint.StaticPart staticPart, Object obj, Object obj2, Object[] objArr) {
        return new JoinPointImpl(staticPart, obj, obj2, objArr);
    }

    public MethodSignature makeMethodSig(String str) {
        MethodSignatureImpl methodSignatureImpl = new MethodSignatureImpl(str);
        methodSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return methodSignatureImpl;
    }

    public MethodSignature makeMethodSig(String str, String str2, String str3, String str4, String str5, String str6, String str7) throws NumberFormatException {
        int i = Integer.parseInt(str, 16);
        Class clsMakeClass = makeClass(str3, this.lookupClassLoader);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i2 = 0; i2 < iCountTokens; i2++) {
            clsArr[i2] = makeClass(stringTokenizer.nextToken(), this.lookupClassLoader);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i3 = 0; i3 < iCountTokens2; i3++) {
            strArr[i3] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i4 = 0; i4 < iCountTokens3; i4++) {
            clsArr2[i4] = makeClass(stringTokenizer3.nextToken(), this.lookupClassLoader);
        }
        return new MethodSignatureImpl(i, str2, clsMakeClass, clsArr, strArr, clsArr2, makeClass(str7, this.lookupClassLoader));
    }

    public MethodSignature makeMethodSig(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        MethodSignatureImpl methodSignatureImpl = new MethodSignatureImpl(i, str, cls, clsArr, strArr, clsArr2, cls2);
        methodSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return methodSignatureImpl;
    }

    public ConstructorSignature makeConstructorSig(String str) {
        ConstructorSignatureImpl constructorSignatureImpl = new ConstructorSignatureImpl(str);
        constructorSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return constructorSignatureImpl;
    }

    public ConstructorSignature makeConstructorSig(String str, String str2, String str3, String str4, String str5) throws NumberFormatException {
        int i = Integer.parseInt(str, 16);
        Class clsMakeClass = makeClass(str2, this.lookupClassLoader);
        StringTokenizer stringTokenizer = new StringTokenizer(str3, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i2 = 0; i2 < iCountTokens; i2++) {
            clsArr[i2] = makeClass(stringTokenizer.nextToken(), this.lookupClassLoader);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str4, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i3 = 0; i3 < iCountTokens2; i3++) {
            strArr[i3] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str5, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i4 = 0; i4 < iCountTokens3; i4++) {
            clsArr2[i4] = makeClass(stringTokenizer3.nextToken(), this.lookupClassLoader);
        }
        ConstructorSignatureImpl constructorSignatureImpl = new ConstructorSignatureImpl(i, clsMakeClass, clsArr, strArr, clsArr2);
        constructorSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return constructorSignatureImpl;
    }

    public ConstructorSignature makeConstructorSig(int i, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        ConstructorSignatureImpl constructorSignatureImpl = new ConstructorSignatureImpl(i, cls, clsArr, strArr, clsArr2);
        constructorSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return constructorSignatureImpl;
    }

    public FieldSignature makeFieldSig(String str) {
        FieldSignatureImpl fieldSignatureImpl = new FieldSignatureImpl(str);
        fieldSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return fieldSignatureImpl;
    }

    public FieldSignature makeFieldSig(String str, String str2, String str3, String str4) {
        FieldSignatureImpl fieldSignatureImpl = new FieldSignatureImpl(Integer.parseInt(str, 16), str2, makeClass(str3, this.lookupClassLoader), makeClass(str4, this.lookupClassLoader));
        fieldSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return fieldSignatureImpl;
    }

    public FieldSignature makeFieldSig(int i, String str, Class cls, Class cls2) {
        FieldSignatureImpl fieldSignatureImpl = new FieldSignatureImpl(i, str, cls, cls2);
        fieldSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return fieldSignatureImpl;
    }

    public AdviceSignature makeAdviceSig(String str) {
        AdviceSignatureImpl adviceSignatureImpl = new AdviceSignatureImpl(str);
        adviceSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return adviceSignatureImpl;
    }

    public AdviceSignature makeAdviceSig(String str, String str2, String str3, String str4, String str5, String str6, String str7) throws NumberFormatException {
        int i = Integer.parseInt(str, 16);
        Class clsMakeClass = makeClass(str3, this.lookupClassLoader);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i2 = 0; i2 < iCountTokens; i2++) {
            clsArr[i2] = makeClass(stringTokenizer.nextToken(), this.lookupClassLoader);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i3 = 0; i3 < iCountTokens2; i3++) {
            strArr[i3] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i4 = 0; i4 < iCountTokens3; i4++) {
            clsArr2[i4] = makeClass(stringTokenizer3.nextToken(), this.lookupClassLoader);
        }
        AdviceSignatureImpl adviceSignatureImpl = new AdviceSignatureImpl(i, str2, clsMakeClass, clsArr, strArr, clsArr2, makeClass(str7, this.lookupClassLoader));
        adviceSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return adviceSignatureImpl;
    }

    public AdviceSignature makeAdviceSig(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        AdviceSignatureImpl adviceSignatureImpl = new AdviceSignatureImpl(i, str, cls, clsArr, strArr, clsArr2, cls2);
        adviceSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return adviceSignatureImpl;
    }

    public InitializerSignature makeInitializerSig(String str) {
        InitializerSignatureImpl initializerSignatureImpl = new InitializerSignatureImpl(str);
        initializerSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return initializerSignatureImpl;
    }

    public InitializerSignature makeInitializerSig(String str, String str2) {
        InitializerSignatureImpl initializerSignatureImpl = new InitializerSignatureImpl(Integer.parseInt(str, 16), makeClass(str2, this.lookupClassLoader));
        initializerSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return initializerSignatureImpl;
    }

    public InitializerSignature makeInitializerSig(int i, Class cls) {
        InitializerSignatureImpl initializerSignatureImpl = new InitializerSignatureImpl(i, cls);
        initializerSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return initializerSignatureImpl;
    }

    public CatchClauseSignature makeCatchClauseSig(String str) {
        CatchClauseSignatureImpl catchClauseSignatureImpl = new CatchClauseSignatureImpl(str);
        catchClauseSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return catchClauseSignatureImpl;
    }

    public CatchClauseSignature makeCatchClauseSig(String str, String str2, String str3) {
        CatchClauseSignatureImpl catchClauseSignatureImpl = new CatchClauseSignatureImpl(makeClass(str, this.lookupClassLoader), makeClass(new StringTokenizer(str2, ":").nextToken(), this.lookupClassLoader), new StringTokenizer(str3, ":").nextToken());
        catchClauseSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return catchClauseSignatureImpl;
    }

    public CatchClauseSignature makeCatchClauseSig(Class cls, Class cls2, String str) {
        CatchClauseSignatureImpl catchClauseSignatureImpl = new CatchClauseSignatureImpl(cls, cls2, str);
        catchClauseSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return catchClauseSignatureImpl;
    }

    public LockSignature makeLockSig(String str) {
        LockSignatureImpl lockSignatureImpl = new LockSignatureImpl(str);
        lockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return lockSignatureImpl;
    }

    public LockSignature makeLockSig() {
        LockSignatureImpl lockSignatureImpl = new LockSignatureImpl(makeClass("Ljava/lang/Object;", this.lookupClassLoader));
        lockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return lockSignatureImpl;
    }

    public LockSignature makeLockSig(Class cls) {
        LockSignatureImpl lockSignatureImpl = new LockSignatureImpl(cls);
        lockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return lockSignatureImpl;
    }

    public UnlockSignature makeUnlockSig(String str) {
        UnlockSignatureImpl unlockSignatureImpl = new UnlockSignatureImpl(str);
        unlockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return unlockSignatureImpl;
    }

    public UnlockSignature makeUnlockSig() {
        UnlockSignatureImpl unlockSignatureImpl = new UnlockSignatureImpl(makeClass("Ljava/lang/Object;", this.lookupClassLoader));
        unlockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return unlockSignatureImpl;
    }

    public UnlockSignature makeUnlockSig(Class cls) {
        UnlockSignatureImpl unlockSignatureImpl = new UnlockSignatureImpl(cls);
        unlockSignatureImpl.setLookupClassLoader(this.lookupClassLoader);
        return unlockSignatureImpl;
    }

    public SourceLocation makeSourceLoc(int i, int i2) {
        return new SourceLocationImpl(this.lexicalClass, this.filename, i);
    }
}
