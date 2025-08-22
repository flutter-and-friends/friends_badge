.class public final Lcom/android/usbserial/util/MonotonicClock;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# static fields
.field private static final NS_PER_MS:J = 0xf4240L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static millis()J
    .locals 4

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
