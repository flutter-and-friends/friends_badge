package kotlin.coroutines.experimental.migration;

import kotlin.Metadata;
import kotlin.coroutines.experimental.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutinesMigration.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002B!\u0012\u001a\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002¢\u0006\u0002\u0010\u0007J\u0019\u0010\n\u001a\u0004\u0018\u00010\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002R%\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, m849d2 = {"Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction0Migration;", "R", "Lkotlin/Function1;", "Lkotlin/coroutines/experimental/Continuation;", "", "function", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function1;)V", "getFunction", "()Lkotlin/jvm/functions/Function1;", "invoke", "continuation", "kotlin-stdlib-coroutines"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
final class ExperimentalSuspendFunction0Migration<R> implements Function1<Continuation<? super R>, Object> {
    private final Function1<kotlin.coroutines.Continuation<? super R>, Object> function;

    /* JADX WARN: Multi-variable type inference failed */
    public ExperimentalSuspendFunction0Migration(Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends Object> function) {
        Intrinsics.checkParameterIsNotNull(function, "function");
        this.function = function;
    }

    public final Function1<kotlin.coroutines.Continuation<? super R>, Object> getFunction() {
        return this.function;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Continuation<? super R> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return this.function.invoke(CoroutinesMigrationKt.toContinuation(continuation));
    }
}
