.class public Lcn/highlight/work_card_write/entity/LoginRes$DataBean;
.super Ljava/lang/Object;
.source "LoginRes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/entity/LoginRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;
    }
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->user:Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->user:Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;

    return-void
.end method
