.class public Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoContext"
.end annotation


# static fields
.field private static final EX_MODE_FIXED:I = 0x1

.field private static final EX_MODE_NORMAL:I = 0x0

.field private static final PULLING_BOTTOM_UP:I = 0x1

.field private static final PULLING_TOP_DOWN:I


# instance fields
.field private animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

.field private exHeadMode:I

.field private isExHeadLocked:Z

.field private prepareFinishLoadMore:Z

.field private prepareFinishRefresh:Z

.field private state:I

.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 875
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 869
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->state:I

    .line 873
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->exHeadMode:I

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isExHeadLocked:Z

    .line 1173
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishRefresh:Z

    .line 1174
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    .line 876
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    return-void
.end method

.method static synthetic access$1100(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    return-object p0
.end method


# virtual methods
.method public allowOverScroll()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPullDown()Z
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public allowPullUp()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public autoLoadMore()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    return v0
.end method

.method public dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1301(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableLoadmore()Z
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    return v0
.end method

.method public enableOverScroll()Z
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    return v0
.end method

.method public enableRefresh()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    return v0
.end method

.method public finishLoadmore()V
    .locals 2

    .line 1031
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onFinishLoadMore()V

    .line 1032
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomBack(Z)V

    :cond_0
    return-void
.end method

.method public finishRefreshAfterAnim()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadBack(Z)V

    :cond_0
    return-void
.end method

.method public finishRefreshing()V
    .locals 0

    .line 1021
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onFinishRefresh()V

    return-void
.end method

.method public getAnimProcessor()Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->animProcessor:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    return-object v0
.end method

.method public getBottomHeight()I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getExHead()Landroid/view/View;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getExtraHeadHeight()I
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFooter()Landroid/view/View;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getHeadHeight()I
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMaxBottomHeight()I
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getMaxHeadHeight()F
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    return v0
.end method

.method public getOsHeight()I
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$800(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOverScrollTopShow(Z)V

    .line 882
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOverScrollBottomShow(Z)V

    .line 883
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isEnableKeepIView()Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableKeepIView:Z

    return v0
.end method

.method public isExHeadFixed()Z
    .locals 2

    .line 969
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->exHeadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExHeadLocked()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isExHeadLocked:Z

    return v0
.end method

.method public isExHeadNormal()Z
    .locals 1

    .line 965
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->exHeadMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingMore()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingMore:Z

    return v0
.end method

.method public isLoadingVisible()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    return v0
.end method

.method public isOpenFloatRefresh()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    return v0
.end method

.method public isOverScrollBottomShow()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    return v0
.end method

.method public isOverScrollTopShow()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    return v0
.end method

.method public isPrepareFinishLoadMore()Z
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    return v0
.end method

.method public isPrepareFinishRefresh()Z
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishRefresh:Z

    return v0
.end method

.method public isPureScrollModeOn()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    return v0
.end method

.method public isRefreshVisible()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshing:Z

    return v0
.end method

.method public isStatePBU()Z
    .locals 2

    .line 1170
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->state:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStatePTD()Z
    .locals 1

    .line 1166
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAddExHead()V
    .locals 3

    const/4 v0, 0x0

    .line 983
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isExHeadLocked:Z

    .line 984
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 985
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 986
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->requestLayout()V

    return-void
.end method

.method public onFinishLoadMore()V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onFinishLoadMore()V

    return-void
.end method

.method public onFinishRefresh()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onFinishRefresh()V

    return-void
.end method

.method public onLoadMore()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-interface {v0, v1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onLoadMore(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    return-void
.end method

.method public onLoadmoreCanceled()V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onLoadmoreCanceled()V

    return-void
.end method

.method public onPullDownReleasing(F)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v2, v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onPullDownReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public onPullUpReleasing(F)V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onPullUpReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public onPullingDown(F)V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v2, v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onPullingDown(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public onPullingUp(F)V
    .locals 3

    .line 1118
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onPullingUp(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-interface {v0, v1}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    return-void
.end method

.method public onRefreshCanceled()V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/PullListener;->onRefreshCanceled()V

    return-void
.end method

.method public resetBottomView()V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IBottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IBottomView;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->reset()V

    :cond_0
    return-void
.end method

.method public resetHeaderView()V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$900(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$900(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->reset()V

    :cond_0
    return-void
.end method

.method public setExHeadFixed()V
    .locals 1

    const/4 v0, 0x1

    .line 961
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->exHeadMode:I

    return-void
.end method

.method public setExHeadNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->exHeadMode:I

    return-void
.end method

.method public setLoadVisible(Z)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    return-void
.end method

.method public setLoadingMore(Z)V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingMore:Z

    return-void
.end method

.method public setPrepareFinishLoadMore(Z)V
    .locals 0

    .line 1189
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    return-void
.end method

.method public setPrepareFinishRefresh(Z)V
    .locals 0

    .line 1185
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->prepareFinishRefresh:Z

    return-void
.end method

.method public setRefreshVisible(Z)V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshing:Z

    return-void
.end method

.method public setStatePBU()V
    .locals 1

    const/4 v0, 0x1

    .line 1162
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->state:I

    return-void
.end method

.method public setStatePTD()V
    .locals 1

    const/4 v0, 0x0

    .line 1158
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->state:I

    return-void
.end method

.method public showLoadingWhenOverScroll()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showLoadingWhenOverScroll:Z

    return v0
.end method

.method public showRefreshingWhenOverScroll()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showRefreshingWhenOverScroll:Z

    return v0
.end method

.method public startLoadMore()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startRefresh()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$1;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$1;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
