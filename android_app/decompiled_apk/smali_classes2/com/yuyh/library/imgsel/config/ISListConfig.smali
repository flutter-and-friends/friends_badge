.class public Lcom/yuyh/library/imgsel/config/ISListConfig;
.super Ljava/lang/Object;
.source "ISListConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    }
.end annotation


# instance fields
.field public allImagesText:Ljava/lang/String;

.field public aspectX:I

.field public aspectY:I

.field public backResId:I

.field public btnBgColor:I

.field public btnText:Ljava/lang/String;

.field public btnTextColor:I

.field public filePath:Ljava/lang/String;

.field public isDark:Z

.field public maxNum:I

.field public multiSelect:Z

.field public needCamera:Z

.field public needCrop:Z

.field public outputX:I

.field public outputY:I

.field public rememberSelected:Z

.field public statusBarColor:I

.field public title:Ljava/lang/String;

.field public titleBgColor:I

.field public titleColor:I


# direct methods
.method public constructor <init>(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->rememberSelected:Z

    const/16 v2, 0x9

    .line 35
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    const/4 v2, -0x1

    .line 42
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->statusBarColor:I

    .line 47
    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->isDark:Z

    .line 52
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->backResId:I

    .line 91
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectX:I

    .line 92
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectY:I

    const/16 v0, 0x1f4

    .line 93
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputX:I

    .line 94
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputY:I

    .line 97
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$000(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCrop:Z

    .line 98
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$100(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    .line 99
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$200(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->rememberSelected:Z

    .line 100
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$300(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    .line 101
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$400(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    .line 102
    iget v0, p1, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->statusBarColor:I

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->statusBarColor:I

    .line 103
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$500(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->isDark:Z

    .line 104
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$600(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->backResId:I

    .line 105
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$700(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->title:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$800(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->titleBgColor:I

    .line 107
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$900(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->titleColor:I

    .line 108
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1000(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnText:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1100(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnBgColor:I

    .line 110
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1200(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnTextColor:I

    .line 111
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1300(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->allImagesText:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1400(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->filePath:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1500(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectX:I

    .line 114
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1600(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectY:I

    .line 115
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1700(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputX:I

    .line 116
    invoke-static {p1}, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->access$1800(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputY:I

    return-void
.end method
