.class public Lcn/highlight/core/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {p0, p3}, Lcn/highlight/core/base/BaseDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcn/highlight/core/base/BaseDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
