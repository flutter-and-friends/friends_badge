package kotlin.jvm.internal;

import kotlin.reflect.KMutableProperty;

/* loaded from: classes2.dex */
public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    public MutablePropertyReference(Object obj) {
        super(obj);
    }
}
