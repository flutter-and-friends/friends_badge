.class Ljxl/write/biff/Weird1Record;
.super Ljxl/biff/WritableRecordData;
.source "Weird1Record.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/Type;->WEIRD1:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    return-object v0
.end method
