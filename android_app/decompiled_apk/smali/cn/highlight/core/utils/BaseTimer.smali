.class public Lcn/highlight/core/utils/BaseTimer;
.super Ljava/lang/Object;
.source "BaseTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/utils/BaseTimer$TimerCallBack;
    }
.end annotation


# instance fields
.field private bInterval:Z

.field private curMsecond:J

.field private keyRunnable:Ljava/lang/Runnable;

.field private timerCallBack:Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

.field private timerHandler:Landroid/os/Handler;

.field private timerRun:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerCallBack:Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    .line 14
    iput-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->bInterval:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcn/highlight/core/utils/BaseTimer;->curMsecond:J

    .line 24
    new-instance v0, Lcn/highlight/core/utils/BaseTimer$1;

    invoke-direct {v0, p0}, Lcn/highlight/core/utils/BaseTimer$1;-><init>(Lcn/highlight/core/utils/BaseTimer;)V

    iput-object v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcn/highlight/core/utils/BaseTimer$2;

    invoke-direct {v0, p0}, Lcn/highlight/core/utils/BaseTimer$2;-><init>(Lcn/highlight/core/utils/BaseTimer;)V

    iput-object v0, p0, Lcn/highlight/core/utils/BaseTimer;->keyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/core/utils/BaseTimer;)Lcn/highlight/core/utils/BaseTimer$TimerCallBack;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/highlight/core/utils/BaseTimer;->timerCallBack:Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    return-object p0
.end method

.method static synthetic access$102(Lcn/highlight/core/utils/BaseTimer;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    return p1
.end method

.method static synthetic access$200(Lcn/highlight/core/utils/BaseTimer;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/highlight/core/utils/BaseTimer;->bInterval:Z

    return p0
.end method

.method static synthetic access$202(Lcn/highlight/core/utils/BaseTimer;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/highlight/core/utils/BaseTimer;->bInterval:Z

    return p1
.end method

.method static synthetic access$300(Lcn/highlight/core/utils/BaseTimer;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcn/highlight/core/utils/BaseTimer;->curMsecond:J

    return-wide v0
.end method

.method static synthetic access$400(Lcn/highlight/core/utils/BaseTimer;)Landroid/os/Handler;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/highlight/core/utils/BaseTimer;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    return v0
.end method

.method public killTimer()V
    .locals 3

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->bInterval:Z

    .line 55
    iput-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/highlight/core/utils/BaseTimer;->keyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u95ed\u5b9a\u65f6\u5668\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTimer"

    invoke-static {v1, v0}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startInterval(ILcn/highlight/core/utils/BaseTimer$TimerCallBack;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcn/highlight/core/utils/BaseTimer;->startTimer(ILcn/highlight/core/utils/BaseTimer$TimerCallBack;)V

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcn/highlight/core/utils/BaseTimer;->bInterval:Z

    return-void
.end method

.method public startTimer(ILcn/highlight/core/utils/BaseTimer$TimerCallBack;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcn/highlight/core/utils/BaseTimer;->killTimer()V

    int-to-long v0, p1

    .line 72
    iput-wide v0, p0, Lcn/highlight/core/utils/BaseTimer;->curMsecond:J

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    .line 74
    iput-object p2, p0, Lcn/highlight/core/utils/BaseTimer;->timerCallBack:Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    .line 75
    iget-object p1, p0, Lcn/highlight/core/utils/BaseTimer;->timerHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/highlight/core/utils/BaseTimer;->keyRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcn/highlight/core/utils/BaseTimer;->curMsecond:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startTimer(JLcn/highlight/core/utils/BaseTimer$TimerCallBack;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcn/highlight/core/utils/BaseTimer;->killTimer()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcn/highlight/core/utils/BaseTimer;->timerRun:Z

    .line 87
    iput-object p3, p0, Lcn/highlight/core/utils/BaseTimer;->timerCallBack:Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    .line 88
    iget-object p3, p0, Lcn/highlight/core/utils/BaseTimer;->timerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer;->keyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
