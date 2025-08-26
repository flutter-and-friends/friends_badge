package kotlin;

import kotlin.jvm.functions.Function1;

/* compiled from: UIntArray.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u001f\u0010\b\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m849d2 = {"UIntArray", "Lkotlin/UIntArray;", "size", "", "init", "Lkotlin/Function1;", "Lkotlin/UInt;", "(ILkotlin/jvm/functions/Function1;)[I", "uintArrayOf", "elements", "uintArrayOf--ajY-9A", "([I)[I", "kotlin-stdlib"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public final class UIntArrayKt {
    /* renamed from: uintArrayOf--ajY-9A, reason: not valid java name */
    private static final int[] m1079uintArrayOfajY9A(int... iArr) {
        return iArr;
    }

    private static final int[] UIntArray(int i, Function1<? super Integer, UInt> function1) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = function1.invoke(Integer.valueOf(i2)).getData();
        }
        return UIntArray.m1064constructorimpl(iArr);
    }
}
