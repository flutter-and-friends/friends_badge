.class public abstract Lcom/zhy/http/okhttp/callback/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/zhy/http/okhttp/callback/Callback$1;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/callback/Callback$1;-><init>()V

    sput-object v0, Lcom/zhy/http/okhttp/callback/Callback;->CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inProgress(FJI)V
    .locals 0

    return-void
.end method

.method public onAfter(I)V
    .locals 0

    return-void
.end method

.method public onBefore(Lokhttp3/Request;I)V
    .locals 0

    return-void
.end method

.method public abstract onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
.end method

.method public abstract onResponse(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public validateReponse(Lokhttp3/Response;I)Z
    .locals 0

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    return p1
.end method
