.class public Lcommon/AssertionFailed;
.super Ljava/lang/RuntimeException;
.source "AssertionFailed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcommon/AssertionFailed;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
