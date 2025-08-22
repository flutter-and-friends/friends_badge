.class public Lcom/yuyh/library/imgsel/bean/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/yuyh/library/imgsel/bean/Image;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yuyh/library/imgsel/bean/Image;

    .line 27
    iget-object v1, p0, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 31
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
