package kotlin.coroutines.experimental.migration;

import androidx.exifinterface.media.ExifInterface;
import com.yuyh.library.imgsel.p017ui.ISListActivity;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutinesMigration.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, m849d2 = {"Lkotlin/coroutines/experimental/migration/ContinuationMigration;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/experimental/Continuation;", "(Lkotlin/coroutines/experimental/Continuation;)V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContinuation", "()Lkotlin/coroutines/experimental/Continuation;", "resumeWith", "", ISListActivity.INTENT_RESULT, "Lkotlin/Result;", "(Ljava/lang/Object;)V", "kotlin-stdlib-coroutines"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
final class ContinuationMigration<T> implements Continuation<T> {
    private final CoroutineContext context;
    private final kotlin.coroutines.experimental.Continuation<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationMigration(kotlin.coroutines.experimental.Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        this.continuation = continuation;
        this.context = CoroutinesMigrationKt.toCoroutineContext(this.continuation.getContext());
    }

    public final kotlin.coroutines.experimental.Continuation<T> getContinuation() {
        return this.continuation;
    }

    @Override // kotlin.coroutines.Continuation
    /* renamed from: getContext, reason: from getter */
    public CoroutineContext get$context() {
        return this.context;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        if (Result.m940isSuccessimpl(result)) {
            this.continuation.resume(result);
        }
        Throwable thM936exceptionOrNullimpl = Result.m936exceptionOrNullimpl(result);
        if (thM936exceptionOrNullimpl != null) {
            this.continuation.resumeWithException(thM936exceptionOrNullimpl);
        }
    }
}
