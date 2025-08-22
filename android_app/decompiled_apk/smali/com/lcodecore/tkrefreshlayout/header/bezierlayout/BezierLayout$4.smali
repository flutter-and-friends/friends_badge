.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;
.super Ljava/lang/Object;
.source "BezierLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

.field final synthetic val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRippleEnd()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->val$animEndListener:Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;->onAnimEnd()V

    return-void
.end method
