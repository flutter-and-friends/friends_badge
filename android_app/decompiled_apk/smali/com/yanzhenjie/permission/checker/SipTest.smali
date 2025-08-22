.class Lcom/yanzhenjie/permission/checker/SipTest;
.super Ljava/lang/Object;
.source "SipTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/SipTest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/yanzhenjie/permission/checker/SipTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/checker/SipTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 42
    :cond_1
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    const-string v3, "Permission"

    const-string v4, "127.0.0.1"

    invoke-direct {v2, v3, v4}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "password"

    .line 43
    invoke-virtual {v2, v3}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 44
    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 46
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    return v1
.end method
