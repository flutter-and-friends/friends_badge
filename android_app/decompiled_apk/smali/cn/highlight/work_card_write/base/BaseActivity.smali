.class public abstract Lcn/highlight/work_card_write/base/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;
    }
.end annotation


# static fields
.field public static final SWITCH_LANGUAGE:Ljava/lang/String; = "Language"


# instance fields
.field c:Landroid/app/Activity;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field public isBackPressed:Z

.field public isCheckPermissions:Z

.field private lastClickTime:J

.field protected mBind:Lbutterknife/Unbinder;

.field protected mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

.field private onPermissionsGetListener:Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isBackPressed:Z

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->lastClickTime:J

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isCheckPermissions:Z

    return-void
.end method

.method static synthetic lambda$showNormalDialog$4(Landroid/view/View;)V
    .locals 0

    .line 395
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/core/utils/AppManager;->appExit()V

    return-void
.end method

.method private setLanguage()V
    .locals 4

    .line 445
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 449
    iput-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 450
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private showNormalDialog(Landroid/content/Context;)V
    .locals 4

    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 385
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 386
    new-instance v2, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$BVZUTW83IjrX7TcXGfM07vr7yyc;

    invoke-direct {v2, p0, v0, p1}, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$BVZUTW83IjrX7TcXGfM07vr7yyc;-><init>(Lcn/highlight/work_card_write/base/BaseActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x2

    .line 391
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 392
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 393
    sget-object v0, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$EYVAICj0ButgkJwNPREE9kzusns;->INSTANCE:Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$EYVAICj0ButgkJwNPREE9kzusns;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public checkAllPermissions()V
    .locals 10

    .line 313
    iget-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isCheckPermissions:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isCheckPermissions:Z

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    .line 319
    sput-boolean v0, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    .line 320
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;

    if-eqz v1, :cond_1

    .line 321
    invoke-interface {v1, v0}, Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;->onPermissionsGet(Z)V

    :cond_1
    return-void

    .line 326
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v6, "android.permission.CAMERA"

    const-string v7, "android.permission.NFC"

    const-string v8, "android.permission.BLUETOOTH_SCAN"

    const-string v9, "android.permission.BLUETOOTH_CONNECT"

    .line 328
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.CAMERA"

    const-string v6, "android.permission.NFC"

    .line 342
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/app/Activity;)Lcom/yanzhenjie/permission/option/ActivityOption;

    move-result-object v1

    .line 352
    invoke-interface {v1}, Lcom/yanzhenjie/permission/option/ActivityOption;->runtime()Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;

    move-result-object v1

    .line 353
    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/runtime/option/ActivityRuntimeOption;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$nCDmpaFTFGFHNJmK4I4KB4jzwFI;-><init>(Lcn/highlight/work_card_write/base/BaseActivity;)V

    .line 354
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$_qQ5qAIEzDLNH1rEJYOhLxcZfTM;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$_qQ5qAIEzDLNH1rEJYOhLxcZfTM;-><init>(Lcn/highlight/work_card_write/base/BaseActivity;)V

    .line 361
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doubleBack()V
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isBackPressed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 172
    iput-boolean v1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isBackPressed:Z

    .line 173
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10004d

    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    sput-boolean v1, Lcn/highlight/work_card_write/Constants;->isAppExit:Z

    .line 176
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/AppManager;->appExit()V

    const/4 v0, 0x0

    .line 177
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 179
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$8sciYrmdVQKqItDOgCFsxQZfnGQ;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/base/-$$Lambda$BaseActivity$8sciYrmdVQKqItDOgCFsxQZfnGQ;-><init>(Lcn/highlight/work_card_write/base/BaseActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishActivity()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->hideSoftKeyBoard()V

    .line 237
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010020

    .line 239
    invoke-super {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getAppDetailSettingIntent(Landroid/content/Context;)V
    .locals 2

    .line 407
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.safe"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 420
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public hideSoftKeyBoard()V
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    const-string v1, "input_method"

    .line 259
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public hideSoftKeyBoard(Landroid/view/View;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const-string v0, "input_method"

    .line 268
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    if-eqz p1, :cond_1

    .line 270
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

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

    .line 157
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 158
    iget-wide v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->lastClickTime:J

    sub-long v0, v2, v0

    .line 159
    iput-wide v2, p0, Lcn/highlight/work_card_write/base/BaseActivity;->lastClickTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 161
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

.method public synthetic lambda$checkAllPermissions$1$BaseActivity(Ljava/util/List;)V
    .locals 1

    const/4 p1, 0x1

    .line 356
    sput-boolean p1, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    .line 357
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;->onPermissionsGet(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$checkAllPermissions$2$BaseActivity(Ljava/util/List;)V
    .locals 0

    .line 363
    sget-boolean p1, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    if-nez p1, :cond_0

    .line 364
    invoke-direct {p0, p0}, Lcn/highlight/work_card_write/base/BaseActivity;->showNormalDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$doubleBack$0$BaseActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isBackPressed:Z

    return-void
.end method

.method public synthetic lambda$showNormalDialog$3$BaseActivity(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 387
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->isCheckPermissions:Z

    .line 389
    invoke-virtual {p0, p2}, Lcn/highlight/work_card_write/base/BaseActivity;->getAppDetailSettingIntent(Landroid/content/Context;)V

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

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f01001e

    const v0, 0x7f01001f

    .line 203
    invoke-super {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

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

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcn/highlight/work_card_write/base/BaseActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const p1, 0x7f01001e

    const p2, 0x7f01001f

    .line 216
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

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

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 227
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcn/highlight/work_card_write/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const p2, 0x7f01001f

    .line 229
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/core/utils/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->setLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BaseActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mBind:Lbutterknife/Unbinder;

    .line 69
    iput-object p0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->c:Landroid/app/Activity;

    const/4 v0, 0x1

    const-string v1, "#FFFFFF"

    .line 71
    invoke-virtual {p0, v0, v0, v1}, Lcn/highlight/work_card_write/base/BaseActivity;->setImmersionBar(ZZLjava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/base/BaseActivity;->initViews(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->initData()V

    .line 77
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->register(Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->setLanguage()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 278
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mBind:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 283
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/gyf/barlibrary/ImmersionBar;->destroy()V

    .line 287
    :cond_1
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c530888

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 457
    :cond_2
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->setLanguage()V

    .line 458
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->recreate()V

    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->finishActivity()V

    const/4 p1, 0x1

    return p1

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setImmersionBar(ZLjava/lang/String;)V
    .locals 1

    .line 106
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    .line 107
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;

    .line 108
    invoke-static {p2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 111
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method public setImmersionBar(ZZLjava/lang/String;)V
    .locals 1

    .line 122
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    .line 123
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;

    .line 124
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->transparentStatusBar()Lcom/gyf/barlibrary/ImmersionBar;

    .line 125
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;

    .line 126
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 130
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const p3, 0x3e4ccccd

    invoke-virtual {p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/barlibrary/ImmersionBar;

    .line 131
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const-string p2, "#ffffff"

    invoke-virtual {p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 132
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method protected abstract setLayoutId()I
.end method

.method public setOnPermissionsGetListener(Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseActivity;->onPermissionsGetListener:Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;

    return-void
.end method

.method public setView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f080087

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f08008f

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
