.class public Lcn/highlight/work_card_write/sp/ConfigSp;
.super Ljava/lang/Object;
.source "ConfigSp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLang()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "work_card"

    .line 25
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 28
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    const-string v2, "lang"

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveLang(Ljava/lang/String;)V
    .locals 2

    const-string v0, "work_card"

    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "lang"

    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
