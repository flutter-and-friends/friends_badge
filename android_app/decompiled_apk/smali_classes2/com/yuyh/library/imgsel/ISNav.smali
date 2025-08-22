.class public Lcom/yuyh/library/imgsel/ISNav;
.super Ljava/lang/Object;
.source "ISNav.java"


# static fields
.field private static instance:Lcom/yuyh/library/imgsel/ISNav;


# instance fields
.field private loader:Lcom/yuyh/library/imgsel/common/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yuyh/library/imgsel/ISNav;
    .locals 2

    .line 27
    sget-object v0, Lcom/yuyh/library/imgsel/ISNav;->instance:Lcom/yuyh/library/imgsel/ISNav;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/yuyh/library/imgsel/ISNav;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/yuyh/library/imgsel/ISNav;->instance:Lcom/yuyh/library/imgsel/ISNav;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/yuyh/library/imgsel/ISNav;

    invoke-direct {v1}, Lcom/yuyh/library/imgsel/ISNav;-><init>()V

    sput-object v1, Lcom/yuyh/library/imgsel/ISNav;->instance:Lcom/yuyh/library/imgsel/ISNav;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/yuyh/library/imgsel/ISNav;->instance:Lcom/yuyh/library/imgsel/ISNav;

    return-object v0
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ISNav;->loader:Lcom/yuyh/library/imgsel/common/ImageLoader;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lcom/yuyh/library/imgsel/common/ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public init(Lcom/yuyh/library/imgsel/common/ImageLoader;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yuyh/library/imgsel/ISNav;->loader:Lcom/yuyh/library/imgsel/common/ImageLoader;

    return-void
.end method

.method public toCameraActivity(Ljava/lang/Object;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V
    .locals 1

    .line 63
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->startForResult(Landroid/app/Activity;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V

    goto :goto_0

    .line 65
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->startForResult(Landroidx/fragment/app/Fragment;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V

    goto :goto_0

    .line 67
    :cond_1
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 68
    check-cast p1, Landroid/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISCameraActivity;->startForResult(Landroid/app/Fragment;Lcom/yuyh/library/imgsel/config/ISCameraConfig;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toListActivity(Ljava/lang/Object;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V
    .locals 1

    .line 53
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->startForResult(Landroid/app/Activity;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->startForResult(Landroidx/fragment/app/Fragment;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V

    goto :goto_0

    .line 57
    :cond_1
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 58
    check-cast p1, Landroid/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->startForResult(Landroid/app/Fragment;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V

    :cond_2
    :goto_0
    return-void
.end method
