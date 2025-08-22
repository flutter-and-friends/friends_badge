.class public Lcn/highlight/core/utils/load/LoadingUtil;
.super Ljava/lang/Object;
.source "LoadingUtil.java"


# instance fields
.field public progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;)V
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 20
    invoke-static {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcn/highlight/core/utils/load/CustomProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    .line 22
    :cond_0
    iget-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    iget-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 33
    invoke-static {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcn/highlight/core/utils/load/CustomProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    .line 35
    :cond_0
    iget-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p1, p2}, Lcn/highlight/core/utils/load/CustomProgressDialog;->setMessage(Ljava/lang/String;)Lcn/highlight/core/utils/load/CustomProgressDialog;

    .line 37
    iget-object p1, p0, Lcn/highlight/core/utils/load/LoadingUtil;->progressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
