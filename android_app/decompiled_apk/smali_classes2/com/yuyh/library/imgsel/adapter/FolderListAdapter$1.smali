.class Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;
.super Ljava/lang/Object;
.source "FolderListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/yuyh/library/imgsel/bean/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    iput p2, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->setSelectIndex(I)V

    return-void
.end method
