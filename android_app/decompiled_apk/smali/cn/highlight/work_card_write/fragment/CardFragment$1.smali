.class Lcn/highlight/work_card_write/fragment/CardFragment$1;
.super Ljava/lang/Object;
.source "CardFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/fragment/CardFragment;->initModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/fragment/CardFragment;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment$1;->this$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment$1;->this$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->access$000(Lcn/highlight/work_card_write/fragment/CardFragment;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
