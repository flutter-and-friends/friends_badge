.class public interface abstract Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;
.super Ljava/lang/Object;
.source "BleClientCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/dal/communication/BleClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBlueConnectCallBack"
.end annotation


# virtual methods
.method public abstract onConnectFailure()V
.end method

.method public abstract onConnectSuccess()V
.end method

.method public abstract onDisconnect()V
.end method
