.class public Lcom/yuyh/easyadapter/AdapterImageLoader;
.super Ljava/lang/Object;
.source "AdapterImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;
    }
.end annotation


# static fields
.field public static sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/yuyh/easyadapter/AdapterImageLoader;->sImageLoader:Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    return-void
.end method
