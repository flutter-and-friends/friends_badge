.class public Lorg/devio/takephoto/model/TException;
.super Ljava/lang/Exception;
.source "TException.java"


# instance fields
.field detailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/devio/takephoto/model/TExceptionType;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TExceptionType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TExceptionType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/model/TException;->detailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailMessage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/devio/takephoto/model/TException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method
