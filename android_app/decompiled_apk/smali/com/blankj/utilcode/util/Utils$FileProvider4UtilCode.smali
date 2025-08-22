.class public final Lcom/blankj/utilcode/util/Utils$FileProvider4UtilCode;
.super Landroidx/core/content/FileProvider;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileProvider4UtilCode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/Utils$FileProvider4UtilCode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
