.class public abstract Lcn/highlight/work_card_write/base/BasePhotoActivity;
.super Lorg/devio/takephoto/app/TakePhotoActivity;
.source "BasePhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;
    }
.end annotation


# instance fields
.field c:Landroid/app/Activity;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field public isBackPressed:Z

.field public isCheckPermissions:Z

.field private lastClickTime:J

.field protected mBind:Lbutterknife/Unbinder;

.field protected mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

.field private onPermissionsGetListener:Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/devio/takephoto/app/TakePhotoActivity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isBackPressed:Z

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->lastClickTime:J

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isCheckPermissions:Z

    return-void
.end method

.method static synthetic lambda$showNormalDialog$4(Landroid/view/View;)V
    .locals 0

    .line 365
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/core/utils/AppManager;->appExit()V

    return-void
.end method

.method private showNormalDialog(Landroid/content/Context;)V
    .locals 4

    .line 345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 356
    new-instance v2, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;

    invoke-direct {v2, p0, v0, p1}, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;-><init>(Lcn/highlight/work_card_write/base/BasePhotoActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x2

    .line 361
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 362
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 363
    sget-object v0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$LRI-IUKQCucGVS4kEwP-1wsNHi8;->INSTANCE:Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$LRI-IUKQCucGVS4kEwP-1wsNHi8;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public OnMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public checkAllPermissions()V
    .locals 4

    .line 303
    iget-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isCheckPermissions:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isCheckPermissions:Z

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    .line 309
    sput-boolean v0, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    .line 310
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;

    if-eqz v1, :cond_1

    .line 311
    invoke-interface {v1, v0}, Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;->onPermissionsGet(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.NFC"

    .line 315
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/app/Activity;)Lcom/yanzhenjie/permission/option/ActivityOption;

    move-result-object v1

    .line 322
    invoke-interface {v1}, Lcom/yanzhenjie/permission/option/ActivityOption;->runtime()Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;

    move-result-object v1

    .line 323
    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DHJIemOHoFKYL6xM8LhTthab3n0;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DHJIemOHoFKYL6xM8LhTthab3n0;-><init>(Lcn/highlight/work_card_write/base/BasePhotoActivity;)V

    .line 324
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$H6eEdNhQs56mGbbLmr6rzT9nLXM;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$H6eEdNhQs56mGbbLmr6rzT9nLXM;-><init>(Lcn/highlight/work_card_write/base/BasePhotoActivity;)V

    .line 331
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lorg/devio/takephoto/app/TakePhotoActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doubleBack()V
    .locals 4

    .line 168
    iget-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isBackPressed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    iput-boolean v1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isBackPressed:Z

    .line 170
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10004d

    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    sput-boolean v1, Lcn/highlight/work_card_write/Constants;->isAppExit:Z

    .line 174
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/AppManager;->appExit()V

    const/4 v0, 0x0

    .line 175
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 177
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$9nXPnNpJWOZ_t56aiduCKZ2Qib8;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$9nXPnNpJWOZ_t56aiduCKZ2Qib8;-><init>(Lcn/highlight/work_card_write/base/BasePhotoActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishActivity()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->hideSoftKeyBoard()V

    .line 236
    invoke-super {p0}, Lorg/devio/takephoto/app/TakePhotoActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010020

    .line 238
    invoke-super {p0, v0, v1}, Lorg/devio/takephoto/app/TakePhotoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getAppDetailSettingIntent(Landroid/content/Context;)V
    .locals 4

    .line 377
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.safe"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 389
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.VIEW"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public hideSoftKeyBoard()V
    .locals 3

    .line 256
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    const-string v1, "input_method"

    .line 258
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initViews(Landroid/os/Bundle;)V
.end method

.method public isFastDoubleClick()Z
    .locals 5

    const-wide/16 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 155
    iget-wide v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->lastClickTime:J

    sub-long v0, v2, v0

    .line 156
    iput-wide v2, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->lastClickTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 158
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isForeground(Landroid/app/Activity;)Z
    .locals 1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isForeground(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isForeground(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 422
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    .line 424
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 427
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 428
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$checkAllPermissions$1$BasePhotoActivity(Ljava/util/List;)V
    .locals 1

    const/4 p1, 0x1

    .line 326
    sput-boolean p1, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    .line 327
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0, p1}, Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;->onPermissionsGet(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$checkAllPermissions$2$BasePhotoActivity(Ljava/util/List;)V
    .locals 0

    .line 333
    sget-boolean p1, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    if-nez p1, :cond_0

    .line 334
    invoke-direct {p0, p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->showNormalDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$doubleBack$0$BasePhotoActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isBackPressed:Z

    return-void
.end method

.method public synthetic lambda$showNormalDialog$3$BasePhotoActivity(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 357
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->isCheckPermissions:Z

    .line 359
    invoke-virtual {p0, p2}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getAppDetailSettingIntent(Landroid/content/Context;)V

    return-void
.end method

.method public launchActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f01001e

    const v0, 0x7f01001f

    .line 201
    invoke-super {p0, p1, v0}, Lorg/devio/takephoto/app/TakePhotoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const p1, 0x7f01001e

    const p2, 0x7f01001f

    .line 214
    invoke-super {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public launchActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const p2, 0x7f01001f

    .line 227
    invoke-super {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lorg/devio/takephoto/app/TakePhotoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/core/utils/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->setLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mBind:Lbutterknife/Unbinder;

    .line 67
    iput-object p0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->c:Landroid/app/Activity;

    .line 70
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    .line 72
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 74
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->initViews(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->initData()V

    .line 76
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 268
    invoke-super {p0}, Lorg/devio/takephoto/app/TakePhotoActivity;->onDestroy()V

    .line 269
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mBind:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 273
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/gyf/barlibrary/ImmersionBar;->destroy()V

    .line 277
    :cond_1
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->finishActivity()V

    const/4 p1, 0x1

    return p1

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setImmersionBar(ZLjava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    .line 105
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;

    .line 106
    invoke-static {p2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method public setImmersionBar(ZZLjava/lang/String;)V
    .locals 1

    .line 120
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    .line 121
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;

    .line 122
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->transparentStatusBar()Lcom/gyf/barlibrary/ImmersionBar;

    .line 123
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;

    .line 124
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 128
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const p3, 0x3e4ccccd

    invoke-virtual {p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/barlibrary/ImmersionBar;

    .line 129
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method protected abstract setLayoutId()I
.end method

.method public setOnPermissionsGetListener(Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/highlight/work_card_write/base/BasePhotoActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BasePhotoActivity$OnPermissionsGetListener;

    return-void
.end method

.method public setView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f080087

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f08008f

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
