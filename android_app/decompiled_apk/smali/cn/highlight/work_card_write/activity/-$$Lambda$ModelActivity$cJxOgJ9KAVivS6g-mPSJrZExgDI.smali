.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

.field private final synthetic f$1:Landroid/app/Dialog;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$1:Landroid/app/Dialog;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$1:Landroid/app/Dialog;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->lambda$showTipDialog$5$ModelActivity(Landroid/app/Dialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
