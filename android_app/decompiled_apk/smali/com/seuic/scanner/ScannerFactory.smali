.class public Lcom/seuic/scanner/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScanner(Landroid/content/Context;)Lcom/seuic/scanner/Scanner;
    .locals 1

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
