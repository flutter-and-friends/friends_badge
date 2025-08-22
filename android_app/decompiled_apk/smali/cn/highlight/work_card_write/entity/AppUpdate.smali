.class public Lcn/highlight/work_card_write/entity/AppUpdate;
.super Ljava/lang/Object;
.source "AppUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;

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
.method public getCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->code:I

    return v0
.end method

.method public getData()Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->data:Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->code:I

    return-void
.end method

.method public setData(Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->data:Lcn/highlight/work_card_write/entity/AppUpdate$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/AppUpdate;->status:Ljava/lang/String;

    return-void
.end method
