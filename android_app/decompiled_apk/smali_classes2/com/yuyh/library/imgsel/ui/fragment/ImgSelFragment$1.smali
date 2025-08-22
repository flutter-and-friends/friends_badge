.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ImgSelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field halfSpacing:I

.field spacing:I

.field final synthetic this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 128
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$000(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/yuyh/library/imgsel/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->spacing:I

    .line 129
    iget p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->spacing:I

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->halfSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 133
    iget p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;->halfSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 134
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 135
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 136
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
