package kotlin;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BigIntegers.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0087\f\u001a\u0015\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0087\f\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0010\u001a\u00020\u0011*\u00020\u0001H\u0087\b\u001a!\u0010\u0010\u001a\u00020\u0011*\u00020\u00012\b\b\u0002\u0010\u0012\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\rH\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0016H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f¨\u0006\u0019"}, m849d2 = {"and", "Ljava/math/BigInteger;", "other", "dec", "div", "inc", "inv", "minus", "or", "plus", "rem", "shl", "n", "", "shr", "times", "toBigDecimal", "Ljava/math/BigDecimal;", "scale", "mathContext", "Ljava/math/MathContext;", "toBigInteger", "", "unaryMinus", "xor", "kotlin-stdlib"}, m850k = 5, m851mv = {1, 1, 16}, m853xi = 1, m854xs = "kotlin/NumbersKt")
/* loaded from: classes2.dex */
class NumbersKt__BigIntegersKt extends NumbersKt__BigDecimalsKt {
    private static final BigInteger plus(BigInteger plus, BigInteger bigInteger) {
        Intrinsics.checkParameterIsNotNull(plus, "$this$plus");
        BigInteger bigIntegerAdd = plus.add(bigInteger);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerAdd, "this.add(other)");
        return bigIntegerAdd;
    }

    private static final BigInteger minus(BigInteger minus, BigInteger bigInteger) {
        Intrinsics.checkParameterIsNotNull(minus, "$this$minus");
        BigInteger bigIntegerSubtract = minus.subtract(bigInteger);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerSubtract, "this.subtract(other)");
        return bigIntegerSubtract;
    }

    private static final BigInteger times(BigInteger times, BigInteger bigInteger) {
        Intrinsics.checkParameterIsNotNull(times, "$this$times");
        BigInteger bigIntegerMultiply = times.multiply(bigInteger);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerMultiply, "this.multiply(other)");
        return bigIntegerMultiply;
    }

    private static final BigInteger div(BigInteger div, BigInteger bigInteger) {
        Intrinsics.checkParameterIsNotNull(div, "$this$div");
        BigInteger bigIntegerDivide = div.divide(bigInteger);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerDivide, "this.divide(other)");
        return bigIntegerDivide;
    }

    private static final BigInteger rem(BigInteger rem, BigInteger bigInteger) {
        Intrinsics.checkParameterIsNotNull(rem, "$this$rem");
        BigInteger bigIntegerRemainder = rem.remainder(bigInteger);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerRemainder, "this.remainder(other)");
        return bigIntegerRemainder;
    }

    private static final BigInteger unaryMinus(BigInteger unaryMinus) {
        Intrinsics.checkParameterIsNotNull(unaryMinus, "$this$unaryMinus");
        BigInteger bigIntegerNegate = unaryMinus.negate();
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerNegate, "this.negate()");
        return bigIntegerNegate;
    }

    private static final BigInteger inc(BigInteger inc) {
        Intrinsics.checkParameterIsNotNull(inc, "$this$inc");
        BigInteger bigIntegerAdd = inc.add(BigInteger.ONE);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerAdd, "this.add(BigInteger.ONE)");
        return bigIntegerAdd;
    }

    private static final BigInteger dec(BigInteger dec) {
        Intrinsics.checkParameterIsNotNull(dec, "$this$dec");
        BigInteger bigIntegerSubtract = dec.subtract(BigInteger.ONE);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerSubtract, "this.subtract(BigInteger.ONE)");
        return bigIntegerSubtract;
    }

    private static final BigInteger inv(BigInteger bigInteger) {
        BigInteger bigIntegerNot = bigInteger.not();
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerNot, "this.not()");
        return bigIntegerNot;
    }

    private static final BigInteger and(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerAnd = bigInteger.and(bigInteger2);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerAnd, "this.and(other)");
        return bigIntegerAnd;
    }

    /* renamed from: or */
    private static final BigInteger m855or(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerOr = bigInteger.or(bigInteger2);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerOr, "this.or(other)");
        return bigIntegerOr;
    }

    private static final BigInteger xor(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerXor = bigInteger.xor(bigInteger2);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerXor, "this.xor(other)");
        return bigIntegerXor;
    }

    private static final BigInteger shl(BigInteger bigInteger, int i) {
        BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(i);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerShiftLeft, "this.shiftLeft(n)");
        return bigIntegerShiftLeft;
    }

    private static final BigInteger shr(BigInteger bigInteger, int i) {
        BigInteger bigIntegerShiftRight = bigInteger.shiftRight(i);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerShiftRight, "this.shiftRight(n)");
        return bigIntegerShiftRight;
    }

    private static final BigInteger toBigInteger(int i) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(i);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        return bigIntegerValueOf;
    }

    private static final BigInteger toBigInteger(long j) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(j);
        Intrinsics.checkExpressionValueIsNotNull(bigIntegerValueOf, "BigInteger.valueOf(this)");
        return bigIntegerValueOf;
    }

    private static final BigDecimal toBigDecimal(BigInteger bigInteger) {
        return new BigDecimal(bigInteger);
    }

    static /* synthetic */ BigDecimal toBigDecimal$default(BigInteger bigInteger, int i, MathContext mathContext, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            mathContext = MathContext.UNLIMITED;
            Intrinsics.checkExpressionValueIsNotNull(mathContext, "MathContext.UNLIMITED");
        }
        return new BigDecimal(bigInteger, i, mathContext);
    }

    private static final BigDecimal toBigDecimal(BigInteger bigInteger, int i, MathContext mathContext) {
        return new BigDecimal(bigInteger, i, mathContext);
    }
}
