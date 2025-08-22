.class public Lorg/devio/takephoto/model/TContextWrap;
.super Ljava/lang/Object;
.source "TContextWrap.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private fragment:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/devio/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/devio/takephoto/model/TContextWrap;->fragment:Landroid/app/Fragment;

    .line 28
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static of(Landroid/app/Activity;)Lorg/devio/takephoto/model/TContextWrap;
    .locals 1

    .line 15
    new-instance v0, Lorg/devio/takephoto/model/TContextWrap;

    invoke-direct {v0, p0}, Lorg/devio/takephoto/model/TContextWrap;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static of(Landroid/app/Fragment;)Lorg/devio/takephoto/model/TContextWrap;
    .locals 1

    .line 19
    new-instance v0, Lorg/devio/takephoto/model/TContextWrap;

    invoke-direct {v0, p0}, Lorg/devio/takephoto/model/TContextWrap;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/devio/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/devio/takephoto/model/TContextWrap;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/devio/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/devio/takephoto/model/TContextWrap;->fragment:Landroid/app/Fragment;

    return-void
.end method
