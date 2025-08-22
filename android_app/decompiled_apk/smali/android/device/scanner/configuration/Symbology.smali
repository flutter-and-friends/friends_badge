.class public final enum Landroid/device/scanner/configuration/Symbology;
.super Ljava/lang/Enum;
.source "Symbology.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/device/scanner/configuration/Symbology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/device/scanner/configuration/Symbology;

.field public static final enum AZTEC:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CHINESE25:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODABAR:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODE11:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODE128:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODE32:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODE39:Landroid/device/scanner/configuration/Symbology;

.field public static final enum CODE93:Landroid/device/scanner/configuration/Symbology;

.field public static final enum COMPOSITE_CC_AB:Landroid/device/scanner/configuration/Symbology;

.field public static final enum COMPOSITE_CC_C:Landroid/device/scanner/configuration/Symbology;

.field public static final enum COMPOSITE_TLC39:Landroid/device/scanner/configuration/Symbology;

.field public static final enum DATAMATRIX:Landroid/device/scanner/configuration/Symbology;

.field public static final enum DISCRETE25:Landroid/device/scanner/configuration/Symbology;

.field public static final enum DOTCODE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum EAN13:Landroid/device/scanner/configuration/Symbology;

.field public static final enum EAN8:Landroid/device/scanner/configuration/Symbology;

.field public static final enum GS1_128:Landroid/device/scanner/configuration/Symbology;

.field public static final enum GS1_14:Landroid/device/scanner/configuration/Symbology;

.field public static final enum GS1_EXP:Landroid/device/scanner/configuration/Symbology;

.field public static final enum GS1_LIMIT:Landroid/device/scanner/configuration/Symbology;

.field public static final enum HANXIN:Landroid/device/scanner/configuration/Symbology;

.field public static final enum INTERLEAVED25:Landroid/device/scanner/configuration/Symbology;

.field public static final enum MATRIX25:Landroid/device/scanner/configuration/Symbology;

.field public static final enum MAXICODE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum MICROPDF417:Landroid/device/scanner/configuration/Symbology;

.field public static final enum MSI:Landroid/device/scanner/configuration/Symbology;

.field public static final enum NONE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum PDF417:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_4STATE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_AUSTRALIAN:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_JAPAN:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_KIX:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_PLANET:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_POSTNET:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_ROYALMAIL:Landroid/device/scanner/configuration/Symbology;

.field public static final enum POSTAL_UPUFICS:Landroid/device/scanner/configuration/Symbology;

.field public static final enum QRCODE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_13:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_15:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_16:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_20:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_21:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_27:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_28:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_30:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_33:Landroid/device/scanner/configuration/Symbology;

.field public static final enum RESERVED_6:Landroid/device/scanner/configuration/Symbology;

.field public static final enum TRIOPTIC:Landroid/device/scanner/configuration/Symbology;

.field public static final enum UPCA:Landroid/device/scanner/configuration/Symbology;

.field public static final enum UPCE:Landroid/device/scanner/configuration/Symbology;

.field public static final enum UPCE1:Landroid/device/scanner/configuration/Symbology;

