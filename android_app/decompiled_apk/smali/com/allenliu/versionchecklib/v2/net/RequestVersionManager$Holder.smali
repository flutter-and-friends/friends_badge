.class public Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$Holder;
.super Ljava/lang/Object;
.source "RequestVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;-><init>()V

    sput-object v0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$Holder;->instance:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
