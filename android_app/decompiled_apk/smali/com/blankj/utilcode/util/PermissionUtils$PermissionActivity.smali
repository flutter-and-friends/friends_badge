.class public Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TYPE_DRAW_OVERLAYS:I = 0x3

.field public static final TYPE_RUNTIME:I = 0x1

.field public static final TYPE_WRITE_SETTINGS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 2

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "TYPE"

    .line 379
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 431
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 438
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$900()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedWriteSettings()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$900()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$900()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 444
    :goto_0
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->access$902(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    goto :goto_2

    :cond_2
    const/4 p3, 0x3

    if-ne p1, p3, :cond_5

    .line 446
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 447
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 448
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_1

    .line 450
    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 452
    :goto_1
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1002(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    .line 454
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x40010

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 387
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 389
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "PermissionUtils"

    const-string v0, "request permissions failed"

    .line 391
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void

    .line 395
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    .line 398
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 400
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void

    .line 404
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 405
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void

    .line 410
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 414
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$600(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$700(Landroid/app/Activity;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 425
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$800(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    .line 426
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->finish()V

    return-void

    .line 424
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'grantResults\' of type int[] (#2 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'permissions\' of type String[] (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
