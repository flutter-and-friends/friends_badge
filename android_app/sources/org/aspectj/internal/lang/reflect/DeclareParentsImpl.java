package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Type;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.DeclareParents;
import org.aspectj.lang.reflect.TypePattern;

/* loaded from: classes2.dex */
public class DeclareParentsImpl implements DeclareParents {
    private AjType<?> declaringType;
    private String firstMissingTypeName;
    private boolean isExtends;
    private Type[] parents;
    private boolean parentsError;
    private String parentsString;
    private TypePattern targetTypesPattern;

    public DeclareParentsImpl(String str, String str2, boolean z, AjType<?> ajType) {
        this.parentsError = false;
        this.targetTypesPattern = new TypePatternImpl(str);
        this.isExtends = z;
        this.declaringType = ajType;
        this.parentsString = str2;
        try {
            this.parents = StringToType.commaSeparatedListToTypeArray(str2, ajType.getJavaClass());
        } catch (ClassNotFoundException e) {
            this.parentsError = true;
            this.firstMissingTypeName = e.getMessage();
        }
    }

    @Override // org.aspectj.lang.reflect.DeclareParents
    public AjType getDeclaringType() {
        return this.declaringType;
    }

    @Override // org.aspectj.lang.reflect.DeclareParents
    public TypePattern getTargetTypesPattern() {
        return this.targetTypesPattern;
    }

    @Override // org.aspectj.lang.reflect.DeclareParents
    public boolean isExtends() {
        return this.isExtends;
    }

    @Override // org.aspectj.lang.reflect.DeclareParents
    public boolean isImplements() {
        return !this.isExtends;
    }

    @Override // org.aspectj.lang.reflect.DeclareParents
    public Type[] getParentTypes() throws ClassNotFoundException {
        if (this.parentsError) {
            throw new ClassNotFoundException(this.firstMissingTypeName);
        }
        return this.parents;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare parents : ");
        stringBuffer.append(getTargetTypesPattern().asString());
        stringBuffer.append(isExtends() ? " extends " : " implements ");
        stringBuffer.append(this.parentsString);
        return stringBuffer.toString();
    }
}
