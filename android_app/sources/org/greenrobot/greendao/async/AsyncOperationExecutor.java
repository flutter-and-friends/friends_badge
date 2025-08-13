package org.greenrobot.greendao.async;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.query.Query;

/* loaded from: classes2.dex */
class AsyncOperationExecutor implements Runnable, Handler.Callback {
    private static ExecutorService executorService = Executors.newCachedThreadPool();
    private int countOperationsCompleted;
    private int countOperationsEnqueued;
    private volatile boolean executorRunning;
    private Handler handlerMainThread;
    private int lastSequenceNumber;
    private volatile AsyncOperationListener listener;
    private volatile AsyncOperationListener listenerMainThread;
    private final BlockingQueue<AsyncOperation> queue = new LinkedBlockingQueue();
    private volatile int maxOperationCountToMerge = 50;
    private volatile int waitForMergeMillis = 50;

    AsyncOperationExecutor() {
    }

    public void enqueue(AsyncOperation asyncOperation) {
        synchronized (this) {
            int i = this.lastSequenceNumber + 1;
            this.lastSequenceNumber = i;
            asyncOperation.sequenceNumber = i;
            this.queue.add(asyncOperation);
            this.countOperationsEnqueued++;
            if (!this.executorRunning) {
                this.executorRunning = true;
                executorService.execute(this);
            }
        }
    }

    public int getMaxOperationCountToMerge() {
        return this.maxOperationCountToMerge;
    }

    public void setMaxOperationCountToMerge(int i) {
        this.maxOperationCountToMerge = i;
    }

    public int getWaitForMergeMillis() {
        return this.waitForMergeMillis;
    }

    public void setWaitForMergeMillis(int i) {
        this.waitForMergeMillis = i;
    }

    public AsyncOperationListener getListener() {
        return this.listener;
    }

    public void setListener(AsyncOperationListener asyncOperationListener) {
        this.listener = asyncOperationListener;
    }

    public AsyncOperationListener getListenerMainThread() {
        return this.listenerMainThread;
    }

    public void setListenerMainThread(AsyncOperationListener asyncOperationListener) {
        this.listenerMainThread = asyncOperationListener;
    }

    public synchronized boolean isCompleted() {
        return this.countOperationsEnqueued == this.countOperationsCompleted;
    }

    public synchronized void waitForCompletion() {
        while (!isCompleted()) {
            try {
                wait();
            } catch (InterruptedException e) {
                throw new DaoException("Interrupted while waiting for all operations to complete", e);
            }
        }
    }

    public synchronized boolean waitForCompletion(int i) {
        if (!isCompleted()) {
            try {
                wait(i);
            } catch (InterruptedException e) {
                throw new DaoException("Interrupted while waiting for all operations to complete", e);
            }
        }
        return isCompleted();
    }

