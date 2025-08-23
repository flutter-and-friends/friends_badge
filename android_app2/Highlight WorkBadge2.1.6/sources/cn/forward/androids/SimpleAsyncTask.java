package cn.forward.androids;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import cn.forward.androids.utils.LogUtil;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public abstract class SimpleAsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final ThreadPoolExecutor EXECUTOR;
    private static final ThreadPoolExecutor EXECUTOR_LIFO;
    private static final ThreadPoolExecutor EXECUTOR_PRIORITY;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "SimpleAsyncTask";
    private static final int MAXIMUM_POOL_SIZE;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    private static volatile Executor sDefaultExecutor;
    private static InternalHandler sHandler;
    private static int sMaxSizeLIFO;
    private static final ThreadFactory sThreadFactory;
    private volatile Status mStatus = Status.PENDING;
    private final AtomicBoolean mCancelled = new AtomicBoolean();
    private final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final WorkerRunnable<Params, Result> mWorker = new WorkerRunnable<Params, Result>() { // from class: cn.forward.androids.SimpleAsyncTask.3
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            SimpleAsyncTask.this.mTaskInvoked.set(true);
            Process.setThreadPriority(10);
            Object objDoInBackground = SimpleAsyncTask.this.doInBackground(this.mParams);
            Binder.flushPendingCommands();
            return (Result) SimpleAsyncTask.this.postResult(objDoInBackground);
        }
    };
    private final FutureTask<Result> mFuture = new FutureTask<Result>(this.mWorker) { // from class: cn.forward.androids.SimpleAsyncTask.4
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                SimpleAsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                LogUtil.w(SimpleAsyncTask.LOG_TAG, e);
            } catch (CancellationException unused) {
                SimpleAsyncTask.this.postResultIfNotInvoked(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            }
        }
    };

    public enum Policy {
        FIFO,
        LIFO
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result doInBackground(Params... paramsArr);

    protected void onCancelled() {
    }

    protected void onPostExecute(Result result) {
    }

    protected void onPreExecute() {
    }

    protected void onProgressUpdate(Progress... progressArr) {
    }

    static {
        int i = CPU_COUNT;
        CORE_POOL_SIZE = i + 1;
        MAXIMUM_POOL_SIZE = (i * 2) + 1;
        sThreadFactory = new ThreadFactory() { // from class: cn.forward.androids.SimpleAsyncTask.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "SimpleAsyncTask #" + this.mCount.getAndIncrement());
            }
        };
        sMaxSizeLIFO = 128;
        EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, TimeUnit.MILLISECONDS, new LinkedBlockingStack(Policy.FIFO));
        EXECUTOR_LIFO = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, TimeUnit.MILLISECONDS, new LinkedBlockingStack(Policy.LIFO));
        EXECUTOR_PRIORITY = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue<Runnable>() { // from class: cn.forward.androids.SimpleAsyncTask.2
            @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
            public boolean offer(Runnable runnable) {
                return super.offer((AnonymousClass2) new CompareRunnableFIFOWrapper((CompareRunnable) runnable));
            }
        });
        sDefaultExecutor = EXECUTOR;
    }

    public static class LinkedBlockingStack<T> extends LinkedBlockingDeque<T> {
        private static Policy sPolicy = Policy.FIFO;

        private LinkedBlockingStack(Policy policy) {
            sPolicy = policy;
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t) {
            if (AnonymousClass5.$SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy[sPolicy.ordinal()] == 1) {
                offerFirst(t);
                if (size() > SimpleAsyncTask.sMaxSizeLIFO) {
                    removeLast();
                }
                return true;
            }
            offerLast(t);
            return true;
        }
    }

    private static class CompareRunnableFIFOWrapper implements CompareRunnable<CompareRunnableFIFOWrapper> {
        private static AtomicLong mCount = new AtomicLong(0);
        private CompareRunnable mRunnable;
        private final long mSecondPriority;

        private CompareRunnableFIFOWrapper(CompareRunnable compareRunnable) {
            this.mRunnable = compareRunnable;
            this.mSecondPriority = mCount.incrementAndGet();
        }

        public CompareRunnable getRunnable() {
            return this.mRunnable;
        }

        public long getSecondPriority() {
            return this.mSecondPriority;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRunnable.run();
        }

        @Override // java.lang.Comparable
        public int compareTo(CompareRunnableFIFOWrapper compareRunnableFIFOWrapper) {
            int iCompareTo = this.mRunnable.compareTo(compareRunnableFIFOWrapper.getRunnable());
            return iCompareTo == 0 ? this.mSecondPriority < compareRunnableFIFOWrapper.getSecondPriority() ? -1 : 1 : iCompareTo;
        }
    }

    private static Handler getHandler() {
        InternalHandler internalHandler;
        synchronized (SimpleAsyncTask.class) {
            if (sHandler == null) {
                sHandler = new InternalHandler();
            }
            internalHandler = sHandler;
        }
        return internalHandler;
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public boolean reset() {
        if (Status.RUNNING == this.mStatus) {
            return false;
        }
        this.mStatus = Status.PENDING;
        this.mCancelled.set(false);
        this.mTaskInvoked.set(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result postResult(Result result) {
        getHandler().obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    protected void onCancelled(Result result) {
        onCancelled();
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    public final Result get() throws ExecutionException, InterruptedException {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mFuture.get(j, timeUnit);
    }

    public final SimpleAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final SimpleAsyncTask<Params, Progress, Result> executeLIFO(Params... paramsArr) {
        return executeOnExecutor(EXECUTOR_LIFO, paramsArr);
    }

    public final SimpleAsyncTask<Params, Progress, Result> executePriority(Priority priority, Params... paramsArr) {
        if (priority == null) {
            throw new RuntimeException("priority is null!");
        }
        return executeOnExecutor(EXECUTOR_PRIORITY, priority, paramsArr);
    }

    public final SimpleAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        return executeOnExecutor(executor, null, paramsArr);
    }

    /* renamed from: cn.forward.androids.SimpleAsyncTask$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy;
        static final /* synthetic */ int[] $SwitchMap$cn$forward$androids$SimpleAsyncTask$Status = new int[Status.values().length];

        static {
            try {
                $SwitchMap$cn$forward$androids$SimpleAsyncTask$Status[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$forward$androids$SimpleAsyncTask$Status[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy = new int[Policy.values().length];
            try {
                $SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy[Policy.LIFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private final SimpleAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Priority priority, Params... paramsArr) {
        if (this.mStatus != Status.PENDING) {
            int i = AnonymousClass5.$SwitchMap$cn$forward$androids$SimpleAsyncTask$Status[this.mStatus.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.mStatus = Status.RUNNING;
        onPreExecute();
        this.mWorker.mParams = paramsArr;
        if (priority != null) {
            executor.execute(new PriorityRunnable(priority, this.mFuture));
        } else {
            executor.execute(this.mFuture);
        }
        return this;
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    protected final void publishProgress(Progress... progressArr) {
        if (isCancelled()) {
            return;
        }
        getHandler().obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }

    private static class InternalHandler extends Handler {
        public InternalHandler() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i = message.what;
            if (i == 1) {
                asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
            } else {
                if (i != 2) {
                    return;
                }
                asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
            }
        }
    }

    private static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable() {
        }
    }

    private static class AsyncTaskResult<Data> {
        final Data[] mData;
        final SimpleAsyncTask mTask;

        AsyncTaskResult(SimpleAsyncTask simpleAsyncTask, Data... dataArr) {
            this.mTask = simpleAsyncTask;
            this.mData = dataArr;
        }
    }
}
