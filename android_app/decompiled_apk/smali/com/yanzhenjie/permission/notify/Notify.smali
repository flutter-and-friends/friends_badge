.class public Lcom/yanzhenjie/permission/notify/Notify;
.super Ljava/lang/Object;
.source "Notify.java"

# interfaces
.implements Lcom/yanzhenjie/permission/notify/option/NotifyOption;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;,
        Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;
    }
.end annotation


# static fields
.field private static final LISTENER_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;

.field private static final PERMISSION_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/yanzhenjie/permission/notify/ORequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/notify/ORequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/notify/Notify;->PERMISSION_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/yanzhenjie/permission/notify/NRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/notify/NRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/notify/Notify;->PERMISSION_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;

    .line 41
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 42
    new-instance v0, Lcom/yanzhenjie/permission/notify/listener/J2RequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/notify/listener/J2RequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/notify/Notify;->LISTENER_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;

    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lcom/yanzhenjie/permission/notify/listener/J1RequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/notify/listener/J1RequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/notify/Notify;->LISTENER_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/Notify;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public listener()Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
    .locals 2

    .line 75
    sget-object v0, Lcom/yanzhenjie/permission/notify/Notify;->LISTENER_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/notify/Notify;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/notify/Notify$ListenerRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;

    move-result-object v0

    return-object v0
.end method

.method public permission()Lcom/yanzhenjie/permission/notify/PermissionRequest;
    .locals 2

    .line 71
    sget-object v0, Lcom/yanzhenjie/permission/notify/Notify;->PERMISSION_REQUEST_FACTORY:Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/notify/Notify;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/notify/Notify$PermissionRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/notify/PermissionRequest;

    move-result-object v0

    return-object v0
.end method
