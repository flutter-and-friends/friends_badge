.class public abstract Ljxl/biff/RecordData;
.super Ljava/lang/Object;
.source "RecordData.java"


# instance fields
.field private code:I

.field private record:Ljxl/read/biff/Record;


# direct methods
.method protected constructor <init>(Ljxl/biff/Type;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget p1, p1, Ljxl/biff/Type;->value:I

    iput p1, p0, Ljxl/biff/RecordData;->code:I

    return-void
.end method

.method protected constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljxl/biff/RecordData;->record:Ljxl/read/biff/Record;

    .line 48
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getCode()I

    move-result p1

    iput p1, p0, Ljxl/biff/RecordData;->code:I

    return-void
.end method


# virtual methods
.method protected final getCode()I
    .locals 1

    .line 78
    iget v0, p0, Ljxl/biff/RecordData;->code:I

    return v0
.end method

.method protected getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 68
    iget-object v0, p0, Ljxl/biff/RecordData;->record:Ljxl/read/biff/Record;

    return-object v0
.end method
