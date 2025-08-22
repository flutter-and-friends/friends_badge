.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;->this$1:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 355
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;->this$1:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1102(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 356
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;->this$1:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1202(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    return-void
.end method
