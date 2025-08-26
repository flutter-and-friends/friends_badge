package kotlin.reflect;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KMutableProperty;

/* compiled from: KProperty.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\b\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001\u0010J%\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00028\u0002H&¢\u0006\u0002\u0010\u000fR$\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, m849d2 = {"Lkotlin/reflect/KMutableProperty2;", "D", ExifInterface.LONGITUDE_EAST, "R", "Lkotlin/reflect/KProperty2;", "Lkotlin/reflect/KMutableProperty;", "setter", "Lkotlin/reflect/KMutableProperty2$Setter;", "getSetter", "()Lkotlin/reflect/KMutableProperty2$Setter;", "set", "", "receiver1", "receiver2", "value", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "Setter", "kotlin-stdlib"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public interface KMutableProperty2<D, E, R> extends KProperty2<D, E, R>, KMutableProperty<R> {

    /* compiled from: KProperty.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0004\b\u0005\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00030\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, m849d2 = {"Lkotlin/reflect/KMutableProperty2$Setter;", "D", ExifInterface.LONGITUDE_EAST, "R", "Lkotlin/reflect/KMutableProperty$Setter;", "Lkotlin/Function3;", "", "kotlin-stdlib"}, m850k = 1, m851mv = {1, 1, 16})
    public interface Setter<D, E, R> extends KMutableProperty.Setter<R>, Function3<D, E, R, Unit> {
    }

    @Override // kotlin.reflect.KMutableProperty
    Setter<D, E, R> getSetter();

    void set(D receiver1, E receiver2, R value);
}
