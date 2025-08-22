.class public Lcom/uhf/api/cls/Reader$NXPChangeEASPara;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NXPChangeEASPara"
.end annotation


# instance fields
.field public AccessPwd:[B

.field public TimeOut:S

.field public isSet:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 852
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->AccessPwd:[B

    return-void
.end method
