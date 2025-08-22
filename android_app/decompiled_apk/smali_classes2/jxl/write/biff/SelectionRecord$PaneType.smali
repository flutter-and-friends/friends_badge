.class Ljxl/write/biff/SelectionRecord$PaneType;
.super Ljava/lang/Object;
.source "SelectionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/SelectionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaneType"
.end annotation


# instance fields
.field val:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljxl/write/biff/SelectionRecord$PaneType;->val:I

    return-void
.end method
