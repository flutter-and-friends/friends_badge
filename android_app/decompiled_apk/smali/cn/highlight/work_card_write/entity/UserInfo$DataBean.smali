.class public Lcn/highlight/work_card_write/entity/UserInfo$DataBean;
.super Ljava/lang/Object;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/entity/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private department:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDepartment()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/UserInfo$DataBean;->department:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/UserInfo$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/UserInfo$DataBean;->department:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/UserInfo$DataBean;->name:Ljava/lang/String;

    return-void
.end method
