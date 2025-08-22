.class public abstract Lcom/zhy/http/okhttp/callback/BitmapCallback;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "BitmapCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/callback/Callback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;I)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/callback/BitmapCallback;->parseNetworkResponse(Lokhttp3/Response;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
