.class public Lcn/highlight/tx/app/entity/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/highlight/tx/app/entity/Operation;->status:I

    .line 13
    iput-object p2, p0, Lcn/highlight/tx/app/entity/Operation;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/highlight/tx/app/entity/Operation;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 17
    iget v0, p0, Lcn/highlight/tx/app/entity/Operation;->status:I

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Operation;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcn/highlight/tx/app/entity/Operation;->status:I

    return-void
.end method
