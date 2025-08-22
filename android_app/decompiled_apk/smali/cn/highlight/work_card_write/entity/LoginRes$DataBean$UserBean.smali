.class public Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;
.super Ljava/lang/Object;
.source "LoginRes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/entity/LoginRes$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBean"
.end annotation


# instance fields
.field private nickName:Ljava/lang/String;

.field private organizationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->organizationId:Ljava/lang/String;

    return-object v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrganizationId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->organizationId:Ljava/lang/String;

    return-void
.end method
