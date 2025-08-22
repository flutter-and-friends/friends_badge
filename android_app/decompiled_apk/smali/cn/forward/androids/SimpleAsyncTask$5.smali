.class synthetic Lcn/forward/androids/SimpleAsyncTask$5;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy:[I

.field static final synthetic $SwitchMap$cn$forward$androids$SimpleAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 304
    invoke-static {}, Lcn/forward/androids/SimpleAsyncTask$Status;->values()[Lcn/forward/androids/SimpleAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Status:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Status:[I

    sget-object v2, Lcn/forward/androids/SimpleAsyncTask$Status;->RUNNING:Lcn/forward/androids/SimpleAsyncTask$Status;

    invoke-virtual {v2}, Lcn/forward/androids/SimpleAsyncTask$Status;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Status:[I

    sget-object v2, Lcn/forward/androids/SimpleAsyncTask$Status;->FINISHED:Lcn/forward/androids/SimpleAsyncTask$Status;

    invoke-virtual {v2}, Lcn/forward/androids/SimpleAsyncTask$Status;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    invoke-static {}, Lcn/forward/androids/SimpleAsyncTask$Policy;->values()[Lcn/forward/androids/SimpleAsyncTask$Policy;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy:[I

    :try_start_2
    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy:[I

    sget-object v2, Lcn/forward/androids/SimpleAsyncTask$Policy;->LIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    invoke-virtual {v2}, Lcn/forward/androids/SimpleAsyncTask$Policy;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
