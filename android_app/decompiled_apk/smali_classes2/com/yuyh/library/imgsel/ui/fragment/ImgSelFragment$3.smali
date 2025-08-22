.class Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)V
    .locals 2

    .line 215
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "_data"

    const-string v0, "_display_name"

    const-string v1, "_id"

    .line 217
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 225
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-virtual {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 229
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-virtual {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not like \'%.gif%\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 239
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v3, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-direct {v3, v0, v1}, Lcom/yuyh/library/imgsel/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$800(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 256
    iget-object v4, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v4}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$900(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yuyh/library/imgsel/bean/Folder;

    .line 257
    iget-object v6, v5, Lcom/yuyh/library/imgsel/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 262
    iget-object v0, v1, Lcom/yuyh/library/imgsel/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_4
    new-instance v1, Lcom/yuyh/library/imgsel/bean/Folder;

    invoke-direct {v1}, Lcom/yuyh/library/imgsel/bean/Folder;-><init>()V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/yuyh/library/imgsel/bean/Folder;->name:Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yuyh/library/imgsel/bean/Folder;->path:Ljava/lang/String;

    .line 267
    iput-object v3, v1, Lcom/yuyh/library/imgsel/bean/Folder;->cover:Lcom/yuyh/library/imgsel/bean/Image;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iput-object v0, v1, Lcom/yuyh/library/imgsel/bean/Folder;->images:Ljava/util/List;

    .line 273
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$900(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_5
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 279
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$200(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/config/ISListConfig;

    move-result-object p2

    iget-boolean p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz p2, :cond_6

    .line 280
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-direct {v0}, Lcom/yuyh/library/imgsel/bean/Image;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_6
    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$600(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1000(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$1100(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;)Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->notifyDataSetChanged()V

    .line 286
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->this$0:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    invoke-static {p1, v2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->access$802(Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;Z)Z

    :cond_7
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment$3;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
