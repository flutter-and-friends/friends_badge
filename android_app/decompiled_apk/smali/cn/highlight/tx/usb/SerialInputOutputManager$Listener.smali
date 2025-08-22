.class public interface abstract Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;
.super Ljava/lang/Object;
.source "SerialInputOutputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/SerialInputOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNewData([B)V
.end method

.method public abstract onRunError(Ljava/lang/Exception;)V
.end method
