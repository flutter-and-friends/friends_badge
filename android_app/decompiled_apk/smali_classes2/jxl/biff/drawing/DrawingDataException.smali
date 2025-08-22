.class public Ljxl/biff/drawing/DrawingDataException;
.super Ljava/lang/RuntimeException;
.source "DrawingDataException.java"


# static fields
.field private static message:Ljava/lang/String; = "Drawing number exceeds available SpContainers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/drawing/DrawingDataException;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
