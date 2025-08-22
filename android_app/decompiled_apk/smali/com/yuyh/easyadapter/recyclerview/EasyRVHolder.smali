.class public Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EasyRVHolder.java"

# interfaces
.implements Lcom/yuyh/easyadapter/helper/ViewHelper$RecyclerView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/yuyh/easyadapter/helper/ViewHelper$RecyclerView<",
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

.field private mLayoutId:I

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V
    .locals 1

    .line 32
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    .line 33
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mLayoutId:I

    .line 35
    iput-object p4, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    .line 36
    iput-object p3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemView()Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mLayoutId:I

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setAlpha(IF)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 3

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 187
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundColorRes(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setChecked(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    .line 176
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageDrawableRes(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    move-result-object p1

    return-object p1
.end method

.method public setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setImageUrl(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p1}, Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lcom/yuyh/easyadapter/AdapterImageLoader;->sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/yuyh/easyadapter/AdapterImageLoader;->sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p1}, Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setOnItemViewClickListener(Landroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setOnItemViewLongClickListener(Landroid/view/View$OnLongClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextColorRes(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 1

    .line 88
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 196
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 4

    .line 203
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 204
    invoke-virtual {p0, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 148
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
