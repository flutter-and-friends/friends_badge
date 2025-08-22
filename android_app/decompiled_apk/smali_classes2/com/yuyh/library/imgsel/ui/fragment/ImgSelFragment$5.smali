.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$5;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 325
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$5;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$5;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->setBackgroundAlpha(F)V

    return-void
.end method
