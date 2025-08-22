.class Lcom/codbking/widget/DatePickDialog$2;
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

    .line 121
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog$2;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/codbking/widget/DatePickDialog$2;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-virtual {p1}, Lcom/codbking/widget/DatePickDialog;->dismiss()V

    .line 125
    iget-object p1, p0, Lcom/codbking/widget/DatePickDialog$2;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-static {p1}, Lcom/codbking/widget/DatePickDialog;->access$000(Lcom/codbking/widget/DatePickDialog;)Lcom/codbking/widget/OnSureLisener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/codbking/widget/DatePickDialog$2;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-static {p1}, Lcom/codbking/widget/DatePickDialog;->access$000(Lcom/codbking/widget/DatePickDialog;)Lcom/codbking/widget/OnSureLisener;

    move-result-object p1

    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog$2;->this$0:Lcom/codbking/widget/DatePickDialog;

    invoke-static {v0}, Lcom/codbking/widget/DatePickDialog;->access$100(Lcom/codbking/widget/DatePickDialog;)Lcom/codbking/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codbking/widget/DatePicker;->getSelectDate()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codbking/widget/OnSureLisener;->onSure(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
