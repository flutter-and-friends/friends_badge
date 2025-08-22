.class Ljxl/read/biff/PasswordRecord;
.super Ljxl/biff/RecordData;
.source "PasswordRecord.java"


# instance fields
.field private password:Ljava/lang/String;

.field private passwordHash:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 47
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/PasswordRecord;->passwordHash:I

    return-void
.end method


# virtual methods
.method public getPasswordHash()I
    .locals 1

    .line 60
    iget v0, p0, Ljxl/read/biff/PasswordRecord;->passwordHash:I

    return v0
.end method
