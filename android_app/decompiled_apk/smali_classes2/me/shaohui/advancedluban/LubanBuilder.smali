.class Lme/shaohui/advancedluban/LubanBuilder;
.super Ljava/lang/Object;
.source "LubanBuilder.java"


# instance fields
.field cacheDir:Ljava/io/File;

.field compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field gear:I

.field maxHeight:I

.field maxSize:I

.field maxWidth:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lme/shaohui/advancedluban/LubanBuilder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lme/shaohui/advancedluban/LubanBuilder;->gear:I

    .line 25
    iput-object p1, p0, Lme/shaohui/advancedluban/LubanBuilder;->cacheDir:Ljava/io/File;

    return-void
.end method
