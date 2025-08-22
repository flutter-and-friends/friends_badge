.class public Lorg/devio/takephoto/model/LubanOptions$Builder;
.super Ljava/lang/Object;
.source "LubanOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/model/LubanOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lorg/devio/takephoto/model/LubanOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/devio/takephoto/model/LubanOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/devio/takephoto/model/LubanOptions;-><init>(Lorg/devio/takephoto/model/LubanOptions$1;)V

    iput-object v0, p0, Lorg/devio/takephoto/model/LubanOptions$Builder;->options:Lorg/devio/takephoto/model/LubanOptions;

    return-void
.end method


# virtual methods
.method public create()Lorg/devio/takephoto/model/LubanOptions;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/devio/takephoto/model/LubanOptions$Builder;->options:Lorg/devio/takephoto/model/LubanOptions;

    return-object v0
.end method

.method public setMaxHeight(I)Lorg/devio/takephoto/model/LubanOptions$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/devio/takephoto/model/LubanOptions$Builder;->options:Lorg/devio/takephoto/model/LubanOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/LubanOptions;->setMaxHeight(I)V

    return-object p0
.end method

.method public setMaxSize(I)Lorg/devio/takephoto/model/LubanOptions$Builder;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/devio/takephoto/model/LubanOptions$Builder;->options:Lorg/devio/takephoto/model/LubanOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/LubanOptions;->setMaxSize(I)V

    return-object p0
.end method

.method public setMaxWidth(I)Lorg/devio/takephoto/model/LubanOptions$Builder;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/devio/takephoto/model/LubanOptions$Builder;->options:Lorg/devio/takephoto/model/LubanOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/LubanOptions;->setMaxWidth(I)V

    return-object p0
.end method
