.class public Lcom/uhf/api/cls/Reader$FrequencyVSWR;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyVSWR"
.end annotation


# instance fields
.field public frequency:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;

.field public vswr:F


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
