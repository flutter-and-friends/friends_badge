package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UArraySorting.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0012\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\bH\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000bH\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, m849d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "sortArray-GBYM_sE", "([B)V", "sortArray--ajY-9A", "([I)V", "sortArray-QwZRm1k", "([J)V", "sortArray-rL5Bavg", "([S)V", "kotlin-stdlib"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public final class UArraySortingKt {
    /* renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m1253partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM1000getimpl = UByteArray.m1000getimpl(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = bM1000getimpl & 255;
                if (Intrinsics.compare(UByteArray.m1000getimpl(bArr, i) & 255, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m1000getimpl(bArr, i2) & 255, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM1000getimpl2 = UByteArray.m1000getimpl(bArr, i);
                UByteArray.m1005setVurrAj0(bArr, i, UByteArray.m1000getimpl(bArr, i2));
                UByteArray.m1005setVurrAj0(bArr, i2, bM1000getimpl2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m1257quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM1253partition4UcCI2c = m1253partition4UcCI2c(bArr, i, i2);
        int i3 = iM1253partition4UcCI2c - 1;
        if (i < i3) {
            m1257quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM1253partition4UcCI2c < i2) {
            m1257quickSort4UcCI2c(bArr, iM1253partition4UcCI2c, i2);
        }
    }

    /* renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m1254partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM1233getimpl = UShortArray.m1233getimpl(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM1233getimpl = UShortArray.m1233getimpl(sArr, i) & UShort.MAX_VALUE;
                i3 = sM1233getimpl & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM1233getimpl, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m1233getimpl(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM1233getimpl2 = UShortArray.m1233getimpl(sArr, i);
                UShortArray.m1238set01HTLdE(sArr, i, UShortArray.m1233getimpl(sArr, i2));
                UShortArray.m1238set01HTLdE(sArr, i2, sM1233getimpl2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m1258quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM1254partitionAa5vz7o = m1254partitionAa5vz7o(sArr, i, i2);
        int i3 = iM1254partitionAa5vz7o - 1;
        if (i < i3) {
            m1258quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM1254partitionAa5vz7o < i2) {
            m1258quickSortAa5vz7o(sArr, iM1254partitionAa5vz7o, i2);
        }
    }

    /* renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m1255partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM1069getimpl = UIntArray.m1069getimpl(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.uintCompare(UIntArray.m1069getimpl(iArr, i), iM1069getimpl) < 0) {
                i++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m1069getimpl(iArr, i2), iM1069getimpl) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM1069getimpl2 = UIntArray.m1069getimpl(iArr, i);
                UIntArray.m1074setVXSXFK8(iArr, i, UIntArray.m1069getimpl(iArr, i2));
                UIntArray.m1074setVXSXFK8(iArr, i2, iM1069getimpl2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m1259quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM1255partitionoBK06Vg = m1255partitionoBK06Vg(iArr, i, i2);
        int i3 = iM1255partitionoBK06Vg - 1;
        if (i < i3) {
            m1259quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM1255partitionoBK06Vg < i2) {
            m1259quickSortoBK06Vg(iArr, iM1255partitionoBK06Vg, i2);
        }
    }

    /* renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m1252partitionnroSd4(long[] jArr, int i, int i2) {
        long jM1138getimpl = ULongArray.m1138getimpl(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.ulongCompare(ULongArray.m1138getimpl(jArr, i), jM1138getimpl) < 0) {
                i++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m1138getimpl(jArr, i2), jM1138getimpl) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM1138getimpl2 = ULongArray.m1138getimpl(jArr, i);
                ULongArray.m1143setk8EXiF4(jArr, i, ULongArray.m1138getimpl(jArr, i2));
                ULongArray.m1143setk8EXiF4(jArr, i2, jM1138getimpl2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m1256quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM1252partitionnroSd4 = m1252partitionnroSd4(jArr, i, i2);
        int i3 = iM1252partitionnroSd4 - 1;
        if (i < i3) {
            m1256quickSortnroSd4(jArr, i, i3);
        }
        if (iM1252partitionnroSd4 < i2) {
            m1256quickSortnroSd4(jArr, iM1252partitionnroSd4, i2);
        }
    }

    /* renamed from: sortArray-GBYM_sE, reason: not valid java name */
    public static final void m1261sortArrayGBYM_sE(byte[] array) {
        Intrinsics.checkParameterIsNotNull(array, "array");
        m1257quickSort4UcCI2c(array, 0, UByteArray.m1001getSizeimpl(array) - 1);
    }

    /* renamed from: sortArray-rL5Bavg, reason: not valid java name */
    public static final void m1263sortArrayrL5Bavg(short[] array) {
        Intrinsics.checkParameterIsNotNull(array, "array");
        m1258quickSortAa5vz7o(array, 0, UShortArray.m1234getSizeimpl(array) - 1);
    }

    /* renamed from: sortArray--ajY-9A, reason: not valid java name */
    public static final void m1260sortArrayajY9A(int[] array) {
        Intrinsics.checkParameterIsNotNull(array, "array");
        m1259quickSortoBK06Vg(array, 0, UIntArray.m1070getSizeimpl(array) - 1);
    }

    /* renamed from: sortArray-QwZRm1k, reason: not valid java name */
    public static final void m1262sortArrayQwZRm1k(long[] array) {
        Intrinsics.checkParameterIsNotNull(array, "array");
        m1256quickSortnroSd4(array, 0, ULongArray.m1139getSizeimpl(array) - 1);
    }
}
