.class public Lcom/isseiaoki/simplecropview/CropRequest;
.super Ljava/lang/Object;
.source "CropRequest.java"


# instance fields
.field private cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

.field private outputHeight:I

.field private outputMaxHeight:I

.field private outputMaxWidth:I

.field private outputWidth:I

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 19
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropRequest;->sourceUri:Landroid/net/Uri;

    return-void
.end method

.method private build()V
    .locals 3

    .line 45
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputWidth:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setOutputWidth(I)V

    .line 46
    :cond_0
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputHeight:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setOutputHeight(I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputMaxWidth:I

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputMaxHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->setOutputMaxSize(II)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/isseiaoki/simplecropview/callback/CropCallback;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropRequest;->build()V

    .line 52
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->cropAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V

    return-void
.end method

.method public executeAsSingle()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropRequest;->build()V

    .line 57
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->cropAsSingle(Landroid/net/Uri;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public outputHeight(I)Lcom/isseiaoki/simplecropview/CropRequest;
    .locals 0

    .line 29
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputHeight:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputWidth:I

    return-object p0
.end method

.method public outputMaxHeight(I)Lcom/isseiaoki/simplecropview/CropRequest;
    .locals 0

    .line 40
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputMaxHeight:I

    return-object p0
.end method

.method public outputMaxWidth(I)Lcom/isseiaoki/simplecropview/CropRequest;
    .locals 0

    .line 35
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputMaxWidth:I

    return-object p0
.end method

.method public outputWidth(I)Lcom/isseiaoki/simplecropview/CropRequest;
    .locals 0

    .line 23
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputWidth:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropRequest;->outputHeight:I

    return-object p0
.end method
