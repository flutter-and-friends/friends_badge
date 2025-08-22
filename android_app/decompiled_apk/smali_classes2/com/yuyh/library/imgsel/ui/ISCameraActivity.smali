.class public Lcom/yuyh/library/imgsel/ui/ISCameraActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISCameraActivity.java"


# static fields
.field private static final CAMERA_REQUEST_CODE:I = 0x2

.field private static final IMAGE_CROP_CODE:I = 0x1

.field private static final REQUEST_CAMERA:I = 0x5


# instance fields
.field private config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

.field private cropImageFile:Ljava/io/File;

.field private tempPhotoFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private camera()V
    .locals 5

    const-string v0, "android.permission.CAMERA"

    .line 79
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v1, :cond_3

    .line 81
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    .line 91
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuyh/library/imgsel/utils/LogUtils;->e(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createFile(Ljava/io/File;)Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".image_provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    .line 94
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 99
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    .line 100
    invoke-virtual {p0, v3, v1, v4}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    const-string v2, "output"

    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yuyh/library/imgsel/R$string;->open_camera_failure:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 83
    :cond_3
    :goto_2
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private complete(Lcom/yuyh/library/imgsel/bean/Image;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p1, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->finish()V

    return-void
.end method

.method private crop(Ljava/lang/String;)V
    .locals 4

    .line 111
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getImageContentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectX:I

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectY:I

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputX:I

    const-string v1, "outputX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputY:I

    const-string v1, "outputY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "scale"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "scaleUpIfNeeded"

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "return-data"

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outputFormat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "noFaceDetection"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startForResult(Landroid/app/Activity;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startForResult(Landroid/app/Fragment;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startForResult(Landroidx/fragment/app/Fragment;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getImageContentUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 8

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v0, "content://media/external/images/media"

    .line 140
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    .line 146
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, p3, :cond_0

    .line 171
    new-instance p1, Lcom/yuyh/library/imgsel/bean/Image;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/yuyh/library/imgsel/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->complete(Lcom/yuyh/library/imgsel/bean/Image;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    if-ne p2, p3, :cond_2

    .line 174
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 175
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iget-boolean p1, p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->needCrop:Z

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->crop(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance p1, Lcom/yuyh/library/imgsel/bean/Image;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/yuyh/library/imgsel/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->complete(Lcom/yuyh/library/imgsel/bean/Image;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->finish()V

    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x33333333

    const/4 v1, 0x1

    .line 67
    invoke-static {p0, v0, v1}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->compatTransStatusBar(Landroid/app/Activity;IZ)V

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    .line 71
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->config:Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->camera()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->camera()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yuyh/library/imgsel/R$string;->permission_camera_denied:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
