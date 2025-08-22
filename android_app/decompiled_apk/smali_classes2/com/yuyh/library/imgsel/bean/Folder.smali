.class public Lcom/yuyh/library/imgsel/bean/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cover:Lcom/yuyh/library/imgsel/bean/Image;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 23
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yuyh/library/imgsel/bean/Folder;

    .line 24
    iget-object v1, p0, Lcom/yuyh/library/imgsel/bean/Folder;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/yuyh/library/imgsel/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
