.class public Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NXP_U8_InventoryModePara"
.end annotation


# instance fields
.field public Mode:[B

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 893
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;->Mode:[B

    return-void
.end method
