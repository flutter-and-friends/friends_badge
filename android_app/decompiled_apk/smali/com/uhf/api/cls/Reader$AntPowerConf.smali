.class public Lcom/uhf/api/cls/Reader$AntPowerConf;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntPowerConf"
.end annotation


# instance fields
.field public Powers:[Lcom/uhf/api/cls/Reader$AntPower;

.field public antcnt:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$AntPowerConf;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/uhf/api/cls/Reader$AntPower;

    .line 912
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    return-void
.end method
