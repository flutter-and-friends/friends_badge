.class public Lcom/yuyh/library/imgsel/config/ISCameraConfig;
.super Ljava/lang/Object;
.source "ISCameraConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;
    }
.end annotation


# instance fields
.field public aspectX:I

.field public aspectY:I

.field public filePath:Ljava/lang/String;

.field public needCrop:Z

.field public outputX:I

.field public outputY:I


# direct methods
.method public constructor <init>(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectX:I

    .line 29
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectY:I

    const/16 v0, 0x1f4

    .line 30
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputX:I

    .line 31
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputY:I

    .line 34
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$000(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->needCrop:Z

    .line 35
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$100(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->filePath:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$200(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectX:I

    .line 37
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$300(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->aspectY:I

    .line 38
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$400(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputX:I

    .line 39
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->access$500(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;->outputY:I

    return-void
.end method
