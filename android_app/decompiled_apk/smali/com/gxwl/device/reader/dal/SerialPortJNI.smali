.class public Lcom/gxwl/device/reader/dal/SerialPortJNI;
.super Ljava/lang/Object;
.source "SerialPortJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SerialPortLib"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closePort()V
.end method

.method public static native openPort(Ljava/lang/String;IIIC)I
.end method

.method public static native readPort(I)[B
.end method

.method public static native setMode(I)I
.end method

.method public static native writePort([B)V
.end method
