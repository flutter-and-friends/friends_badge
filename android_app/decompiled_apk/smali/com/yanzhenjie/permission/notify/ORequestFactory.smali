.class public Lcom/yanzhenjie/permission/notify/ORequestFactory;
.super Ljava/lang/Object;
.source "ORequestFactory.java"

# interfaces
.implements Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/notify/PermissionRequest;
    .locals 1

    .line 27
    new-instance v0, Lcom/yanzhenjie/permission/notify/ORequest;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/permission/notify/ORequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
