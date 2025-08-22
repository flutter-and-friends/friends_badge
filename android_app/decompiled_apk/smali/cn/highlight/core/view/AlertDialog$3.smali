.class Lcn/highlight/core/view/AlertDialog$3;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/view/AlertDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/view/AlertDialog;


# direct methods
.method constructor <init>(Lcn/highlight/core/view/AlertDialog;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/highlight/core/view/AlertDialog$3;->this$0:Lcn/highlight/core/view/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog$3;->this$0:Lcn/highlight/core/view/AlertDialog;

    invoke-static {p1}, Lcn/highlight/core/view/AlertDialog;->access$000(Lcn/highlight/core/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
