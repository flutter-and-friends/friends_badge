.class public Lcom/uhf/api/cls/Reader$AntPower;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntPower"
.end annotation


# instance fields
.field public antid:I

.field public readPower:S

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;

.field public writePower:S


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$AntPower;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
