.class public Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;
.super Ljava/lang/Object;
.source "TakePhotoInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private delegate:Lorg/devio/takephoto/app/TakePhoto;

.field private listener:Lorg/devio/takephoto/permission/InvokeListener;


# direct methods
.method private constructor <init>(Lorg/devio/takephoto/permission/InvokeListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->listener:Lorg/devio/takephoto/permission/InvokeListener;

    return-void
.end method

.method public static of(Lorg/devio/takephoto/permission/InvokeListener;)Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;
    .locals 1

    .line 15
    new-instance v0, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;

    invoke-direct {v0, p0}, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;-><init>(Lorg/devio/takephoto/permission/InvokeListener;)V

    return-object v0
.end method


# virtual methods
.method public bind(Lorg/devio/takephoto/app/TakePhoto;)Ljava/lang/Object;
    .locals 1

    .line 29
    iput-object p1, p0, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->delegate:Lorg/devio/takephoto/app/TakePhoto;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->listener:Lorg/devio/takephoto/permission/InvokeListener;

    new-instance v1, Lorg/devio/takephoto/model/InvokeParam;

    invoke-direct {v1, p1, p2, p3}, Lorg/devio/takephoto/model/InvokeParam;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/devio/takephoto/permission/InvokeListener;->invoke(Lorg/devio/takephoto/model/InvokeParam;)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object v0

    .line 36
    instance-of v1, p1, Lorg/devio/takephoto/app/TakePhoto;

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1, v0}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    check-cast p1, Lorg/devio/takephoto/app/TakePhoto;

    invoke-interface {p1, v0}, Lorg/devio/takephoto/app/TakePhoto;->permissionNotify(Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;)V

    .line 41
    :cond_0
    iget-object p1, p0, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->delegate:Lorg/devio/takephoto/app/TakePhoto;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
