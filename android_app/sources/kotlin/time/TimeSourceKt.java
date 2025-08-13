package kotlin.time;

import cn.forward.androids.BuildConfig;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TimeSource.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u00006\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\n\u001a\u001d\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0002\u0010\u0006*P\b\u0007\u0010\u0007\"\u00020\b2\u00020\bB\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000bB\u0002\b\fB0\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\"\b\u0010\u0012\u001e\b\u000bB\u001a\b\u0011\u0012\f\b\u0012\u0012\b\b\fJ\u0004\b\b(\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015*P\b\u0007\u0010\u0016\"\u00020\u00022\u00020\u0002B\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000bB\u0002\b\fB0\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0017\u0012\"\b\u0010\u0012\u001e\b\u000bB\u001a\b\u0011\u0012\f\b\u0012\u0012\b\b\fJ\u0004\b\b(\u0018\u0012\b\b\u0014\u0012\u0004\b\b(\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m849d2 = {"compareTo", "", "Lkotlin/time/TimeMark;", "other", "minus", "Lkotlin/time/Duration;", "(Lkotlin/time/TimeMark;Lkotlin/time/TimeMark;)D", "Clock", "Lkotlin/time/TimeSource;", "Lkotlin/SinceKotlin;", "version", BuildConfig.VERSION_NAME, "Lkotlin/time/ExperimentalTime;", "Lkotlin/Deprecated;", "message", "Use TimeSource interface instead.", "replaceWith", "Lkotlin/ReplaceWith;", "imports", "kotlin.time.TimeSource", "expression", "TimeSource", "ClockMark", "Use TimeMark class instead.", "kotlin.time.TimeMark", "TimeMark", "kotlin-stdlib"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public final class TimeSourceKt {
    @Deprecated(message = "Use TimeSource interface instead.", replaceWith = @ReplaceWith(expression = "TimeSource", imports = {"kotlin.time.TimeSource"}))
    public static /* synthetic */ void Clock$annotations() {
    }

    @Deprecated(message = "Use TimeMark class instead.", replaceWith = @ReplaceWith(expression = "TimeMark", imports = {"kotlin.time.TimeMark"}))
    public static /* synthetic */ void ClockMark$annotations() {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Subtracting one TimeMark from another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    private static final double minus(TimeMark minus, TimeMark timeMark) {
        Intrinsics.checkParameterIsNotNull(minus, "$this$minus");
        throw new Error("Operation is disallowed.");
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Comparing one TimeMark to another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    private static final int compareTo(TimeMark compareTo, TimeMark timeMark) {
        Intrinsics.checkParameterIsNotNull(compareTo, "$this$compareTo");
        throw new Error("Operation is disallowed.");
    }
}
