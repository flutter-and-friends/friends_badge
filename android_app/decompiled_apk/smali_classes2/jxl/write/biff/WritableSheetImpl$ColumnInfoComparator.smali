.class Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;
.super Ljava/lang/Object;
.source "WritableSheetImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/WritableSheetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnInfoComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljxl/write/biff/WritableSheetImpl$1;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 284
    :cond_0
    instance-of v0, p1, Ljxl/write/biff/ColumnInfoRecord;

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 285
    instance-of v0, p2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 287
    check-cast p1, Ljxl/write/biff/ColumnInfoRecord;

    .line 288
    check-cast p2, Ljxl/write/biff/ColumnInfoRecord;

    .line 290
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result p1

    invoke-virtual {p2}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
