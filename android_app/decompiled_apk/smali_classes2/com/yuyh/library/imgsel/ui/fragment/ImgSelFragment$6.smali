.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;I)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    iput p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    .line 368
    iget v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->val$size:I

    if-le v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    iget v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->val$size:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 370
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method
