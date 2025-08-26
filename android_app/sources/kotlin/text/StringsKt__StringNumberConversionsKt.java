package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringNumberConversions.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, m849d2 = {"numberFormatError", "", "input", "", "toByteOrNull", "", "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", "", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", "", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "toShortOrNull", "", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, m850k = 5, m851mv = {1, 1, 16}, m853xi = 1, m854xs = "kotlin/text/StringsKt")
/* loaded from: classes2.dex */
class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    public static final Byte toByteOrNull(String toByteOrNull) {
        Intrinsics.checkParameterIsNotNull(toByteOrNull, "$this$toByteOrNull");
        return StringsKt.toByteOrNull(toByteOrNull, 10);
    }

    public static final Byte toByteOrNull(String toByteOrNull, int i) {
        int iIntValue;
        Intrinsics.checkParameterIsNotNull(toByteOrNull, "$this$toByteOrNull");
        Integer intOrNull = StringsKt.toIntOrNull(toByteOrNull, i);
        if (intOrNull == null || (iIntValue = intOrNull.intValue()) < -128 || iIntValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) iIntValue);
    }

    public static final Short toShortOrNull(String toShortOrNull) {
        Intrinsics.checkParameterIsNotNull(toShortOrNull, "$this$toShortOrNull");
        return StringsKt.toShortOrNull(toShortOrNull, 10);
    }

    public static final Short toShortOrNull(String toShortOrNull, int i) {
        int iIntValue;
        Intrinsics.checkParameterIsNotNull(toShortOrNull, "$this$toShortOrNull");
        Integer intOrNull = StringsKt.toIntOrNull(toShortOrNull, i);
        if (intOrNull == null || (iIntValue = intOrNull.intValue()) < -32768 || iIntValue > 32767) {
            return null;
        }
        return Short.valueOf((short) iIntValue);
    }

    public static final Integer toIntOrNull(String toIntOrNull) {
        Intrinsics.checkParameterIsNotNull(toIntOrNull, "$this$toIntOrNull");
        return StringsKt.toIntOrNull(toIntOrNull, 10);
    }

    public static final Integer toIntOrNull(String toIntOrNull, int i) {
        boolean z;
        int i2;
        Intrinsics.checkParameterIsNotNull(toIntOrNull, "$this$toIntOrNull");
        CharsKt.checkRadix(i);
        int length = toIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = toIntOrNull.charAt(0);
        int i4 = -2147483647;
        int i5 = 1;
        if (cCharAt >= '0') {
            z = false;
            i5 = 0;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                i4 = Integer.MIN_VALUE;
                z = true;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z = false;
            }
        }
        int i6 = -59652323;
        while (i5 < length) {
            int iDigitOf = CharsKt.digitOf(toIntOrNull.charAt(i5), i);
            if (iDigitOf < 0) {
                return null;
            }
            if ((i3 < i6 && (i6 != -59652323 || i3 < (i6 = i4 / i))) || (i2 = i3 * i) < i4 + iDigitOf) {
                return null;
            }
            i3 = i2 - iDigitOf;
            i5++;
        }
        return z ? Integer.valueOf(i3) : Integer.valueOf(-i3);
    }

    public static final Long toLongOrNull(String toLongOrNull) {
        Intrinsics.checkParameterIsNotNull(toLongOrNull, "$this$toLongOrNull");
        return StringsKt.toLongOrNull(toLongOrNull, 10);
    }

    public static final Long toLongOrNull(String toLongOrNull, int i) {
        Intrinsics.checkParameterIsNotNull(toLongOrNull, "$this$toLongOrNull");
        CharsKt.checkRadix(i);
        int length = toLongOrNull.length();
        if (length == 0) {
            return null;
        }
        boolean z = false;
        char cCharAt = toLongOrNull.charAt(0);
        long j = -9223372036854775807L;
        int i2 = 1;
        if (cCharAt >= '0') {
            i2 = 0;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                j = Long.MIN_VALUE;
                z = true;
            } else if (cCharAt != '+') {
                return null;
            }
        }
        long j2 = -256204778801521550L;
        long j3 = 0;
        long j4 = -256204778801521550L;
        while (i2 < length) {
            int iDigitOf = CharsKt.digitOf(toLongOrNull.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (j3 < j4) {
                if (j4 == j2) {
                    j4 = j / i;
                    if (j3 < j4) {
                    }
                }
                return null;
            }
            long j5 = j3 * i;
            long j6 = iDigitOf;
            if (j5 < j + j6) {
                return null;
            }
            j3 = j5 - j6;
            i2++;
            j2 = -256204778801521550L;
        }
        return z ? Long.valueOf(j3) : Long.valueOf(-j3);
    }

    public static final Void numberFormatError(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }
}
