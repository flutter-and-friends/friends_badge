.class public final synthetic Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/yanzhenjie/permission/Action;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/base/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI;->f$0:Lcn/highlight/work_card_write/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onAction(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI;->f$0:Lcn/highlight/work_card_write/base/BaseActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/base/BaseActivity;->lambda$checkAllPermissions$1$BaseActivity(Ljava/util/List;)V

    return-void
.end method
