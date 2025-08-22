.class public Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NXPEASAlarmPara"
.end annotation


# instance fields
.field public DR:B

.field public MC:B

.field public TimeOut:S

.field public TrExt:B

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
