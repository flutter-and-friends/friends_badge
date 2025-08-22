.class public Lcom/uhf/api/cls/Reader$deviceVersion;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "deviceVersion"
.end annotation


# instance fields
.field public hardwareVer:Ljava/lang/String;

.field public softwareVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1033
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 1034
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    return-void
.end method
