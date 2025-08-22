.class public final Lcom/blankj/utilcode/util/AntiShakeUtils;
.super Ljava/lang/Object;
.source "AntiShakeUtils.java"


# static fields
.field private static final DEFAULT_DURATION:J = 0xc8L

.field private static final TAG_KEY:I = 0x7effffff


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValid(Landroid/view/View;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0xc8

    .line 25
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/AntiShakeUtils;->isValid(Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'view\' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isValid(Landroid/view/View;J)Z
    .locals 7

    if-eqz p0, :cond_2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x7effffff

    .line 30
    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 31
    instance-of v4, v3, Ljava/lang/Long;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v5

    .line 35
    :cond_0
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    cmp-long v6, v3, p1

    if-gtz v6, :cond_1

    const/4 p0, 0x0

    return p0

    .line 37
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v5

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument \'view\' of type View (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
