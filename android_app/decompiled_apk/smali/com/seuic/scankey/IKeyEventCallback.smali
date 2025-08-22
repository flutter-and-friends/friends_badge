.class public interface abstract Lcom/seuic/scankey/IKeyEventCallback;
.super Ljava/lang/Object;
.source "IKeyEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scankey/IKeyEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onKeyDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onKeyUp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
