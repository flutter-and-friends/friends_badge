.class public Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar$Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBadgeTitle:Ljava/lang/String;

.field private final mColor:I

.field private final mIcon:Landroid/graphics/Bitmap;

.field private mSelectedIcon:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1837
    iput p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mColor:I

    if-eqz p1, :cond_1

    .line 1840
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1842
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mIcon:Landroid/graphics/Bitmap;

    .line 1847
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1848
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1849
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1852
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mIcon:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method static synthetic access$1100(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)I
    .locals 0

    .line 1826
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mColor:I

    return p0
.end method

.method static synthetic access$1200(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1826
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1300(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1826
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mSelectedIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1400(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Ljava/lang/String;
    .locals 0

    .line 1826
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Ljava/lang/String;
    .locals 0

    .line 1826
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mBadgeTitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public badgeTitle(Ljava/lang/String;)Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;
    .locals 0

    .line 1881
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mBadgeTitle:Ljava/lang/String;

    return-object p0
.end method

.method public build()Ldevlight/io/library/ntb/NavigationTabBar$Model;
    .locals 1

    .line 1886
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-direct {v0, p0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;-><init>(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)V

    return-object v0
.end method

.method public selectedIcon(Landroid/graphics/drawable/Drawable;)Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;
    .locals 4

    if-eqz p1, :cond_1

    .line 1858
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1859
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mSelectedIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1861
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mSelectedIcon:Landroid/graphics/Bitmap;

    .line 1866
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mSelectedIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1867
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1868
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1870
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mSelectedIcon:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method public title(Ljava/lang/String;)Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;
    .locals 0

    .line 1876
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
