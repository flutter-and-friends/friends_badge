.class Lcn/highlight/work_card_write/api/Api$1;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcn/highlight/work_card_write/api/ApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/api/Api;->reLogin(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/highlight/work_card_write/api/ApiResult<",
        "Lcn/highlight/work_card_write/entity/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/api/Api;

.field final synthetic val$filePathList:Ljava/util/List;

.field final synthetic val$headers:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$outTime:Ljava/lang/Long;

.field final synthetic val$params:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$paramsJson:Ljava/lang/String;

.field final synthetic val$result:Lcn/highlight/work_card_write/api/ApiResult;

.field final synthetic val$tClass:Ljava/lang/Class;

.field final synthetic val$type:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/api/Api;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/highlight/work_card_write/api/Api$1;->this$0:Lcn/highlight/work_card_write/api/Api;

    iput p2, p0, Lcn/highlight/work_card_write/api/Api$1;->val$type:I

    iput-object p3, p0, Lcn/highlight/work_card_write/api/Api$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcn/highlight/work_card_write/api/Api$1;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lcn/highlight/work_card_write/api/Api$1;->val$tClass:Ljava/lang/Class;

    iput-object p6, p0, Lcn/highlight/work_card_write/api/Api$1;->val$outTime:Ljava/lang/Long;

    iput-object p7, p0, Lcn/highlight/work_card_write/api/Api$1;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    iput-object p8, p0, Lcn/highlight/work_card_write/api/Api$1;->val$headers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p9, p0, Lcn/highlight/work_card_write/api/Api$1;->val$paramsJson:Ljava/lang/String;

    iput-object p10, p0, Lcn/highlight/work_card_write/api/Api$1;->val$filePathList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuss(Lcn/highlight/work_card_write/entity/UserInfo;)V
    .locals 14

    if-eqz p1, :cond_4

    const/16 v0, 0xc8

    .line 71
    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/UserInfo;->getCode()I

    move-result p1

    if-ne v0, p1, :cond_4

    .line 73
    iget p1, p0, Lcn/highlight/work_card_write/api/Api$1;->val$type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcn/highlight/work_card_write/api/Api$1;->this$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v2, p0, Lcn/highlight/work_card_write/api/Api$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/highlight/work_card_write/api/Api$1;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcn/highlight/work_card_write/api/Api$1;->val$filePathList:Ljava/util/List;

    iget-object v5, p0, Lcn/highlight/work_card_write/api/Api$1;->val$tClass:Ljava/lang/Class;

    iget-object v6, p0, Lcn/highlight/work_card_write/api/Api$1;->val$outTime:Ljava/lang/Long;

    iget-object v7, p0, Lcn/highlight/work_card_write/api/Api$1;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-virtual/range {v1 .. v7}, Lcn/highlight/work_card_write/api/Api;->PostFile(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v8, p0, Lcn/highlight/work_card_write/api/Api$1;->this$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v9, p0, Lcn/highlight/work_card_write/api/Api$1;->val$url:Ljava/lang/String;

    iget-object v10, p0, Lcn/highlight/work_card_write/api/Api$1;->val$paramsJson:Ljava/lang/String;

    iget-object v11, p0, Lcn/highlight/work_card_write/api/Api$1;->val$tClass:Ljava/lang/Class;

    iget-object v12, p0, Lcn/highlight/work_card_write/api/Api$1;->val$outTime:Ljava/lang/Long;

    iget-object v13, p0, Lcn/highlight/work_card_write/api/Api$1;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-virtual/range {v8 .. v13}, Lcn/highlight/work_card_write/api/Api;->PostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/api/Api$1;->this$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v1, p0, Lcn/highlight/work_card_write/api/Api$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcn/highlight/work_card_write/api/Api$1;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcn/highlight/work_card_write/api/Api$1;->val$headers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcn/highlight/work_card_write/api/Api$1;->val$tClass:Ljava/lang/Class;

    iget-object v5, p0, Lcn/highlight/work_card_write/api/Api$1;->val$outTime:Ljava/lang/Long;

    iget-object v6, p0, Lcn/highlight/work_card_write/api/Api$1;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-virtual/range {v0 .. v6}, Lcn/highlight/work_card_write/api/Api;->Post(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v7, p0, Lcn/highlight/work_card_write/api/Api$1;->this$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v8, p0, Lcn/highlight/work_card_write/api/Api$1;->val$url:Ljava/lang/String;

    iget-object v9, p0, Lcn/highlight/work_card_write/api/Api$1;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcn/highlight/work_card_write/api/Api$1;->val$tClass:Ljava/lang/Class;

    iget-object v11, p0, Lcn/highlight/work_card_write/api/Api$1;->val$outTime:Ljava/lang/Long;

    iget-object v12, p0, Lcn/highlight/work_card_write/api/Api$1;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-virtual/range {v7 .. v12}, Lcn/highlight/work_card_write/api/Api;->Get(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuss(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lcn/highlight/work_card_write/entity/UserInfo;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/api/Api$1;->onSuss(Lcn/highlight/work_card_write/entity/UserInfo;)V

    return-void
.end method
