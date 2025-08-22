.class public Lcom/uhf/api/cls/Reader$TagFilter_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagFilter_ST"
.end annotation


# instance fields
.field public bank:I

.field public fdata:[B

.field public flen:I

.field public isInvert:I

.field public startaddr:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    new-array p1, p1, [B

    .line 967
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    return-void
.end method
