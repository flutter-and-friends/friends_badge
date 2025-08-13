package kotlin.concurrent;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Timer.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001aJ\u0010\u0000\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001aL\u0010\u0000\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a\u001a\u0010\u0010\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001aJ\u0010\u0010\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001aL\u0010\u0010\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a$\u0010\u0011\u001a\u00020\f2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a0\u0010\u0012\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a8\u0010\u0012\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a0\u0010\u0012\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a8\u0010\u0012\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a8\u0010\u0015\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b\u001a8\u0010\u0015\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0019\b\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH\u0087\b¨\u0006\u0016"}, m849d2 = {"fixedRateTimer", "Ljava/util/Timer;", "name", "", "daemon", "", "startAt", "Ljava/util/Date;", "period", "", "action", "Lkotlin/Function1;", "Ljava/util/TimerTask;", "", "Lkotlin/ExtensionFunctionType;", "initialDelay", "timer", "timerTask", "schedule", "time", "delay", "scheduleAtFixedRate", "kotlin-stdlib"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public final class TimersKt {
    private static final TimerTask schedule(Timer timer, long j, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.schedule(c15641, j);
        return c15641;
    }

    private static final TimerTask schedule(Timer timer, Date date, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.schedule(c15641, date);
        return c15641;
    }

    private static final TimerTask schedule(Timer timer, long j, long j2, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.schedule(c15641, j, j2);
        return c15641;
    }

    private static final TimerTask schedule(Timer timer, Date date, long j, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.schedule(c15641, date, j);
        return c15641;
    }

    private static final TimerTask scheduleAtFixedRate(Timer timer, long j, long j2, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.scheduleAtFixedRate(c15641, j, j2);
        return c15641;
    }

    private static final TimerTask scheduleAtFixedRate(Timer timer, Date date, long j, Function1<? super TimerTask, Unit> function1) {
        C15641 c15641 = new C15641(function1);
        timer.scheduleAtFixedRate(c15641, date, j);
        return c15641;
    }

    public static final Timer timer(String str, boolean z) {
        return str == null ? new Timer(z) : new Timer(str, z);
    }

    static /* synthetic */ Timer timer$default(String str, boolean z, long j, long j2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = (String) null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        Timer timer = timer(str, z);
        timer.schedule(new C15641(function1), j, j2);
        return timer;
    }

    private static final Timer timer(String str, boolean z, long j, long j2, Function1<? super TimerTask, Unit> function1) {
        Timer timer = timer(str, z);
        timer.schedule(new C15641(function1), j, j2);
        return timer;
    }

    static /* synthetic */ Timer timer$default(String str, boolean z, Date date, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = (String) null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Timer timer = timer(str, z);
        timer.schedule(new C15641(function1), date, j);
        return timer;
    }

    private static final Timer timer(String str, boolean z, Date date, long j, Function1<? super TimerTask, Unit> function1) {
        Timer timer = timer(str, z);
        timer.schedule(new C15641(function1), date, j);
        return timer;
    }

    static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z, long j, long j2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = (String) null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        Timer timer = timer(str, z);
        timer.scheduleAtFixedRate(new C15641(function1), j, j2);
        return timer;
    }

    private static final Timer fixedRateTimer(String str, boolean z, long j, long j2, Function1<? super TimerTask, Unit> function1) {
        Timer timer = timer(str, z);
        timer.scheduleAtFixedRate(new C15641(function1), j, j2);
        return timer;
    }

    static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z, Date date, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = (String) null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Timer timer = timer(str, z);
        timer.scheduleAtFixedRate(new C15641(function1), date, j);
        return timer;
    }

    private static final Timer fixedRateTimer(String str, boolean z, Date date, long j, Function1<? super TimerTask, Unit> function1) {
        Timer timer = timer(str, z);
        timer.scheduleAtFixedRate(new C15641(function1), date, j);
        return timer;
    }

    /* compiled from: Timer.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m849d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "run", "", "kotlin-stdlib"}, m850k = 1, m851mv = {1, 1, 16})
    /* renamed from: kotlin.concurrent.TimersKt$timerTask$1 */
    public static final class C15641 extends TimerTask {
        final /* synthetic */ Function1 $action;

        public C15641(Function1 function1) {
            this.$action = function1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.$action.invoke(this);
        }
    }

    private static final TimerTask timerTask(Function1<? super TimerTask, Unit> function1) {
        return new C15641(function1);
    }
}
