package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: _USequences.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m849d2 = {"sum", "Lkotlin/UInt;", "Lkotlin/sequences/Sequence;", "Lkotlin/UByte;", "sumOfUByte", "(Lkotlin/sequences/Sequence;)I", "sumOfUInt", "Lkotlin/ULong;", "sumOfULong", "(Lkotlin/sequences/Sequence;)J", "Lkotlin/UShort;", "sumOfUShort", "kotlin-stdlib"}, m850k = 5, m851mv = {1, 1, 16}, m853xi = 1, m854xs = "kotlin/sequences/USequencesKt")
/* loaded from: classes2.dex */
class USequencesKt___USequencesKt {
    public static final int sumOfUInt(Sequence<UInt> sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        Iterator<UInt> it = sum.iterator();
        int iM1018constructorimpl = 0;
        while (it.hasNext()) {
            iM1018constructorimpl = UInt.m1018constructorimpl(iM1018constructorimpl + it.next().getData());
        }
        return iM1018constructorimpl;
    }

    public static final long sumOfULong(Sequence<ULong> sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        Iterator<ULong> it = sum.iterator();
        long jM1087constructorimpl = 0;
        while (it.hasNext()) {
            jM1087constructorimpl = ULong.m1087constructorimpl(jM1087constructorimpl + it.next().getData());
        }
        return jM1087constructorimpl;
    }

    public static final int sumOfUByte(Sequence<UByte> sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        Iterator<UByte> it = sum.iterator();
        int iM1018constructorimpl = 0;
        while (it.hasNext()) {
            iM1018constructorimpl = UInt.m1018constructorimpl(iM1018constructorimpl + UInt.m1018constructorimpl(it.next().getData() & 255));
        }
        return iM1018constructorimpl;
    }

    public static final int sumOfUShort(Sequence<UShort> sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        Iterator<UShort> it = sum.iterator();
        int iM1018constructorimpl = 0;
        while (it.hasNext()) {
            iM1018constructorimpl = UInt.m1018constructorimpl(iM1018constructorimpl + UInt.m1018constructorimpl(it.next().getData() & UShort.MAX_VALUE));
        }
        return iM1018constructorimpl;
    }
}
