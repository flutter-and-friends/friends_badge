.class public Lorg/devio/takephoto/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;,
        Lorg/devio/takephoto/permission/PermissionManager$TPermission;
    }
.end annotation


# static fields
.field private static final methodNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "onPickFromCapture"

    const-string v1, "onPickFromCaptureWithCrop"

    const-string v2, "onPickMultiple"

    const-string v3, "onPickMultipleWithCrop"

    const-string v4, "onPickFromDocuments"

    const-string v5, "onPickFromDocumentsWithCrop"

    const-string v6, "onPickFromGallery"

    const-string v7, "onPickFromGalleryWithCrop"

    const-string v8, "onCrop"

    .line 55
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Lorg/devio/takephoto/model/TContextWrap;Ljava/lang/reflect/Method;)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
    .locals 5

    .line 67
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 69
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 70
    sget-object v4, Lorg/devio/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 76
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v2}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v2, "onPickFromCapture"

    .line 83
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "onPickFromCaptureWithCrop"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    goto :goto_5

    .line 84
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object v2, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v2}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_a

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_8

    .line 92
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v0}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez p1, :cond_9

    .line 95
    sget-object p1, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {p1}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/devio/takephoto/permission/PermissionManager;->requestPermission(Lorg/devio/takephoto/model/TContextWrap;[Ljava/lang/String;)V

    :cond_a
    if-eqz v1, :cond_b

    .line 99
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    goto :goto_6

    :cond_b
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    :goto_6
    return-object p0
.end method

.method public static handlePermissionsResult(Landroid/app/Activity;Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;Lorg/devio/takephoto/model/InvokeParam;Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 3

    .line 142
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$1;->$SwitchMap$org$devio$takephoto$permission$PermissionManager$TPermissionType:[I

    invoke-virtual {p1}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/devio/takephoto/model/InvokeParam;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p2}, Lorg/devio/takephoto/model/InvokeParam;->getProxy()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Lorg/devio/takephoto/model/InvokeParam;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/devio/takephoto/R$string;->tip_permission_camera_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/devio/takephoto/R$string;->tip_permission_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/devio/takephoto/R$string;->tip_permission_camera:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/devio/takephoto/R$string;->tip_permission_camera_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_4

    .line 164
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
    .locals 6

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_6

    .line 114
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v1, p0, :cond_2

    .line 115
    aget v4, p2, v1

    if-eqz v4, :cond_1

    .line 116
    sget-object v4, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v4}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 118
    :cond_0
    sget-object v4, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v4}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 124
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 127
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 130
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_5
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    .line 133
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    .line 136
    :cond_6
    sget-object p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0
.end method

.method public static requestPermission(Lorg/devio/takephoto/model/TContextWrap;[Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    const/16 v1, 0x7d0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
