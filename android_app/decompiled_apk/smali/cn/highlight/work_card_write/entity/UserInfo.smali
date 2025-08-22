.class public Lcn/highlight/work_card_write/entity/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/entity/UserInfo$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/highlight/work_card_write/entity/UserInfo$DataBean;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 12
    iget v0, p0, Lcn/highlight/work_card_write/entity/UserInfo;->code:I

    return v0
.end method

.method public getData()Lcn/highlight/work_card_write/entity/UserInfo$DataBean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/UserInfo;->data:Lcn/highlight/work_card_write/entity/UserInfo$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/UserInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcn/highlight/work_card_write/entity/UserInfo;->code:I

    return-void
.end method

.method public setData(Lcn/highlight/work_card_write/entity/UserInfo$DataBean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/UserInfo;->data:Lcn/highlight/work_card_write/entity/UserInfo$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/UserInfo;->msg:Ljava/lang/String;

    return-void
.end method
