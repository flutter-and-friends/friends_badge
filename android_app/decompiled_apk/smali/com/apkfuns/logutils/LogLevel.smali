.class public Lcom/apkfuns/logutils/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkfuns/logutils/LogLevel$LogLevelType;
    }
.end annotation


# static fields
.field public static final TYPE_DEBUG:I = 0x2

.field public static final TYPE_ERROR:I = 0x5

.field public static final TYPE_INFO:I = 0x3

.field public static final TYPE_VERBOSE:I = 0x1

.field public static final TYPE_WARM:I = 0x4

.field public static final TYPE_WTF:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
