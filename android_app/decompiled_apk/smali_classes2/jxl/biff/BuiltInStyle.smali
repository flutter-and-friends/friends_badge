.class Ljxl/biff/BuiltInStyle;
.super Ljxl/biff/WritableRecordData;
.source "BuiltInStyle.java"


# instance fields
.field private styleNumber:I

.field private xfIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 46
    sget-object v0, Ljxl/biff/Type;->STYLE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 48
    iput p1, p0, Ljxl/biff/BuiltInStyle;->xfIndex:I

    .line 49
    iput p2, p0, Ljxl/biff/BuiltInStyle;->styleNumber:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 61
    iget v1, p0, Ljxl/biff/BuiltInStyle;->xfIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v1, 0x1

    .line 64
    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    iget v1, p0, Ljxl/biff/BuiltInStyle;->styleNumber:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    return-object v0
.end method
