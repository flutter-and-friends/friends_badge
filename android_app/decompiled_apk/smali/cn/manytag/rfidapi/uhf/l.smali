.class public Lcn/manytag/rfidapi/uhf/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;


# instance fields
.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/manytag/rfidapi/uhf/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/l;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcn/manytag/rfidapi/uhf/l;->c:I

    iput v0, p0, Lcn/manytag/rfidapi/uhf/l;->d:I

    return-void
.end method
