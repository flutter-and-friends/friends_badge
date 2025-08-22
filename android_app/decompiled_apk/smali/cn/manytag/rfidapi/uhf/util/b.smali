.class public Lcn/manytag/rfidapi/uhf/util/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/StringBuffer;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/manytag/rfidapi/uhf/util/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/util/b;->b:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcn/manytag/rfidapi/uhf/util/b;->c:I

    iput v0, p0, Lcn/manytag/rfidapi/uhf/util/b;->d:I

    return-void
.end method
