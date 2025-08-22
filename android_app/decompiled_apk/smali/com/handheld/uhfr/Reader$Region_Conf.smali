.class public final enum Lcom/handheld/uhfr/Reader$Region_Conf;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region_Conf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handheld/uhfr/Reader$Region_Conf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_EU:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_EU2:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_EU3:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_KR:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_NA:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_NONE:Lcom/handheld/uhfr/Reader$Region_Conf;

.field public static final enum RG_PRC:Lcom/handheld/uhfr/Reader$Region_Conf;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 164
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v1, 0x0

    const-string v2, "RG_PRC"

    invoke-direct {v0, v2, v1, v1}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_PRC:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 165
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v2, 0x1

    const-string v3, "RG_NA"

    invoke-direct {v0, v3, v2, v2}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NA:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 166
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v3, 0x2

    const-string v4, "RG_NONE"

    invoke-direct {v0, v4, v3, v3}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NONE:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 167
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v4, 0x3

    const-string v5, "RG_KR"

    invoke-direct {v0, v5, v4, v4}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_KR:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 168
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v5, 0x4

    const-string v6, "RG_EU"

    invoke-direct {v0, v6, v5, v5}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 169
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v6, 0x5

    const-string v7, "RG_EU2"

    invoke-direct {v0, v7, v6, v6}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU2:Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 170
    new-instance v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v7, 0x6

    const-string v8, "RG_EU3"

    invoke-direct {v0, v8, v7, v7}, Lcom/handheld/uhfr/Reader$Region_Conf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU3:Lcom/handheld/uhfr/Reader$Region_Conf;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/handheld/uhfr/Reader$Region_Conf;

    .line 163
    sget-object v8, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_PRC:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v8, v0, v1

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NA:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NONE:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_KR:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU2:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v6

    sget-object v1, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU3:Lcom/handheld/uhfr/Reader$Region_Conf;

    aput-object v1, v0, v7

    sput-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->$VALUES:[Lcom/handheld/uhfr/Reader$Region_Conf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lcom/handheld/uhfr/Reader$Region_Conf;->p_v:I

    return-void
.end method

.method public static valueOf(I)Lcom/handheld/uhfr/Reader$Region_Conf;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 251
    :pswitch_0
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU3:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 249
    :pswitch_1
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU2:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 247
    :pswitch_2
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_EU:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 245
    :pswitch_3
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_KR:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 243
    :pswitch_4
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NONE:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 241
    :pswitch_5
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_NA:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    .line 239
    :pswitch_6
    sget-object p0, Lcom/handheld/uhfr/Reader$Region_Conf;->RG_PRC:Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handheld/uhfr/Reader$Region_Conf;
    .locals 1

    .line 163
    const-class v0, Lcom/handheld/uhfr/Reader$Region_Conf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object p0
.end method

.method public static values()[Lcom/handheld/uhfr/Reader$Region_Conf;
    .locals 1

    .line 163
    sget-object v0, Lcom/handheld/uhfr/Reader$Region_Conf;->$VALUES:[Lcom/handheld/uhfr/Reader$Region_Conf;

    invoke-virtual {v0}, [Lcom/handheld/uhfr/Reader$Region_Conf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handheld/uhfr/Reader$Region_Conf;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/handheld/uhfr/Reader$Region_Conf;->p_v:I

    return v0
.end method
