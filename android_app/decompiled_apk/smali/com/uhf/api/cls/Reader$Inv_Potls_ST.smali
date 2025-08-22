.class public Lcom/uhf/api/cls/Reader$Inv_Potls_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Inv_Potls_ST"
.end annotation


# instance fields
.field public potlcnt:I

.field public potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/uhf/api/cls/Reader$Inv_Potl;

    .line 1060
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    return-void
.end method
