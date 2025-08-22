.class Lcom/gyf/barlibrary/ImmersionBar$1;
.super Landroid/database/ContentObserver;
.source "ImmersionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gyf/barlibrary/ImmersionBar;->registerEMUI3_x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gyf/barlibrary/ImmersionBar;


# direct methods
.method constructor <init>(Lcom/gyf/barlibrary/ImmersionBar;Landroid/os/Handler;)V
    .locals 0

    .line 1649
    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1652
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$000(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "navigationbar_is_min"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1656
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object p1

    iget-object p1, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 1660
    :cond_0
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object p1

    iget-object p1, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object p1

    iget-boolean p1, p1, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    if-nez p1, :cond_2

    .line 1662
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/barlibrary/BarConfig;->isNavigationAtBottom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1663
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v2}, Lcom/gyf/barlibrary/ImmersionBar;->access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 1665
    :cond_1
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v2}, Lcom/gyf/barlibrary/ImmersionBar;->access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 1667
    :cond_2
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$1;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    return-void
.end method
