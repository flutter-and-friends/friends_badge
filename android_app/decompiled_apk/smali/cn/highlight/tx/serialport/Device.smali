.class public Lcn/highlight/tx/serialport/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private root:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcn/highlight/tx/serialport/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/tx/serialport/Device;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/highlight/tx/serialport/Device;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcn/highlight/tx/serialport/Device;->root:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/highlight/tx/serialport/Device;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/highlight/tx/serialport/Device;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/highlight/tx/serialport/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/highlight/tx/serialport/Device;->root:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcn/highlight/tx/serialport/Device;->file:Ljava/io/File;

    iput-object p1, p0, Lcn/highlight/tx/serialport/Device;->file:Ljava/io/File;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/highlight/tx/serialport/Device;->name:Ljava/lang/String;

    return-void
.end method

.method public setRoot(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/highlight/tx/serialport/Device;->root:Ljava/lang/String;

    return-void
.end method
