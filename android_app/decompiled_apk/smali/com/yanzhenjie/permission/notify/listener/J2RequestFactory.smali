.class public Lcom/yanzhenjie/permission/notify/listener/J2RequestFactory;
.super Ljava/lang/Object;
.source "J2RequestFactory.java"

# interfaces
.implements Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
    .locals 1

    .line 28
    new-instance v0, Lcom/yanzhenjie/permission/notify/listener/J2Request;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/permission/notify/listener/J2Request;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
