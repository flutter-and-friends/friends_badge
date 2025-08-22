.class public Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adpair"
.end annotation


# instance fields
.field public addr:S

.field final synthetic this$1:Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;

.field public val:I


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->this$1:Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
