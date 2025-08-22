.class public Lcom/uhf/api/cls/Reader$HardwareDetails;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HardwareDetails"
.end annotation


# instance fields
.field public board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public module:Lcom/uhf/api/cls/Reader$Module_Type;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$HardwareDetails;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
