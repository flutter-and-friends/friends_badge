.class public Lcom/yanzhenjie/permission/runtime/setting/AllRequest;
.super Ljava/lang/Object;
.source "AllRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/runtime/setting/SettingRequest;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/setting/AllRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2

    .line 34
    new-instance v0, Lcom/yanzhenjie/permission/runtime/setting/SettingPage;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/setting/AllRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/setting/SettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/runtime/setting/SettingPage;->start(I)V

    return-void
.end method
