.class final Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/isseiaoki/simplecropview/CropImageView$SavedState;
    .locals 2

    .line 2516
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;-><init>(Landroid/os/Parcel;Lcom/isseiaoki/simplecropview/CropImageView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2514
    invoke-virtual {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/isseiaoki/simplecropview/CropImageView$SavedState;
    .locals 0

    .line 2520
    new-array p1, p1, [Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2514
    invoke-virtual {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;->newArray(I)[Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    move-result-object p1

    return-object p1
.end method
