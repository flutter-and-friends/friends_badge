.class public Lcom/apkfuns/logutils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final BR:Ljava/lang/String;

.field public static final DEFAULT_PARSE_CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINE_MAX:I = 0xc00

.field public static final MAX_CHILD_LEVEL:I = 0x2

.field public static final MIN_STACK_OFFSET:I = 0x5

.field public static final SPACE:Ljava/lang/String; = "\t"

.field public static final STRING_OBJECT_NULL:Ljava/lang/String; = "Object[object is null]"

.field public static final TAG:Ljava/lang/String; = "LogUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "line.separator"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    .line 37
    const-class v1, Lcom/apkfuns/logutils/parser/BundleParse;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/IntentParse;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/CollectionParse;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/MapParse;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/ThrowableParse;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/ReferenceParse;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/apkfuns/logutils/parser/MessageParse;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/apkfuns/logutils/Constant;->DEFAULT_PARSE_CLASS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getParsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/apkfuns/logutils/LogConfigImpl;->getInstance()Lcom/apkfuns/logutils/LogConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->getParseList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
