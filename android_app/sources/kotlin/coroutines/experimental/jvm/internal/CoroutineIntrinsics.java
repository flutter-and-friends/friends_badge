package kotlin.coroutines.experimental.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.ContinuationInterceptor;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutineIntrinsics.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001¨\u0006\u0007"}, m849d2 = {"interceptContinuationIfNeeded", "Lkotlin/coroutines/experimental/Continuation;", ExifInterface.GPS_DIRECTION_TRUE, "context", "Lkotlin/coroutines/experimental/CoroutineContext;", "continuation", "normalizeContinuation", "kotlin-stdlib-coroutines"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes2.dex */
public final class CoroutineIntrinsics {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Continuation<T> normalizeContinuation(Continuation<? super T> continuation) {
        Continuation<T> continuation2;
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        CoroutineImpl coroutineImpl = !(continuation instanceof CoroutineImpl) ? null : continuation;
        return (coroutineImpl == null || (continuation2 = (Continuation<T>) coroutineImpl.getFacade()) == null) ? continuation : continuation2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Continuation<T> interceptContinuationIfNeeded(CoroutineContext context, Continuation<? super T> continuation) {
        Continuation<T> continuationInterceptContinuation;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) context.get(ContinuationInterceptor.INSTANCE);
        return (continuationInterceptor == null || (continuationInterceptContinuation = continuationInterceptor.interceptContinuation(continuation)) == null) ? continuation : continuationInterceptContinuation;
    }
}
