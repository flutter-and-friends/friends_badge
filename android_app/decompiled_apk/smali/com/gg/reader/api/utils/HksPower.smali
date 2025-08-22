.class public Lcom/gg/reader/api/utils/HksPower;
.super Ljava/lang/Object;
.source "HksPower.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native uhf_1io(I)V
.end method

.method public static native uhf_power(I)V
.end method
