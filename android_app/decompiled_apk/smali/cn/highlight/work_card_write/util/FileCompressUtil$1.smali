.class Lcn/highlight/work_card_write/util/FileCompressUtil$1;
.super Ljava/lang/Object;
.source "FileCompressUtil.java"

# interfaces
.implements Ltop/zibin/luban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImg(Landroid/content/Context;Ljava/lang/String;Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/util/FileCompressUtil;

.field final synthetic val$onCompressImgListener:Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/util/FileCompressUtil;Ljava/lang/String;Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->this$0:Lcn/highlight/work_card_write/util/FileCompressUtil;

    iput-object p2, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$onCompressImgListener:Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$onCompressImgListener:Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 109
    invoke-interface {p1, v0, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;->onCompressImg(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u539f\u5927\u5c0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u538b\u7f29\u540e\u5927\u5c0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 95
    iget-object p1, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$onCompressImgListener:Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, ""

    .line 96
    invoke-interface {p1, v0, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;->onCompressImg(ZLjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;->val$onCompressImgListener:Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;->onCompressImg(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
