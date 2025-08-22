.class final Lcn/highlight/core/zxing/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/zxing/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoFocusTask"
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
.field final synthetic this$0:Lcn/highlight/core/zxing/camera/AutoFocusManager;


# direct methods
.method constructor <init>(Lcn/highlight/core/zxing/camera/AutoFocusManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/highlight/core/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcn/highlight/core/zxing/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 126
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    iget-object p1, p0, Lcn/highlight/core/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcn/highlight/core/zxing/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcn/highlight/core/zxing/camera/AutoFocusManager;->start()V

    const/4 p1, 0x0

    return-object p1
.end method
