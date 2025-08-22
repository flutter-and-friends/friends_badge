.class public Lcom/yanzhenjie/permission/overlay/MRequestFactory;
.super Ljava/lang/Object;
.source "MRequestFactory.java"

# interfaces
.implements Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 1

    .line 28
    new-instance v0, Lcom/yanzhenjie/permission/overlay/MRequest;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/permission/overlay/MRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
