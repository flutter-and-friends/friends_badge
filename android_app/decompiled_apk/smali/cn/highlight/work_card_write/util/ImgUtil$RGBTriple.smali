.class public Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;
.super Ljava/lang/Object;
.source "ImgUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/util/ImgUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RGBTriple"
.end annotation


# instance fields
.field public final channels:[B


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    .line 404
    iput-object v0, p0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    return-void
.end method
