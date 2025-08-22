.class public Lcn/highlight/core/utils/banner/BannerBean;
.super Ljava/lang/Object;
.source "BannerBean.java"


# instance fields
.field private id:I

.field private imgUrl:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcn/highlight/core/utils/banner/BannerBean;->id:I

    .line 22
    iput p2, p0, Lcn/highlight/core/utils/banner/BannerBean;->type:I

    .line 23
    iput-object p3, p0, Lcn/highlight/core/utils/banner/BannerBean;->imgUrl:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcn/highlight/core/utils/banner/BannerBean;->linkUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcn/highlight/core/utils/banner/BannerBean;->id:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerBean;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lcn/highlight/core/utils/banner/BannerBean;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/highlight/core/utils/banner/BannerBean;->id:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerBean;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/highlight/core/utils/banner/BannerBean;->type:I

    return-void
.end method
