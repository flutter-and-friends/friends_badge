.class public final enum Lcom/codbking/widget/bean/DateType;
.super Ljava/lang/Enum;
.source "DateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codbking/widget/bean/DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codbking/widget/bean/DateType;

.field public static final enum TYPE_ALL:Lcom/codbking/widget/bean/DateType;

.field public static final enum TYPE_HM:Lcom/codbking/widget/bean/DateType;

.field public static final enum TYPE_YMD:Lcom/codbking/widget/bean/DateType;

.field public static final enum TYPE_YMDH:Lcom/codbking/widget/bean/DateType;

.field public static final enum TYPE_YMDHM:Lcom/codbking/widget/bean/DateType;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/codbking/widget/bean/DateType;

    const/4 v1, 0x0

    const-string v2, "TYPE_ALL"

    const-string v3, "yyyy-MM-dd E hh:mm"

    invoke-direct {v0, v2, v1, v3}, Lcom/codbking/widget/bean/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codbking/widget/bean/DateType;->TYPE_ALL:Lcom/codbking/widget/bean/DateType;

    .line 10
    new-instance v0, Lcom/codbking/widget/bean/DateType;

    const/4 v2, 0x1

    const-string v3, "TYPE_YMDHM"

    const-string v4, "yyyy-MM-dd hh:mm"

    invoke-direct {v0, v3, v2, v4}, Lcom/codbking/widget/bean/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codbking/widget/bean/DateType;->TYPE_YMDHM:Lcom/codbking/widget/bean/DateType;

    .line 11
    new-instance v0, Lcom/codbking/widget/bean/DateType;

    const/4 v3, 0x2

    const-string v4, "TYPE_YMDH"

    const-string v5, "yyyy-MM-dd hh"

    invoke-direct {v0, v4, v3, v5}, Lcom/codbking/widget/bean/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codbking/widget/bean/DateType;->TYPE_YMDH:Lcom/codbking/widget/bean/DateType;

    .line 12
    new-instance v0, Lcom/codbking/widget/bean/DateType;

    const/4 v4, 0x3

    const-string v5, "TYPE_YMD"

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v0, v5, v4, v6}, Lcom/codbking/widget/bean/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codbking/widget/bean/DateType;->TYPE_YMD:Lcom/codbking/widget/bean/DateType;

    .line 13
    new-instance v0, Lcom/codbking/widget/bean/DateType;

    const/4 v5, 0x4

    const-string v6, "TYPE_HM"

    const-string v7, "hh:mm"

    invoke-direct {v0, v6, v5, v7}, Lcom/codbking/widget/bean/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codbking/widget/bean/DateType;->TYPE_HM:Lcom/codbking/widget/bean/DateType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/codbking/widget/bean/DateType;

    .line 7
    sget-object v6, Lcom/codbking/widget/bean/DateType;->TYPE_ALL:Lcom/codbking/widget/bean/DateType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/codbking/widget/bean/DateType;->TYPE_YMDHM:Lcom/codbking/widget/bean/DateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/codbking/widget/bean/DateType;->TYPE_YMDH:Lcom/codbking/widget/bean/DateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/codbking/widget/bean/DateType;->TYPE_YMD:Lcom/codbking/widget/bean/DateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/codbking/widget/bean/DateType;->TYPE_HM:Lcom/codbking/widget/bean/DateType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/codbking/widget/bean/DateType;->$VALUES:[Lcom/codbking/widget/bean/DateType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/codbking/widget/bean/DateType;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codbking/widget/bean/DateType;
    .locals 1

    .line 7
    const-class v0, Lcom/codbking/widget/bean/DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codbking/widget/bean/DateType;

    return-object p0
.end method

.method public static values()[Lcom/codbking/widget/bean/DateType;
    .locals 1

    .line 7
    sget-object v0, Lcom/codbking/widget/bean/DateType;->$VALUES:[Lcom/codbking/widget/bean/DateType;

    invoke-virtual {v0}, [Lcom/codbking/widget/bean/DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codbking/widget/bean/DateType;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/codbking/widget/bean/DateType;->format:Ljava/lang/String;

    return-object v0
.end method
