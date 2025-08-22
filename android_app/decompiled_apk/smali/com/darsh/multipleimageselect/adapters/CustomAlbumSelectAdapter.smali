.class public Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;
.super Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;
.source "CustomAlbumSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter<",
        "Lcom/darsh/multipleimageselect/models/Album;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Album;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 29
    iget-object p2, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/darsh/multipleimageselect/R$layout;->grid_view_item_album_select:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;-><init>(Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$1;)V

    .line 32
    sget v0, Lcom/darsh/multipleimageselect/R$id;->image_view_album_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/darsh/multipleimageselect/R$id;->text_view_album_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;

    .line 41
    :goto_0
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->size:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->size:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darsh/multipleimageselect/models/Album;

    iget-object v1, v1, Lcom/darsh/multipleimageselect/models/Album;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/darsh/multipleimageselect/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->arrayList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/darsh/multipleimageselect/models/Album;

    iget-object p1, p1, Lcom/darsh/multipleimageselect/models/Album;->cover:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p3, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p2
.end method
