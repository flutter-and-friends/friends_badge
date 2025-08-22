.class public Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/processor/IAnimRefresh;
.implements Lcom/lcodecore/tkrefreshlayout/processor/IAnimOverScroll;


# static fields
.field private static final animFraction:F = 1.0f


# instance fields
.field private animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private animQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isAnimBottomBack:Z

.field private isAnimBottomHide:Z

.field private isAnimBottomToLoad:Z

.field private isAnimHeadBack:Z

.field private isAnimHeadHide:Z

.field private isAnimHeadToRefresh:Z

.field private isAnimOsBottom:Z

.field private isAnimOsTop:Z

.field private isOverScrollBottomLocked:Z

.field private isOverScrollTopLocked:Z

.field private overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private scrollBottomLocked:Z

.field private scrollHeadLocked:Z


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollHeadLocked:Z

    .line 38
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    .line 128
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    .line 161
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadBack:Z

    .line 189
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomToLoad:Z

    .line 221
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomBack:Z

    .line 270
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadHide:Z

    .line 297
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomHide:Z

    .line 324
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsTop:Z

    .line 325
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollTopLocked:Z

    .line 363
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsBottom:Z

    .line 364
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    .line 405
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 424
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$11;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$11;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 440
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$12;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$12;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 467
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$13;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$13;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 33
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method static synthetic access$002(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomHide:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsTop:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollTopLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsBottom:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->transHeader(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->translateExHead(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->transFooter(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollHeadLocked:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Ljava/util/LinkedList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollHeadLocked:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadBack:Z

    return p1
.end method

.method static synthetic access$402(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomToLoad:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    return p0
.end method

.method static synthetic access$502(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomBack:Z

    return p1
.end method

.method static synthetic access$902(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadHide:Z

    return p1
.end method

.method private getVisibleFootHeight()I
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "footer translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getVisibleHeadHeight()I
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Visible head height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private offerToQueue(Landroid/animation/Animator;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Animators\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$14;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$14;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 554
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method

.method private transFooter(F)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private transHeader(F)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private translateExHead(I)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isExHeadLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getExHead()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animBottomBack(Z)V
    .locals 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomBack\uff1afinishLoading?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomBack:Z

    if-eqz p1, :cond_0

    .line 229
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setPrepareFinishLoadMore(Z)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$4;

    invoke-direct {v2, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$4;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    new-instance v3, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;

    invoke-direct {v3, p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animBottomHideByVy(I)V
    .locals 7

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomHide:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomHide:Z

    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v3, v0

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;

    invoke-direct {v6, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animBottomToLoad()V
    .locals 4

    const-string v0, "animBottomToLoad"

    .line 195
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimBottomToLoad:Z

    .line 197
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getBottomHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$3;

    invoke-direct {v3, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$3;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animHeadBack(Z)V
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadBack\uff1afinishRefresh?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadBack:Z

    if-eqz p1, :cond_0

    .line 169
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollHeadLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setPrepareFinishRefresh(Z)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$2;

    invoke-direct {v3, p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$2;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animHeadHideByVy(I)V
    .locals 7

    .line 278
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadHide:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadHide:Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    int-to-long v3, p1

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$6;

    invoke-direct {v6, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$6;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animHeadToRefresh()V
    .locals 4

    const-string v0, "animHeadToRefresh:"

    .line 134
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    .line 136
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeadHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;

    invoke-direct {v3, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 508
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 509
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 510
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 511
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 512
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 498
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 499
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 517
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 518
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sub-int/2addr p1, p2

    .line 521
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animOverScrollBottom(FI)V
    .locals 7

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollBottom\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setStatePBU()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 376
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 377
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getOsHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getOsHeight()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 379
    :goto_0
    iget-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->autoLoadMore()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->startLoadMore()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 382
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    .line 383
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsBottom:Z

    const/4 v1, 0x0

    int-to-long v3, p1

    .line 384
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$9;

    invoke-direct {v6, p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$9;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    return-void
.end method

.method public animOverScrollTop(FI)V
    .locals 7

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollTop\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 336
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollTopLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isOverScrollTopLocked:Z

    .line 338
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->isAnimOsTop:Z

    .line 339
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setStatePTD()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 340
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 341
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getOsHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getOsHeight()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v1

    int-to-long v3, p1

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;

    invoke-direct {v6, p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public dealPullDownRelease()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->enableRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeadHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadToRefresh()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadBack(Z)V

    :goto_0
    return-void
.end method

.method public dealPullUpRelease()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->enableLoadmore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getBottomHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomToLoad()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomBack(Z)V

    :goto_0
    return-void
.end method

.method public scrollBottomByMove(F)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getMaxBottomHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 72
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->enableLoadmore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isOverScrollBottomShow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollBottomLocked:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 88
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    neg-float v1, v0

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onPullingUp(F)V

    .line 91
    :goto_2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object p1

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public scrollHeadByMove(F)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getMaxHeadHeight()F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 44
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->enableRefresh()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isOverScrollTopShow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->scrollHeadLocked:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 58
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 60
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onPullingDown(F)V

    .line 63
    :goto_2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isOpenFloatRefresh()Z

    move-result p1

    if-nez p1, :cond_4

    .line 64
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    float-to-int p1, v0

    .line 65
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->translateExHead(I)V

    :cond_4
    return-void
.end method
