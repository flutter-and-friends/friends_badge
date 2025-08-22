.class Lcn/highlight/work_card_write/activity/Model2Activity$7;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field final synthetic val$textSetEdit:Landroid/widget/LinearLayout;

.field final synthetic val$textSetFont:Landroid/widget/LinearLayout;

.field final synthetic val$textSetStyle:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetEdit:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetFont:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetStyle:Landroid/widget/LinearLayout;

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

    .line 1304
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 1305
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1306
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetFont:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetStyle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetStyle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1313
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetFont:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1310
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$7;->val$textSetEdit:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