    @Override // java.lang.Runnable
    public void run() {
        AsyncOperation asyncOperationPoll;
        while (true) {
            try {
                AsyncOperation asyncOperationPoll2 = this.queue.poll(1L, TimeUnit.SECONDS);
                if (asyncOperationPoll2 == null) {
                    synchronized (this) {
                        asyncOperationPoll2 = this.queue.poll();
                        if (asyncOperationPoll2 == null) {
                            return;
                        }
                    }
                }
                if (asyncOperationPoll2.isMergeTx() && (asyncOperationPoll = this.queue.poll(this.waitForMergeMillis, TimeUnit.MILLISECONDS)) != null) {
                    if (asyncOperationPoll2.isMergeableWith(asyncOperationPoll)) {
                        mergeTxAndExecute(asyncOperationPoll2, asyncOperationPoll);
                    } else {
                        executeOperationAndPostCompleted(asyncOperationPoll2);
                        executeOperationAndPostCompleted(asyncOperationPoll);
                    }
                } else {
                    executeOperationAndPostCompleted(asyncOperationPoll2);
                }
            } catch (InterruptedException e) {
                DaoLog.m898w(Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.executorRunning = false;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
    
        r8.setTransactionSuccessful();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        r8.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0067, code lost:
    
        r9 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
    
        org.greenrobot.greendao.DaoLog.m894i("Async transaction could not be ended, success so far was: " + r4, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void mergeTxAndExecute(org.greenrobot.greendao.async.AsyncOperation r8, org.greenrobot.greendao.async.AsyncOperation r9) {
        /*
            r7 = this;
            java.lang.String r0 = "Async transaction could not be ended, success so far was: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r1.add(r8)
            r1.add(r9)
            org.greenrobot.greendao.database.Database r8 = r8.getDatabase()
            r8.beginTransaction()
            r9 = 0
            r2 = 0
        L16:
            int r3 = r1.size()     // Catch: java.lang.Throwable -> Lb5
            r4 = 1
            if (r2 >= r3) goto L63
            java.lang.Object r3 = r1.get(r2)     // Catch: java.lang.Throwable -> Lb5
            org.greenrobot.greendao.async.AsyncOperation r3 = (org.greenrobot.greendao.async.AsyncOperation) r3     // Catch: java.lang.Throwable -> Lb5
            r7.executeOperation(r3)     // Catch: java.lang.Throwable -> Lb5
            boolean r5 = r3.isFailed()     // Catch: java.lang.Throwable -> Lb5
            if (r5 == 0) goto L2d
            goto L63
        L2d:
            int r5 = r1.size()     // Catch: java.lang.Throwable -> Lb5
            int r5 = r5 - r4
            if (r2 != r5) goto L60
            java.util.concurrent.BlockingQueue<org.greenrobot.greendao.async.AsyncOperation> r5 = r7.queue     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r5 = r5.peek()     // Catch: java.lang.Throwable -> Lb5
            org.greenrobot.greendao.async.AsyncOperation r5 = (org.greenrobot.greendao.async.AsyncOperation) r5     // Catch: java.lang.Throwable -> Lb5
            int r6 = r7.maxOperationCountToMerge     // Catch: java.lang.Throwable -> Lb5
            if (r2 >= r6) goto L5c
            boolean r3 = r3.isMergeableWith(r5)     // Catch: java.lang.Throwable -> Lb5
            if (r3 == 0) goto L5c
            java.util.concurrent.BlockingQueue<org.greenrobot.greendao.async.AsyncOperation> r3 = r7.queue     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r3 = r3.remove()     // Catch: java.lang.Throwable -> Lb5
            org.greenrobot.greendao.async.AsyncOperation r3 = (org.greenrobot.greendao.async.AsyncOperation) r3     // Catch: java.lang.Throwable -> Lb5
            if (r3 != r5) goto L54
            r1.add(r3)     // Catch: java.lang.Throwable -> Lb5
            goto L60
        L54:
            org.greenrobot.greendao.DaoException r1 = new org.greenrobot.greendao.DaoException     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r2 = "Internal error: peeked op did not match removed op"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb5
            throw r1     // Catch: java.lang.Throwable -> Lb5
        L5c:
            r8.setTransactionSuccessful()     // Catch: java.lang.Throwable -> Lb5
            goto L64
        L60:
            int r2 = r2 + 1
            goto L16
        L63:
            r4 = 0
        L64:
            r8.endTransaction()     // Catch: java.lang.RuntimeException -> L69
            r9 = r4
            goto L7c
        L69:
            r8 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r4)
            java.lang.String r0 = r2.toString()
            org.greenrobot.greendao.DaoLog.m894i(r0, r8)
        L7c:
            if (r9 == 0) goto L98
            int r8 = r1.size()
            java.util.Iterator r9 = r1.iterator()
        L86:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto Lb4
            java.lang.Object r0 = r9.next()
            org.greenrobot.greendao.async.AsyncOperation r0 = (org.greenrobot.greendao.async.AsyncOperation) r0
            r0.mergedOperationsCount = r8
            r7.handleOperationCompleted(r0)
            goto L86
        L98:
            java.lang.String r8 = "Reverted merged transaction because one of the operations failed. Executing operations one by one instead..."
            org.greenrobot.greendao.DaoLog.m893i(r8)
            java.util.Iterator r8 = r1.iterator()
        La1:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lb4
            java.lang.Object r9 = r8.next()
            org.greenrobot.greendao.async.AsyncOperation r9 = (org.greenrobot.greendao.async.AsyncOperation) r9
            r9.reset()
            r7.executeOperationAndPostCompleted(r9)
            goto La1
        Lb4:
            return
        Lb5:
            r1 = move-exception
            r8.endTransaction()     // Catch: java.lang.RuntimeException -> Lba
            goto Lcd
        Lba:
            r8 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r9)
            java.lang.String r9 = r2.toString()
            org.greenrobot.greendao.DaoLog.m894i(r9, r8)
        Lcd:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.greendao.async.AsyncOperationExecutor.mergeTxAndExecute(org.greenrobot.greendao.async.AsyncOperation, org.greenrobot.greendao.async.AsyncOperation):void");
    }

    private void handleOperationCompleted(AsyncOperation asyncOperation) {
        asyncOperation.setCompleted();
        AsyncOperationListener asyncOperationListener = this.listener;
        if (asyncOperationListener != null) {
            asyncOperationListener.onAsyncOperationCompleted(asyncOperation);
        }
        if (this.listenerMainThread != null) {
            if (this.handlerMainThread == null) {
                this.handlerMainThread = new Handler(Looper.getMainLooper(), this);
            }
            this.handlerMainThread.sendMessage(this.handlerMainThread.obtainMessage(1, asyncOperation));
        }
        synchronized (this) {
            this.countOperationsCompleted++;
            if (this.countOperationsCompleted == this.countOperationsEnqueued) {
                notifyAll();
            }
        }
    }

    private void executeOperationAndPostCompleted(AsyncOperation asyncOperation) {
        executeOperation(asyncOperation);
        handleOperationCompleted(asyncOperation);
    }

    private void executeOperation(AsyncOperation asyncOperation) {
        asyncOperation.timeStarted = System.currentTimeMillis();
        try {
            switch (asyncOperation.type) {
                case Delete:
                    asyncOperation.dao.delete(asyncOperation.parameter);
                    break;
                case DeleteInTxIterable:
                    asyncOperation.dao.deleteInTx((Iterable<Object>) asyncOperation.parameter);
                    break;
                case DeleteInTxArray:
                    asyncOperation.dao.deleteInTx((Object[]) asyncOperation.parameter);
                    break;
                case Insert:
                    asyncOperation.dao.insert(asyncOperation.parameter);
                    break;
                case InsertInTxIterable:
                    asyncOperation.dao.insertInTx((Iterable<Object>) asyncOperation.parameter);
                    break;
                case InsertInTxArray:
                    asyncOperation.dao.insertInTx((Object[]) asyncOperation.parameter);
                    break;
                case InsertOrReplace:
                    asyncOperation.dao.insertOrReplace(asyncOperation.parameter);
                    break;
                case InsertOrReplaceInTxIterable:
                    asyncOperation.dao.insertOrReplaceInTx((Iterable<Object>) asyncOperation.parameter);
                    break;
                case InsertOrReplaceInTxArray:
                    asyncOperation.dao.insertOrReplaceInTx((Object[]) asyncOperation.parameter);
                    break;
                case Update:
                    asyncOperation.dao.update(asyncOperation.parameter);
                    break;
                case UpdateInTxIterable:
                    asyncOperation.dao.updateInTx((Iterable<Object>) asyncOperation.parameter);
                    break;
                case UpdateInTxArray:
                    asyncOperation.dao.updateInTx((Object[]) asyncOperation.parameter);
                    break;
                case TransactionRunnable:
                    executeTransactionRunnable(asyncOperation);
                    break;
                case TransactionCallable:
                    executeTransactionCallable(asyncOperation);
                    break;
                case QueryList:
                    asyncOperation.result = ((Query) asyncOperation.parameter).forCurrentThread().list();
                    break;
                case QueryUnique:
                    asyncOperation.result = ((Query) asyncOperation.parameter).forCurrentThread().unique();
                    break;
                case DeleteByKey:
                    asyncOperation.dao.deleteByKey(asyncOperation.parameter);
                    break;
                case DeleteAll:
                    asyncOperation.dao.deleteAll();
                    break;
                case Load:
                    asyncOperation.result = asyncOperation.dao.load(asyncOperation.parameter);
                    break;
                case LoadAll:
                    asyncOperation.result = asyncOperation.dao.loadAll();
                    break;
                case Count:
                    asyncOperation.result = Long.valueOf(asyncOperation.dao.count());
                    break;
                case Refresh:
                    asyncOperation.dao.refresh(asyncOperation.parameter);
                    break;
                default:
                    throw new DaoException("Unsupported operation: " + asyncOperation.type);
            }
        } catch (Throwable th) {
            asyncOperation.throwable = th;
        }
        asyncOperation.timeCompleted = System.currentTimeMillis();
    }

    private void executeTransactionRunnable(AsyncOperation asyncOperation) {
        Database database = asyncOperation.getDatabase();
        database.beginTransaction();
        try {
            ((Runnable) asyncOperation.parameter).run();
            database.setTransactionSuccessful();
        } finally {
            database.endTransaction();
        }
    }

    private void executeTransactionCallable(AsyncOperation asyncOperation) throws Exception {
        Database database = asyncOperation.getDatabase();
        database.beginTransaction();
        try {
            asyncOperation.result = ((Callable) asyncOperation.parameter).call();
            database.setTransactionSuccessful();
        } finally {
            database.endTransaction();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        AsyncOperationListener asyncOperationListener = this.listenerMainThread;
        if (asyncOperationListener == null) {
            return false;
        }
        asyncOperationListener.onAsyncOperationCompleted((AsyncOperation) message.obj);
        return false;
    }
}
