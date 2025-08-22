.class Lcn/highlight/core/zxing/utils/InactivityTimer$InactivityAsyncTask;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/zxing/utils/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactivityAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;


# direct methods
.method constructor <init>(Lcn/highlight/core/zxing/utils/InactivityTimer;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/highlight/core/zxing/utils/InactivityTimer$InactivityAsyncTask;->this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0x493e0

    .line 114
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 115
    sget-object p1, Lcn/highlight/core/zxing/utils/InactivityTimer;->TAG:Ljava/lang/String;

    const-string v0, "Finishing activity due to inactivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/InactivityTimer$InactivityAsyncTask;->this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;

    iget-object p1, p1, Lcn/highlight/core/zxing/utils/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
