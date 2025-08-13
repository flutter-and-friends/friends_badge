package kotlin;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BigDecimals.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\u0011\u001a\u00020\u0001*\u00020\u0001H\u0087\n¨\u0006\u0012"}, m849d2 = {"dec", "Ljava/math/BigDecimal;", "div", "other", "inc", "minus", "mod", "plus", "rem", "times", "toBigDecimal", "", "mathContext", "Ljava/math/MathContext;", "", "", "", "unaryMinus", "kotlin-stdlib"}, m850k = 5, m851mv = {1, 1, 16}, m853xi = 1, m854xs = "kotlin/NumbersKt")
/* loaded from: classes2.dex */
class NumbersKt__BigDecimalsKt {
    private static final BigDecimal plus(BigDecimal plus, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(plus, "$this$plus");
        BigDecimal bigDecimalAdd = plus.add(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalAdd, "this.add(other)");
        return bigDecimalAdd;
    }

    private static final BigDecimal minus(BigDecimal minus, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(minus, "$this$minus");
        BigDecimal bigDecimalSubtract = minus.subtract(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalSubtract, "this.subtract(other)");
        return bigDecimalSubtract;
    }

    private static final BigDecimal times(BigDecimal times, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(times, "$this$times");
        BigDecimal bigDecimalMultiply = times.multiply(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalMultiply, "this.multiply(other)");
        return bigDecimalMultiply;
    }

    private static final BigDecimal div(BigDecimal div, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(div, "$this$div");
        BigDecimal bigDecimalDivide = div.divide(bigDecimal, RoundingMode.HALF_EVEN);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalDivide, "this.divide(other, RoundingMode.HALF_EVEN)");
        return bigDecimalDivide;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use rem(other) instead", replaceWith = @ReplaceWith(expression = "rem(other)", imports = {}))
    private static final BigDecimal mod(BigDecimal mod, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(mod, "$this$mod");
        BigDecimal bigDecimalRemainder = mod.remainder(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalRemainder, "this.remainder(other)");
        return bigDecimalRemainder;
    }

    private static final BigDecimal rem(BigDecimal rem, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(rem, "$this$rem");
        BigDecimal bigDecimalRemainder = rem.remainder(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalRemainder, "this.remainder(other)");
        return bigDecimalRemainder;
    }

    private static final BigDecimal unaryMinus(BigDecimal unaryMinus) {
        Intrinsics.checkParameterIsNotNull(unaryMinus, "$this$unaryMinus");
        BigDecimal bigDecimalNegate = unaryMinus.negate();
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalNegate, "this.negate()");
        return bigDecimalNegate;
    }

    private static final BigDecimal inc(BigDecimal inc) {
        Intrinsics.checkParameterIsNotNull(inc, "$this$inc");
        BigDecimal bigDecimalAdd = inc.add(BigDecimal.ONE);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalAdd, "this.add(BigDecimal.ONE)");
        return bigDecimalAdd;
    }

    private static final BigDecimal dec(BigDecimal dec) {
        Intrinsics.checkParameterIsNotNull(dec, "$this$dec");
        BigDecimal bigDecimalSubtract = dec.subtract(BigDecimal.ONE);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalSubtract, "this.subtract(BigDecimal.ONE)");
        return bigDecimalSubtract;
    }

    private static final BigDecimal toBigDecimal(int i) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(i);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        return bigDecimalValueOf;
    }

    private static final BigDecimal toBigDecimal(int i, MathContext mathContext) {
        return new BigDecimal(i, mathContext);
    }

    private static final BigDecimal toBigDecimal(long j) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(j);
        Intrinsics.checkExpressionValueIsNotNull(bigDecimalValueOf, "BigDecimal.valueOf(this)");
        return bigDecimalValueOf;
    }

    private static final BigDecimal toBigDecimal(long j, MathContext mathContext) {
        return new BigDecimal(j, mathContext);
    }

    private static final BigDecimal toBigDecimal(float f) {
        return new BigDecimal(String.valueOf(f));
    }

    private static final BigDecimal toBigDecimal(float f, MathContext mathContext) {
        return new BigDecimal(String.valueOf(f), mathContext);
    }

    private static final BigDecimal toBigDecimal(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    private static final BigDecimal toBigDecimal(double d, MathContext mathContext) {
        return new BigDecimal(String.valueOf(d), mathContext);
    }
}
