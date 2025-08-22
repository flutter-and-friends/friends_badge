.class Lcn/highlight/work_card_write/activity/ModelActivity$6;
.super Ljava/lang/Object;
.source "ModelActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ModelActivity;->initText(Lcn/highlight/lib_doodle/DoodleText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ModelActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 652
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 653
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object v0, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEditView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object v0, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object v0, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$6;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textEditView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
