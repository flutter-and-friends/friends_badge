.class public Lcn/highlight/work_card_write/entity/LoginRes;
.super Ljava/lang/Object;
.source "LoginRes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/entity/LoginRes$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcn/highlight/work_card_write/entity/LoginRes$DataBean;

.field private msg:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcn/highlight/work_card_write/entity/LoginRes$DataBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes;->data:Lcn/highlight/work_card_write/entity/LoginRes$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcn/highlight/work_card_write/entity/LoginRes$DataBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes;->data:Lcn/highlight/work_card_write/entity/LoginRes$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes;->status:Ljava/lang/String;

    return-void
.end method
