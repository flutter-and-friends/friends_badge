.class public Lcom/yanzhenjie/permission/install/NRequestFactory;
.super Ljava/lang/Object;
.source "NRequestFactory.java"

# interfaces
.implements Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 1

    .line 28
    new-instance v0, Lcom/yanzhenjie/permission/install/NRequest;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/permission/install/NRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
