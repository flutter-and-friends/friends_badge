.class Lcom/codbking/widget/DatePickDialog$1;
.super Ljava/lang/Object;
.source "DatePickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codbking/widget/DatePickDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codbking/widget/DatePickDialog;


# direct methods
.method constructor <init>(Lcom/codbking/widget/DatePickDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog$1;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/codbking/widget/DatePickDialog$1;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-virtual {p1}, Lcom/codbking/widget/DatePickDialog;->dismiss()V

    return-void
.end method
