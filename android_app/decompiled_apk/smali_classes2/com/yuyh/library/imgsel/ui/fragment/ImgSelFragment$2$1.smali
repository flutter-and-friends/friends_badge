.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Lcom/yuyh/library/imgsel/common/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->onImageClick(ILcom/yuyh/library/imgsel/bean/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;->this$1:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedClick(ILcom/yuyh/library/imgsel/bean/Image;)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;->this$1:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;

    iget-object v0, v0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0, p1, p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$100(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;ILcom/yuyh/library/imgsel/bean/Image;)I

    move-result p1

    return p1
.end method

.method public onImageClick(ILcom/yuyh/library/imgsel/bean/Image;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;->this$1:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;

    iget-object p1, p1, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->hidePreview()Z

    return-void
.end method
