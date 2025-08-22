.class public Lcn/highlight/tx/app/CmdCard;
.super Ljava/lang/Object;
.source "CmdCard.java"


# static fields
.field private static TAG:Ljava/lang/String; = "CmdCard"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWorkMode()[B
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1bt
        0x5t
        0x6t
        0x0t
        0x0t
        0x2t
        0x1t
        0xat
        0xbt
    .end array-data
.end method
