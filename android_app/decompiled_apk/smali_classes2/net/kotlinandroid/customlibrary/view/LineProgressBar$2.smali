.class Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LineProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->setCurProgress(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/kotlinandroid/customlibrary/view/LineProgressBar;


# direct methods
.method constructor <init>(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;->this$0:Lnet/kotlinandroid/customlibrary/view/LineProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 336
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 337
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;->this$0:Lnet/kotlinandroid/customlibrary/view/LineProgressBar;

    invoke-static {p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->access$000(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;->this$0:Lnet/kotlinandroid/customlibrary/view/LineProgressBar;

    invoke-static {p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->access$000(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