.field private static allValues:[Landroid/device/scanner/configuration/Symbology;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 156
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->NONE:Landroid/device/scanner/configuration/Symbology;

    .line 157
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v2, 0x1

    const-string v3, "CODE39"

    invoke-direct {v0, v3, v2, v2}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODE39:Landroid/device/scanner/configuration/Symbology;

    .line 158
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v3, 0x2

    const-string v4, "DISCRETE25"

    invoke-direct {v0, v4, v3, v3}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->DISCRETE25:Landroid/device/scanner/configuration/Symbology;

    .line 159
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v4, 0x3

    const-string v5, "MATRIX25"

    invoke-direct {v0, v5, v4, v4}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->MATRIX25:Landroid/device/scanner/configuration/Symbology;

    .line 160
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v5, 0x4

    const-string v6, "INTERLEAVED25"

    invoke-direct {v0, v6, v5, v5}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->INTERLEAVED25:Landroid/device/scanner/configuration/Symbology;

    .line 161
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v6, 0x5

    const-string v7, "CODABAR"

    invoke-direct {v0, v7, v6, v6}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODABAR:Landroid/device/scanner/configuration/Symbology;

    .line 162
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v7, 0x6

    const-string v8, "RESERVED_6"

    invoke-direct {v0, v8, v7, v7}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_6:Landroid/device/scanner/configuration/Symbology;

    .line 163
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/4 v8, 0x7

    const-string v9, "CODE93"

    invoke-direct {v0, v9, v8, v8}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODE93:Landroid/device/scanner/configuration/Symbology;

    .line 164
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v9, 0x8

    const-string v10, "CODE128"

    invoke-direct {v0, v10, v9, v9}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODE128:Landroid/device/scanner/configuration/Symbology;

    .line 165
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v10, 0x9

    const-string v11, "UPCA"

    invoke-direct {v0, v11, v10, v10}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->UPCA:Landroid/device/scanner/configuration/Symbology;

    .line 166
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v11, 0xa

    const-string v12, "UPCE"

    invoke-direct {v0, v12, v11, v11}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->UPCE:Landroid/device/scanner/configuration/Symbology;

    .line 167
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v12, 0xb

    const-string v13, "EAN13"

    invoke-direct {v0, v13, v12, v12}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->EAN13:Landroid/device/scanner/configuration/Symbology;

    .line 168
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v13, 0xc

    const-string v14, "EAN8"

    invoke-direct {v0, v14, v13, v13}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->EAN8:Landroid/device/scanner/configuration/Symbology;

    .line 169
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v14, 0xd

    const-string v15, "RESERVED_13"

    invoke-direct {v0, v15, v14, v14}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_13:Landroid/device/scanner/configuration/Symbology;

    .line 170
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const/16 v15, 0xe

    const-string v14, "MSI"

    invoke-direct {v0, v14, v15, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->MSI:Landroid/device/scanner/configuration/Symbology;

    .line 171
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v14, "RESERVED_15"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_15:Landroid/device/scanner/configuration/Symbology;

    .line 172
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_16"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_16:Landroid/device/scanner/configuration/Symbology;

    .line 173
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "GS1_14"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->GS1_14:Landroid/device/scanner/configuration/Symbology;

    .line 174
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "GS1_LIMIT"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->GS1_LIMIT:Landroid/device/scanner/configuration/Symbology;

    .line 175
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "GS1_EXP"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->GS1_EXP:Landroid/device/scanner/configuration/Symbology;

    .line 176
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_20"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_20:Landroid/device/scanner/configuration/Symbology;

    .line 177
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_21"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_21:Landroid/device/scanner/configuration/Symbology;

    .line 178
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "PDF417"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->PDF417:Landroid/device/scanner/configuration/Symbology;

    .line 179
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "DATAMATRIX"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->DATAMATRIX:Landroid/device/scanner/configuration/Symbology;

    .line 180
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "MAXICODE"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->MAXICODE:Landroid/device/scanner/configuration/Symbology;

    .line 181
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "TRIOPTIC"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->TRIOPTIC:Landroid/device/scanner/configuration/Symbology;

    .line 182
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "CODE32"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODE32:Landroid/device/scanner/configuration/Symbology;

    .line 183
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_27"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_27:Landroid/device/scanner/configuration/Symbology;

    .line 184
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_28"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_28:Landroid/device/scanner/configuration/Symbology;

    .line 185
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "MICROPDF417"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->MICROPDF417:Landroid/device/scanner/configuration/Symbology;

    .line 186
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_30"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_30:Landroid/device/scanner/configuration/Symbology;

    .line 187
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "QRCODE"

    const/16 v14, 0x1f

    const/16 v15, 0x1f

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->QRCODE:Landroid/device/scanner/configuration/Symbology;

    .line 188
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "AZTEC"

    const/16 v14, 0x20

    const/16 v15, 0x20

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->AZTEC:Landroid/device/scanner/configuration/Symbology;

    .line 189
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "RESERVED_33"

    const/16 v14, 0x21

    const/16 v15, 0x21

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->RESERVED_33:Landroid/device/scanner/configuration/Symbology;

    .line 190
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_PLANET"

    const/16 v14, 0x22

    const/16 v15, 0x22

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_PLANET:Landroid/device/scanner/configuration/Symbology;

    .line 191
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_POSTNET"

    const/16 v14, 0x23

    const/16 v15, 0x23

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_POSTNET:Landroid/device/scanner/configuration/Symbology;

    .line 192
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_4STATE"

    const/16 v14, 0x24

    const/16 v15, 0x24

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_4STATE:Landroid/device/scanner/configuration/Symbology;

    .line 193
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_UPUFICS"

    const/16 v14, 0x25

    const/16 v15, 0x25

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_UPUFICS:Landroid/device/scanner/configuration/Symbology;

    .line 194
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_ROYALMAIL"

    const/16 v14, 0x26

    const/16 v15, 0x26

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_ROYALMAIL:Landroid/device/scanner/configuration/Symbology;

    .line 195
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_AUSTRALIAN"

    const/16 v14, 0x27

    const/16 v15, 0x27

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_AUSTRALIAN:Landroid/device/scanner/configuration/Symbology;

    .line 196
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_KIX"

    const/16 v14, 0x28

    const/16 v15, 0x28

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_KIX:Landroid/device/scanner/configuration/Symbology;

    .line 197
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "POSTAL_JAPAN"

    const/16 v14, 0x29

    const/16 v15, 0x29

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->POSTAL_JAPAN:Landroid/device/scanner/configuration/Symbology;

    .line 198
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "GS1_128"

    const/16 v14, 0x2a

    const/16 v15, 0x2a

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->GS1_128:Landroid/device/scanner/configuration/Symbology;

    .line 199
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "COMPOSITE_CC_C"

    const/16 v14, 0x2b

    const/16 v15, 0x2b

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_CC_C:Landroid/device/scanner/configuration/Symbology;

    .line 200
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "COMPOSITE_CC_AB"

    const/16 v14, 0x2c

    const/16 v15, 0x2c

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_CC_AB:Landroid/device/scanner/configuration/Symbology;

    .line 201
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "CHINESE25"

    const/16 v14, 0x2d

    const/16 v15, 0x2d

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CHINESE25:Landroid/device/scanner/configuration/Symbology;

    .line 202
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "CODE11"

    const/16 v14, 0x2e

    const/16 v15, 0x2e

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->CODE11:Landroid/device/scanner/configuration/Symbology;

    .line 203
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "UPCE1"

    const/16 v14, 0x2f

    const/16 v15, 0x2f

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->UPCE1:Landroid/device/scanner/configuration/Symbology;

    .line 204
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "COMPOSITE_TLC39"

    const/16 v14, 0x30

    const/16 v15, 0x30

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_TLC39:Landroid/device/scanner/configuration/Symbology;

    .line 205
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "HANXIN"

    const/16 v14, 0x31

    const/16 v15, 0x31

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->HANXIN:Landroid/device/scanner/configuration/Symbology;

    .line 206
    new-instance v0, Landroid/device/scanner/configuration/Symbology;

    const-string v13, "DOTCODE"

    const/16 v14, 0x32

    const/16 v15, 0x32

    invoke-direct {v0, v13, v14, v15}, Landroid/device/scanner/configuration/Symbology;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->DOTCODE:Landroid/device/scanner/configuration/Symbology;

    const/16 v0, 0x33

    new-array v0, v0, [Landroid/device/scanner/configuration/Symbology;

    .line 155
    sget-object v13, Landroid/device/scanner/configuration/Symbology;->NONE:Landroid/device/scanner/configuration/Symbology;

    aput-object v13, v0, v1

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODE39:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->DISCRETE25:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v3

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->MATRIX25:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v4

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->INTERLEAVED25:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v5

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODABAR:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v6

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_6:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v7

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODE93:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v8

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODE128:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v9

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->UPCA:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v10

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->UPCE:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v11

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->EAN13:Landroid/device/scanner/configuration/Symbology;

    aput-object v1, v0, v12

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->EAN8:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_13:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->MSI:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_15:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_16:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->GS1_14:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->GS1_LIMIT:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->GS1_EXP:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_20:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_21:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->PDF417:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->DATAMATRIX:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->MAXICODE:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->TRIOPTIC:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODE32:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_27:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_28:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->MICROPDF417:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_30:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->QRCODE:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->AZTEC:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->RESERVED_33:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_PLANET:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_POSTNET:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_4STATE:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_UPUFICS:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_ROYALMAIL:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_AUSTRALIAN:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_KIX:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->POSTAL_JAPAN:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->GS1_128:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_CC_C:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_CC_AB:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CHINESE25:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->CODE11:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->UPCE1:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->COMPOSITE_TLC39:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->HANXIN:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Landroid/device/scanner/configuration/Symbology;->DOTCODE:Landroid/device/scanner/configuration/Symbology;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->$VALUES:[Landroid/device/scanner/configuration/Symbology;

    .line 216
    invoke-static {}, Landroid/device/scanner/configuration/Symbology;->values()[Landroid/device/scanner/configuration/Symbology;

    move-result-object v0

    sput-object v0, Landroid/device/scanner/configuration/Symbology;->allValues:[Landroid/device/scanner/configuration/Symbology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput p3, p0, Landroid/device/scanner/configuration/Symbology;->value:I

    return-void
.end method

.method public static fromInt(I)Landroid/device/scanner/configuration/Symbology;
    .locals 3

    const/4 v0, 0x0

    .line 242
    :goto_0
    sget-object v1, Landroid/device/scanner/configuration/Symbology;->allValues:[Landroid/device/scanner/configuration/Symbology;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 243
    aget-object v2, v1, v0

    iget v2, v2, Landroid/device/scanner/configuration/Symbology;->value:I

    if-ne v2, p0, :cond_0

    .line 244
    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    sget-object p0, Landroid/device/scanner/configuration/Symbology;->NONE:Landroid/device/scanner/configuration/Symbology;

    return-object p0
.end method

.method public static fromOrdinal(I)Landroid/device/scanner/configuration/Symbology;
    .locals 1

    .line 231
    sget-object v0, Landroid/device/scanner/configuration/Symbology;->allValues:[Landroid/device/scanner/configuration/Symbology;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/device/scanner/configuration/Symbology;
    .locals 1

    .line 155
    const-class v0, Landroid/device/scanner/configuration/Symbology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/device/scanner/configuration/Symbology;

    return-object p0
.end method

.method public static values()[Landroid/device/scanner/configuration/Symbology;
    .locals 1

    .line 155
    sget-object v0, Landroid/device/scanner/configuration/Symbology;->$VALUES:[Landroid/device/scanner/configuration/Symbology;

    invoke-virtual {v0}, [Landroid/device/scanner/configuration/Symbology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/device/scanner/configuration/Symbology;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 255
    iget v0, p0, Landroid/device/scanner/configuration/Symbology;->value:I

    return v0
.end method
