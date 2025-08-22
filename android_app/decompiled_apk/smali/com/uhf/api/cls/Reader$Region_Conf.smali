.class public final enum Lcom/uhf/api/cls/Reader$Region_Conf;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region_Conf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$Region_Conf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_EU:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_EU2:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_KR:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_OPEN:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

.field public static final enum RG_PRC2:Lcom/uhf/api/cls/Reader$Region_Conf;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 186
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v1, 0x0

    const-string v2, "RG_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 187
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v2, 0x1

    const-string v3, "RG_NA"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 188
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v3, 0x2

    const-string v4, "RG_EU"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 189
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v4, 0x7

    const/4 v5, 0x3

    const-string v6, "RG_EU2"

    invoke-direct {v0, v6, v5, v4}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU2:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 190
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v6, 0x4

    const/16 v7, 0x8

    const-string v8, "RG_EU3"

    invoke-direct {v0, v8, v6, v7}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 191
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v8, 0x5

    const-string v9, "RG_KR"

    invoke-direct {v0, v9, v8, v5}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_KR:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 192
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const/4 v9, 0x6

    const-string v10, "RG_PRC"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 193
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const-string v10, "RG_PRC2"

    const/16 v11, 0xa

    invoke-direct {v0, v10, v4, v11}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC2:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 194
    new-instance v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    const-string v10, "RG_OPEN"

    const/16 v11, 0xff

    invoke-direct {v0, v10, v7, v11}, Lcom/uhf/api/cls/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_OPEN:Lcom/uhf/api/cls/Reader$Region_Conf;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 185
    sget-object v10, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v10, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU2:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_KR:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC2:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_OPEN:Lcom/uhf/api/cls/Reader$Region_Conf;

    aput-object v1, v0, v7

    sput-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->$VALUES:[Lcom/uhf/api/cls/Reader$Region_Conf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p3, p0, Lcom/uhf/api/cls/Reader$Region_Conf;->p_v:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;
    .locals 1

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_OPEN:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 223
    :cond_1
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC2:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 217
    :cond_2
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 215
    :cond_3
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU2:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 221
    :cond_4
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 219
    :cond_5
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_KR:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 213
    :cond_6
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 211
    :cond_7
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0

    .line 209
    :cond_8
    sget-object p0, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$Region_Conf;
    .locals 1

    .line 185
    const-class v0, Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$Region_Conf;
    .locals 1

    .line 185
    sget-object v0, Lcom/uhf/api/cls/Reader$Region_Conf;->$VALUES:[Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$Region_Conf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/uhf/api/cls/Reader$Region_Conf;->p_v:I

    return v0
.end method
