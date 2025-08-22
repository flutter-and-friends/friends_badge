.class public Ljxl/biff/NumFormatRecordsException;
.super Ljava/lang/Exception;
.source "NumFormatRecordsException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Internal error:  max number of FORMAT records exceeded"

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
