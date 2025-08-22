.class public Lcom/uhf/api/cls/Reader$AntPortsVSWR;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntPortsVSWR"
.end annotation


# instance fields
.field public andid:I

.field public frecount:I

.field public power:S

.field public region:Lcom/uhf/api/cls/Reader$Region_Conf;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;

.field public vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 4

    .line 1080
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    .line 1081
    iput-object v1, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    new-instance v3, Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    invoke-direct {v3, p1}, Lcom/uhf/api/cls/Reader$FrequencyVSWR;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    const/4 v1, 0x0

    .line 1088
    :goto_0
    iget v3, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    if-ge v1, v3, :cond_0

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->vswr:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "%.2f"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
