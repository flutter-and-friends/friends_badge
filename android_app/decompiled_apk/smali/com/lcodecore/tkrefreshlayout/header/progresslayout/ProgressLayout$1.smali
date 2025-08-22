.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

.field final synthetic val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->reset()V

    .line 223
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;->onAnimEnd()V

    return-void
.end method
