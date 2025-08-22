.class public Lcom/uhf/api/cls/Reader$ReaderVersion;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReaderVersion"
.end annotation


# instance fields
.field public hardwareVer:Ljava/lang/String;

.field public softwareVer:Ljava/lang/String;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ReaderVersion;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 1028
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1029
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    return-void
.end method
