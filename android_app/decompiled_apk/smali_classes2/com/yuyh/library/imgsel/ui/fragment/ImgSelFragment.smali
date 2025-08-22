.class public Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field private static final CAMERA_REQUEST_CODE:I = 0x1

.field private static final LOADER_ALL:I = 0x0

.field private static final LOADER_CATEGORY:I = 0x1

.field private static final REQUEST_CAMERA:I = 0x5


# instance fields
.field private btnAlbumSelected:Landroid/widget/Button;

.field private callback:Lcom/yuyh/library/imgsel/common/Callback;

.field private config:Lcom/yuyh/library/imgsel/config/ISListConfig;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

.field private folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private hasFolderGened:Z

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private previewAdapter:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

.field private rlBottom:Landroid/view/View;

.field private rvImageList:Landroidx/recyclerview/widget/RecyclerView;

.field private tempFile:Ljava/io/File;

.field private viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    .line 215
    new-instance v0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;

    invoke-direct {v0, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;ILcom/yuyh/library/imgsel/bean/Image;)I
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->checkedImage(ILcom/yuyh/library/imgsel/bean/Image;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->showCameraAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/widget/CustomViewPager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->previewAdapter:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->previewAdapter:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/common/Callback;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$802(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    return-object p0
.end method

.method private checkedImage(ILcom/yuyh/library/imgsel/bean/Image;)I
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 194
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 195
    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    if-eqz p1, :cond_2

    .line 197
    iget-object p2, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/yuyh/library/imgsel/common/Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    sget-object v2, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/yuyh/library/imgsel/R$string;->maxnum:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return p1

    .line 205
    :cond_1
    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    if-eqz p1, :cond_2

    .line 207
    iget-object p2, p2, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/yuyh/library/imgsel/common/Callback;->onImageSelected(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    return p1
.end method

.method private createPopupFolderList(II)V
    .locals 2

    .line 298
    new-instance p2, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 299
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    sget v0, Lcom/yuyh/library/imgsel/R$style;->PopupAnimBottom:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 300
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 303
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 304
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 305
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rlBottom:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 306
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 307
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    new-instance p2, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;

    invoke-direct {p2, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$4;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->setOnFloderChangeListener(Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;)V

    .line 325
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance p2, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$5;

    invoke-direct {p2, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$5;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static instance()Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;
    .locals 2

    .line 94
    new-instance v0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;-><init>()V

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showCameraAction()V
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    sget-object v1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yuyh/library/imgsel/R$string;->maxnum:I

    invoke-virtual {p0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v4, v4, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 392
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 395
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    .line 396
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuyh/library/imgsel/utils/LogUtils;->e(Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createFile(Ljava/io/File;)Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yuyh/library/imgsel/utils/FileUtils;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".image_provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    .line 399
    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 403
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 404
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 405
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v1, v5}, Landroidx/fragment/app/FragmentActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    const-string v2, "output"

    .line 410
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yuyh/library/imgsel/R$string;->open_camera_failure:I

    invoke-virtual {p0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method


# virtual methods
.method public hidePreview()Z
    .locals 5

    .line 471
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    invoke-virtual {v0}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    invoke-direct {v0, v2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 473
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    invoke-interface {v0, v1, v1, v1}, Lcom/yuyh/library/imgsel/common/Callback;->onPreviewChanged(IIZ)V

    .line 475
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-virtual {v0}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    if-eqz v1, :cond_1

    .line 423
    invoke-interface {v1, v0}, Lcom/yuyh/library/imgsel/common/Callback;->onCameraShot(Ljava/io/File;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 432
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 341
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 344
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-nez p1, :cond_0

    .line 345
    invoke-direct {p0, v0, v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->createPopupFolderList(II)V

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 352
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 353
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yuyh/library/imgsel/R$color;->bottom_bg:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->getSelectIndex()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 359
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$6;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const p1, 0x3f19999a

    .line 374
    invoke-virtual {p0, p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->setBackgroundAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 102
    sget p3, Lcom/yuyh/library/imgsel/R$layout;->fragment_img_sel:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    sget p2, Lcom/yuyh/library/imgsel/R$id;->rvImageList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    sget p2, Lcom/yuyh/library/imgsel/R$id;->btnAlbumSelected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    .line 105
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget p2, Lcom/yuyh/library/imgsel/R$id;->rlBottom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rlBottom:Landroid/view/View;

    .line 107
    sget p2, Lcom/yuyh/library/imgsel/R$id;->viewPager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    iput-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    .line 108
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->setOffscreenPageLimit(I)V

    .line 109
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->viewPager:Lcom/yuyh/library/imgsel/widget/CustomViewPager;

    invoke-virtual {p2, p0}, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, p1, v2, v1}, Lcom/yuyh/library/imgsel/common/Callback;->onPreviewChanged(IIZ)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, p1, v2, v1}, Lcom/yuyh/library/imgsel/common/Callback;->onPreviewChanged(IIZ)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 437
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->showCameraAction()V

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/yuyh/library/imgsel/R$string;->permission_camera_denied:I

    invoke-virtual {p0, p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 115
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/ui/ISListActivity;

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getConfig()Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    .line 117
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/ui/ISListActivity;

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->callback:Lcom/yuyh/library/imgsel/common/Callback;

    .line 119
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    if-nez p1, :cond_0

    const-string p1, "ImgSelFragment"

    const-string p2, "config \u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    iget-object p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->allImagesText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;

    invoke-direct {p2, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$1;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 139
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    new-instance p2, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-direct {p2}, Lcom/yuyh/library/imgsel/bean/Image;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    new-instance p1, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    invoke-direct {p1, p2, v0, v1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    .line 143
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    invoke-virtual {p1, p2}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->setShowCamera(Z)V

    .line 144
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    invoke-virtual {p1, p2}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->setMutiSelect(Z)V

    .line 145
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    new-instance p2, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;

    invoke-direct {p2, p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$2;-><init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->setOnItemClickListener(Lcom/yuyh/library/imgsel/common/OnItemClickListener;)V

    .line 187
    new-instance p1, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    invoke-direct {p1, p2, v0, v1}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    .line 189
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 335
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 336
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
