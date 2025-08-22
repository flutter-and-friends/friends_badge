.class public abstract Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/Image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageLoaderListener"
.end annotation


# static fields
.field public static final FAILED_BITMAP_ERROR:I = -0x3

.field public static final FAILED_TASK_CANCELLED:I = -0x2

.field public static final FAILED_TASK_EXISTS:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLoadCompleted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V
.end method

.method public onLoadStarted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)V
    .locals 0

    return-void
.end method

.method public onLoading(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;JJ)V
    .locals 0

    return-void
.end method
