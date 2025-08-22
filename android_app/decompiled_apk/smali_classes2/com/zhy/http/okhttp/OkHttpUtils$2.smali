.class Lcom/zhy/http/okhttp/OkHttpUtils$2;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/OkHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/zhy/http/okhttp/callback/Callback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iput-object p2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iput-object p3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$call:Lokhttp3/Call;

    iput-object p4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$e:Ljava/lang/Exception;

    iput p5, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget-object v1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$e:Ljava/lang/Exception;

    iget v3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhy/http/okhttp/callback/Callback;->onError(Lokhttp3/Call;Ljava/lang/Exception;I)V

    .line 173
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/callback/Callback;->onAfter(I)V

    return-void
.end method
