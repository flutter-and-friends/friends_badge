.class Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentContainerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;->this$0:Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;->this$0:Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->access$000(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;I)V

    .line 34
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;->this$0:Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->access$102(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
