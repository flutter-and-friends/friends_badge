.class final Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
.super Ljava/lang/Object;
.source "CompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/CompoundFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadPropertyStorage"
.end annotation


# instance fields
.field data:[B

.field number:I

.field propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;


# direct methods
.method constructor <init>(Ljxl/biff/BaseCompoundFile$PropertyStorage;[BI)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 173
    iput-object p2, p0, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    .line 174
    iput p3, p0, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->number:I

    return-void
.end method
