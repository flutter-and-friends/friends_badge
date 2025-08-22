.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2$1;
.super Ljava/lang/Object;
.source "BezierLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2$1;->this$1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2$1;->this$1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->startAnim()V

    return-void
.end method
