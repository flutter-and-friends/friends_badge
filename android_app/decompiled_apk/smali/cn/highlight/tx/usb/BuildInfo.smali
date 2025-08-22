.class public final Lcn/highlight/tx/usb/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "0.2.0-pre"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Non-instantiable class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
