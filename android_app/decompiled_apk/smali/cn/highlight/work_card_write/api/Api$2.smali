.class Lcn/highlight/work_card_write/api/Api$2;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/api/Api;->lambda$Get$0(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/callback/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/api/Api;

.field final synthetic val$outTime:Ljava/lang/Long;

.field final synthetic val$params:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$result:Lcn/highlight/work_card_write/api/ApiResult;

.field final synthetic val$tClass:Ljava/lang/Class;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-class v0, Lcn/highlight/work_card_write/api/Api;

    return-void
.end method

.method constructor <init>(Lcn/highlight/work_card_write/api/Api;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/highlight/work_card_write/api/Api$2;->this$0:Lcn/highlight/work_card_write/api/Api;

    iput-object p2, p0, Lcn/highlight/work_card_write/api/Api$2;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    iput-object p3, p0, Lcn/highlight/work_card_write/api/Api$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcn/highlight/work_card_write/api/Api$2;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lcn/highlight/work_card_write/api/Api$2;->val$tClass:Ljava/lang/Class;

    iput-object p6, p0, Lcn/highlight/work_card_write/api/Api$2;->val$outTime:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcn/highlight/work_card_write/api/Api$2;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    if-eqz p1, :cond_0

    .line 142
    iget-object p3, p0, Lcn/highlight/work_card_write/api/Api$2;->val$url:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcn/highlight/work_card_write/api/ApiResult;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/api/Api$2;->this$0:Lcn/highlight/work_card_write/api/Api;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25\uff01--->"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/highlight/work_card_write/api/Api$2;->val$url:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/api/Api;->access$000(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;I)V
    .locals 0

    .line 130
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/api/Api$2;->onResponse(Ljava/lang/String;I)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;I)V
    .locals 11

    .line 149
    iget-object v0, p0, Lcn/highlight/work_card_write/api/Api$2;->this$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v3, p0, Lcn/highlight/work_card_write/api/Api$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcn/highlight/work_card_write/api/Api$2;->val$params:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcn/highlight/work_card_write/api/Api$2;->val$tClass:Ljava/lang/Class;

    iget-object v9, p0, Lcn/highlight/work_card_write/api/Api$2;->val$outTime:Ljava/lang/Long;

    iget-object v10, p0, Lcn/highlight/work_card_write/api/Api$2;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lcn/highlight/work_card_write/api/Api;->access$100(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p2, p0, Lcn/highlight/work_card_write/api/Api$2;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 155
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcn/highlight/work_card_write/api/Api$2;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 159
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/api/Api$2;->val$result:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-interface {p1, p2}, Lcn/highlight/work_card_write/api/ApiResult;->onSuss(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/api/Api$2;->parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcn/highlight/work_card_write/api/Api$2;->this$0:Lcn/highlight/work_card_write/api/Api;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u7ed3\u679c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/highlight/work_card_write/api/Api;->access$000(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;)V

    return-object p1
.end method
