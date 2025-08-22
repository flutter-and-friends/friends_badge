.class public Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
.super Ljava/lang/Object;
.source "EasyLVHolder.java"

# interfaces
.implements Lcom/yuyh/easyadapter/helper/ViewHelper$AbsListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yuyh/easyadapter/helper/ViewHelper$AbsListView<",
        "Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected imageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

.field protected mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mConvertViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutId:I

.field protected mPosition:I

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
.method protected constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;ILcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    .line 41
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    .line 42
    iput p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mPosition:I

    .line 43
    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mContext:Landroid/content/Context;

    .line 44
    iput p4, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mLayoutId:I

    .line 45
    iput-object p5, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->imageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    .line 46
    iget-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    if-nez p2, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;ILcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 7

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;ILcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V

    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 61
    iget v0, p2, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mLayoutId:I

    if-eq v0, p4, :cond_1

    .line 62
    new-instance p2, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;ILcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V

    return-object p2

    .line 64
    :cond_1
    invoke-virtual {p2, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setPosition(I)V

    return-object p2
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getConvertView(I)Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getLayoutId()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mLayoutId:I

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

    .line 83
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setAlpha(IF)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 3

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 214
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundColorRes(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setChecked(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    .line 203
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageDrawableRes(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object p1

    return-object p1
.end method

.method public setImageResource(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setImageUrl(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->imageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p1}, Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/yuyh/easyadapter/AdapterImageLoader;->sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/yuyh/easyadapter/AdapterImageLoader;->sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p1}, Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mPosition:I

    return-void
.end method

.method public setTag(IILjava/lang/Object;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 196
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextColorRes(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 223
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 4

    .line 230
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 231
    invoke-virtual {p0, v2}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(II)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 175
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
