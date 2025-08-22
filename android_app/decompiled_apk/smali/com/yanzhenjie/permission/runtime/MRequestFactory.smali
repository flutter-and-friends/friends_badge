.class public Lcom/yanzhenjie/permission/runtime/MRequestFactory;
.super Ljava/lang/Object;
.source "MRequestFactory.java"

# interfaces
.implements Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 1

    .line 27
    new-instance v0, Lcom/yanzhenjie/permission/runtime/MRequest;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/permission/runtime/MRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
