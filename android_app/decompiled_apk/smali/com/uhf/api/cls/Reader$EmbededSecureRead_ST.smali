.class public Lcom/uhf/api/cls/Reader$EmbededSecureRead_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmbededSecureRead_ST"
.end annotation


# instance fields
.field public ApIndexBitsNumInEpc:I

.field public ApIndexStartBitsInEpc:I

.field public accesspwd:I

.field public address:I

.field public bank:I

.field public blkcnt:I

.field public pwdtype:I

.field public tagtype:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$EmbededSecureRead_ST;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
