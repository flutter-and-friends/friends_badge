.class public final enum Lorg/devio/takephoto/model/TExceptionType;
.super Ljava/lang/Enum;
.source "TExceptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/devio/takephoto/model/TExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_NOT_IMAGE:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_CAMERA:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_FIND:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_MATCH_CROP_INTENT:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_MATCH_PICK_INTENT:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_URI_NULL:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_URI_PARSE_FAIL:Lorg/devio/takephoto/model/TExceptionType;

.field public static final enum TYPE_WRITE_FAIL:Lorg/devio/takephoto/model/TExceptionType;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v1, 0x0

    const-string v2, "TYPE_NOT_IMAGE"

    const-string v3, "\u9009\u62e9\u7684\u6587\u4ef6\u4e0d\u662f\u56fe\u7247"

    invoke-direct {v0, v2, v1, v3}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lorg/devio/takephoto/model/TExceptionType;

    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v2, 0x1

    const-string v3, "TYPE_WRITE_FAIL"

    const-string v4, "\u4fdd\u5b58\u9009\u62e9\u7684\u7684\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v0, v3, v2, v4}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_WRITE_FAIL:Lorg/devio/takephoto/model/TExceptionType;

    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v3, 0x2

    const-string v4, "TYPE_URI_NULL"

    const-string v5, "\u6240\u9009\u7167\u7247\u7684Uri \u4e3anull"

    invoke-direct {v0, v4, v3, v5}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_URI_NULL:Lorg/devio/takephoto/model/TExceptionType;

    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v4, 0x3

    const-string v5, "TYPE_URI_PARSE_FAIL"

    const-string v6, "\u4eceUri\u4e2d\u83b7\u53d6\u6587\u4ef6\u8def\u5f84\u5931\u8d25"

    invoke-direct {v0, v5, v4, v6}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_URI_PARSE_FAIL:Lorg/devio/takephoto/model/TExceptionType;

    .line 9
    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v5, 0x4

    const-string v6, "TYPE_NO_MATCH_PICK_INTENT"

    const-string v7, "\u6ca1\u6709\u5339\u914d\u5230\u9009\u62e9\u56fe\u7247\u7684Intent"

    invoke-direct {v0, v6, v5, v7}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_PICK_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v6, 0x5

    const-string v7, "TYPE_NO_MATCH_CROP_INTENT"

    const-string v8, "\u6ca1\u6709\u5339\u914d\u5230\u88c1\u5207\u56fe\u7247\u7684Intent"

    invoke-direct {v0, v7, v6, v8}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_CROP_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v7, 0x6

    const-string v8, "TYPE_NO_CAMERA"

    const-string v9, "\u6ca1\u6709\u76f8\u673a"

    invoke-direct {v0, v8, v7, v9}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_CAMERA:Lorg/devio/takephoto/model/TExceptionType;

    .line 10
    new-instance v0, Lorg/devio/takephoto/model/TExceptionType;

    const/4 v8, 0x7

    const-string v9, "TYPE_NO_FIND"

    const-string v10, "\u9009\u62e9\u7684\u6587\u4ef6\u6ca1\u6709\u627e\u5230"

    invoke-direct {v0, v9, v8, v10}, Lorg/devio/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_FIND:Lorg/devio/takephoto/model/TExceptionType;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/devio/takephoto/model/TExceptionType;

    .line 7
    sget-object v9, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v9, v0, v1

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_WRITE_FAIL:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_URI_NULL:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_URI_PARSE_FAIL:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_PICK_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_CROP_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_CAMERA:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_FIND:Lorg/devio/takephoto/model/TExceptionType;

    aput-object v1, v0, v8

    sput-object v0, Lorg/devio/takephoto/model/TExceptionType;->$VALUES:[Lorg/devio/takephoto/model/TExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lorg/devio/takephoto/model/TExceptionType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/devio/takephoto/model/TExceptionType;
    .locals 1

    .line 7
    const-class v0, Lorg/devio/takephoto/model/TExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/devio/takephoto/model/TExceptionType;

    return-object p0
.end method

.method public static values()[Lorg/devio/takephoto/model/TExceptionType;
    .locals 1

    .line 7
    sget-object v0, Lorg/devio/takephoto/model/TExceptionType;->$VALUES:[Lorg/devio/takephoto/model/TExceptionType;

    invoke-virtual {v0}, [Lorg/devio/takephoto/model/TExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/devio/takephoto/model/TExceptionType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/devio/takephoto/model/TExceptionType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
