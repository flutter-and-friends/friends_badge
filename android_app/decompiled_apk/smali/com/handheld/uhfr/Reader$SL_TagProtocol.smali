.class public final enum Lcom/handheld/uhfr/Reader$SL_TagProtocol;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SL_TagProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handheld/uhfr/Reader$SL_TagProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_GEN2:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_IPX256:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_IPX64:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_ISO180006B:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_NONE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 260
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const/4 v1, 0x0

    const-string v2, "SL_TAG_PROTOCOL_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 261
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "SL_TAG_PROTOCOL_ISO180006B"

    invoke-direct {v0, v4, v2, v3}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 262
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const/4 v4, 0x2

    const/4 v5, 0x5

    const-string v6, "SL_TAG_PROTOCOL_GEN2"

    invoke-direct {v0, v6, v4, v5}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 263
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const/4 v6, 0x6

    const-string v7, "SL_TAG_PROTOCOL_ISO180006B_UCODE"

    invoke-direct {v0, v7, v3, v6}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 264
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const/4 v7, 0x4

    const-string v8, "SL_TAG_PROTOCOL_IPX64"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v7, v9}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 265
    new-instance v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    const-string v8, "SL_TAG_PROTOCOL_IPX256"

    const/16 v9, 0x8

    invoke-direct {v0, v8, v5, v9}, Lcom/handheld/uhfr/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX256:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    new-array v0, v6, [Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 259
    sget-object v6, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v6, v0, v1

    sget-object v1, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v1, v0, v7

    sget-object v1, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX256:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->$VALUES:[Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 270
    iput p3, p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->p_v:I

    return-void
.end method

.method public static valueOf(I)Lcom/handheld/uhfr/Reader$SL_TagProtocol;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_0
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX256:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0

    .line 293
    :cond_1
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0

    .line 291
    :cond_2
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0

    .line 289
    :cond_3
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0

    .line 287
    :cond_4
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0

    .line 280
    :cond_5
    sget-object p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handheld/uhfr/Reader$SL_TagProtocol;
    .locals 1

    .line 259
    const-class v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object p0
.end method

.method public static values()[Lcom/handheld/uhfr/Reader$SL_TagProtocol;
    .locals 1

    .line 259
    sget-object v0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->$VALUES:[Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    invoke-virtual {v0}, [Lcom/handheld/uhfr/Reader$SL_TagProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->p_v:I

    return v0
.end method
