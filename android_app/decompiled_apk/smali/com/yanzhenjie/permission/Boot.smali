.class public Lcom/yanzhenjie/permission/Boot;
.super Ljava/lang/Object;
.source "Boot.java"

# interfaces
.implements Lcom/yanzhenjie/permission/option/ActivityOption;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;,
        Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;
    }
.end annotation


# static fields
.field private static final INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;

.field private static final OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 43
    new-instance v0, Lcom/yanzhenjie/permission/install/ORequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/install/ORequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Boot;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/yanzhenjie/permission/install/NRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/install/NRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Boot;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;

    .line 48
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 49
    new-instance v0, Lcom/yanzhenjie/permission/overlay/MRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/overlay/MRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Boot;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;

    goto :goto_1

    .line 51
    :cond_1
    new-instance v0, Lcom/yanzhenjie/permission/overlay/LRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/overlay/LRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Boot;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/yanzhenjie/permission/Boot;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public install()Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 2

    .line 84
    sget-object v0, Lcom/yanzhenjie/permission/Boot;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Boot;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Boot$InstallRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/install/InstallRequest;

    move-result-object v0

    return-object v0
.end method

.method public notification()Lcom/yanzhenjie/permission/notify/option/NotifyOption;
    .locals 2

    .line 94
    new-instance v0, Lcom/yanzhenjie/permission/notify/Notify;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Boot;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/notify/Notify;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method

.method public overlay()Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 2

    .line 89
    sget-object v0, Lcom/yanzhenjie/permission/Boot;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Boot;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Boot$OverlayRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;

    move-result-object v0

    return-object v0
.end method

.method public runtime()Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;
    .locals 2

    .line 79
    new-instance v0, Lcom/yanzhenjie/permission/runtime/Runtime;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Boot;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/Runtime;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method

.method public bridge synthetic runtime()Lcom/yanzhenjie/permission/runtime/option/RuntimeOption;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Boot;->runtime()Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;

    move-result-object v0

    return-object v0
.end method
