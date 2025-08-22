.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Lcom/yuyh/library/imgsel/common/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedClick(ILcom/yuyh/library/imgsel/bean/Image;)I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0, p1, p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$100(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;ILcom/yuyh/library/imgsel/bean/Image;)I

    move-result p1

    return p1
.end method

.method public onImageClick(ILcom/yuyh/library/imgsel/bean/Image;)V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$300(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    goto/16 :goto_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    if-eqz v0, :cond_3

    .line 158
    new-instance p2, Landroid/transition/Scene;

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 159
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    new-instance v1, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-virtual {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v3}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v4}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V

    invoke-static {v0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$502(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 160
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$500(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    move-result-object p2

    new-instance v0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;

    invoke-direct {v0, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2$1;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;)V

    invoke-virtual {p2, v0}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->setListener(Lcom/yuyh/library/imgsel/common/OnItemClickListener;)V

    .line 171
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object p2

    iget-boolean p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 172
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$700(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/common/Callback;

    move-result-object p2

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, p1, v1, v0}, Lcom/yuyh/library/imgsel/common/Callback;->onPreviewChanged(IIZ)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$700(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/common/Callback;

    move-result-object p2

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2, v0}, Lcom/yuyh/library/imgsel/common/Callback;->onPreviewChanged(IIZ)V

    .line 176
    :goto_0
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->setCurrentItem(I)V

    .line 177
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->setVisibility(I)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$700(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/common/Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 180
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$700(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/common/Callback;

    move-result-object p1

    iget-object p2, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/yuyh/library/imgsel/common/Callback;->onSingleImageSelected(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
