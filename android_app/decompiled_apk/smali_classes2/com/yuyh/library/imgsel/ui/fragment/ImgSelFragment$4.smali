.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->createPopupFolderList(II)V
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

    .line 307
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ILcom/yuyh/library/imgsel/bean/Folder;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1300(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 313
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->allImagesText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 316
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-direct {v0}, Lcom/yuyh/library/imgsel/bean/Image;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p2, Lcom/yuyh/library/imgsel/bean/Folder;->images:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1000(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->notifyDataSetChanged()V

    .line 321
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p2, Lcom/yuyh/library/imgsel/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
