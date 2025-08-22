.class public final enum Lcn/forward/androids/SimpleAsyncTask$Policy;
.super Ljava/lang/Enum;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/forward/androids/SimpleAsyncTask$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/forward/androids/SimpleAsyncTask$Policy;

.field public static final enum FIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

.field public static final enum LIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$Policy;

    const/4 v1, 0x0

    const-string v2, "FIFO"

    invoke-direct {v0, v2, v1}, Lcn/forward/androids/SimpleAsyncTask$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$Policy;->FIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$Policy;

    const/4 v2, 0x1

    const-string v3, "LIFO"

    invoke-direct {v0, v3, v2}, Lcn/forward/androids/SimpleAsyncTask$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$Policy;->LIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/forward/androids/SimpleAsyncTask$Policy;

    .line 48
    sget-object v3, Lcn/forward/androids/SimpleAsyncTask$Policy;->FIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    aput-object v3, v0, v1

    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$Policy;->LIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    aput-object v1, v0, v2

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$Policy;->$VALUES:[Lcn/forward/androids/SimpleAsyncTask$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/forward/androids/SimpleAsyncTask$Policy;
    .locals 1

    .line 48
    const-class v0, Lcn/forward/androids/SimpleAsyncTask$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/forward/androids/SimpleAsyncTask$Policy;

    return-object p0
.end method

.method public static values()[Lcn/forward/androids/SimpleAsyncTask$Policy;
    .locals 1

    .line 48
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Policy;->$VALUES:[Lcn/forward/androids/SimpleAsyncTask$Policy;

    invoke-virtual {v0}, [Lcn/forward/androids/SimpleAsyncTask$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/forward/androids/SimpleAsyncTask$Policy;

    return-object v0
.end method
