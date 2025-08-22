.class Lcom/zhy/http/okhttp/OkHttpUtils$3;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/OkHttpUtils;->sendSuccessResultCallback(Ljava/lang/Object;Lcom/zhy/http/okhttp/callback/Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

.field final synthetic val$callback:Lcom/zhy/http/okhttp/callback/Callback;

.field final synthetic val$id:I

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;Ljava/lang/Object;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iput-object p2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iput-object p3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$object:Ljava/lang/Object;

    iput p4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget-object v1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$object:Ljava/lang/Object;

    iget v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/zhy/http/okhttp/callback/Callback;->onResponse(Ljava/lang/Object;I)V

    .line 187
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$3;->val$id:I

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/callback/Callback;->onAfter(I)V

    return-void
.end method
