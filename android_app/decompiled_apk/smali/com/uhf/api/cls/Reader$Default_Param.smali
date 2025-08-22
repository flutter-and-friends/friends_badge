.class public Lcom/uhf/api/cls/Reader$Default_Param;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Default_Param"
.end annotation


# instance fields
.field public isdefault:Z

.field public key:Lcom/uhf/api/cls/Reader$Mtr_Param;

.field public subkey:Ljava/lang/String;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;

.field public val:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Default_Param;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
