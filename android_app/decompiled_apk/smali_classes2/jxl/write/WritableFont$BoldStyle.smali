.class Ljxl/write/WritableFont$BoldStyle;
.super Ljava/lang/Object;
.source "WritableFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/WritableFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoldStyle"
.end annotation


# instance fields
.field public value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ljxl/write/WritableFont$BoldStyle;->value:I

    return-void
.end method
