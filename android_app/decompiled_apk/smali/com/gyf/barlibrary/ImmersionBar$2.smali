.class Lcom/gyf/barlibrary/ImmersionBar$2;
.super Ljava/lang/Object;
.source "ImmersionBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gyf/barlibrary/ImmersionBar;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gyf/barlibrary/ImmersionBar;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/gyf/barlibrary/ImmersionBar;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1783
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1784
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v2}, Lcom/gyf/barlibrary/ImmersionBar;->access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    if-nez v0, :cond_1

    .line 1787
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    .line 1788
    invoke-static {v2}, Lcom/gyf/barlibrary/ImmersionBar;->access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1790
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v1}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    .line 1791
    invoke-static {v2}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v2

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    .line 1792
    invoke-static {v3}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v3

    iget-object v3, v3, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    .line 1793
    invoke-static {v4}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v4

    iget-object v4, v4, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 1790
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1794
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->this$0:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar$2;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
