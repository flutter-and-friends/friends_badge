.class public final Lcom/yanzhenjie/permission/bridge/BridgeActivity;
.super Landroid/app/Activity;
.source "BridgeActivity.java"


# static fields
.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "KEY_PERMISSIONS"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static requestAlertWindow(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x5

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestAppDetails(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestInstall(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x3

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestNotificationListener(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x7

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestNotify(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x6

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestOverlay(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x4

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static requestPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yanzhenjie/permission/bridge/BridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "KEY_PERMISSIONS"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/yanzhenjie/permission/bridge/Messenger;->send(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "KEY_TYPE"

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-string v3, "package"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 149
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance p1, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;

    new-instance v0, Lcom/yanzhenjie/permission/source/ActivitySource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ActivitySource;-><init>(Landroid/app/Activity;)V

    invoke-direct {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v0, 0x5

    .line 139
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->start(I)V

    goto :goto_0

    .line 133
    :pswitch_3
    new-instance p1, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;

    new-instance v0, Lcom/yanzhenjie/permission/source/ActivitySource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ActivitySource;-><init>(Landroid/app/Activity;)V

    invoke-direct {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v0, 0x4

    .line 134
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->start(I)V

    goto :goto_0

    .line 127
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "KEY_PERMISSIONS"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 179
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 159
    invoke-static {p0}, Lcom/yanzhenjie/permission/bridge/Messenger;->send(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->finish()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
