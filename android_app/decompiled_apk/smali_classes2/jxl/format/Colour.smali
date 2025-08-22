.class public Ljxl/format/Colour;
.super Ljava/lang/Object;
.source "Colour.java"


# static fields
.field public static final AQUA:Ljxl/format/Colour;

.field public static final AUTOMATIC:Ljxl/format/Colour;

.field public static final BLACK:Ljxl/format/Colour;

.field public static final BLUE:Ljxl/format/Colour;

.field public static final BLUE2:Ljxl/format/Colour;

.field public static final BLUE_GREY:Ljxl/format/Colour;

.field public static final BRIGHT_GREEN:Ljxl/format/Colour;

.field public static final BROWN:Ljxl/format/Colour;

.field public static final CORAL:Ljxl/format/Colour;

.field public static final DARK_BLUE:Ljxl/format/Colour;

.field public static final DARK_BLUE2:Ljxl/format/Colour;

.field public static final DARK_GREEN:Ljxl/format/Colour;

.field public static final DARK_PURPLE:Ljxl/format/Colour;

.field public static final DARK_RED:Ljxl/format/Colour;

.field public static final DARK_RED2:Ljxl/format/Colour;

.field public static final DARK_TEAL:Ljxl/format/Colour;

.field public static final DARK_YELLOW:Ljxl/format/Colour;

.field public static final DEFAULT_BACKGROUND:Ljxl/format/Colour;

.field public static final DEFAULT_BACKGROUND1:Ljxl/format/Colour;

.field public static final GOLD:Ljxl/format/Colour;

.field public static final GRAY_25:Ljxl/format/Colour;

.field public static final GRAY_50:Ljxl/format/Colour;

.field public static final GRAY_80:Ljxl/format/Colour;

.field public static final GREEN:Ljxl/format/Colour;

.field public static final GREY_25_PERCENT:Ljxl/format/Colour;

.field public static final GREY_40_PERCENT:Ljxl/format/Colour;

.field public static final GREY_50_PERCENT:Ljxl/format/Colour;

.field public static final GREY_80_PERCENT:Ljxl/format/Colour;

.field public static final ICE_BLUE:Ljxl/format/Colour;

.field public static final INDIGO:Ljxl/format/Colour;

.field public static final IVORY:Ljxl/format/Colour;

.field public static final LAVENDER:Ljxl/format/Colour;

.field public static final LIGHT_BLUE:Ljxl/format/Colour;

.field public static final LIGHT_GREEN:Ljxl/format/Colour;

.field public static final LIGHT_ORANGE:Ljxl/format/Colour;

.field public static final LIGHT_TURQUOISE:Ljxl/format/Colour;

.field public static final LIGHT_TURQUOISE2:Ljxl/format/Colour;

.field public static final LIME:Ljxl/format/Colour;

.field public static final OCEAN_BLUE:Ljxl/format/Colour;

.field public static final OLIVE_GREEN:Ljxl/format/Colour;

.field public static final ORANGE:Ljxl/format/Colour;

.field public static final PALETTE_BLACK:Ljxl/format/Colour;

.field public static final PALE_BLUE:Ljxl/format/Colour;

.field public static final PERIWINKLE:Ljxl/format/Colour;

.field public static final PINK:Ljxl/format/Colour;

.field public static final PINK2:Ljxl/format/Colour;

.field public static final PLUM:Ljxl/format/Colour;

.field public static final PLUM2:Ljxl/format/Colour;

.field public static final RED:Ljxl/format/Colour;

.field public static final ROSE:Ljxl/format/Colour;

.field public static final SEA_GREEN:Ljxl/format/Colour;

.field public static final SKY_BLUE:Ljxl/format/Colour;

.field public static final TAN:Ljxl/format/Colour;

.field public static final TEAL:Ljxl/format/Colour;

.field public static final TEAL2:Ljxl/format/Colour;

.field public static final TURQOISE2:Ljxl/format/Colour;

.field public static final TURQUOISE:Ljxl/format/Colour;

.field public static final UNKNOWN:Ljxl/format/Colour;

.field public static final VERY_LIGHT_YELLOW:Ljxl/format/Colour;

.field public static final VIOLET:Ljxl/format/Colour;

.field public static final VIOLET2:Ljxl/format/Colour;

.field public static final WHITE:Ljxl/format/Colour;

.field public static final YELLOW:Ljxl/format/Colour;

.field public static final YELLOW2:Ljxl/format/Colour;

.field private static colours:[Ljxl/format/Colour;


# instance fields
.field private rgb:Ljxl/format/RGB;

.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/format/Colour;

    .line 48
    sput-object v0, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 168
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x7fee

    const-string v3, "unknown"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    .line 170
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x7fff

    const-string v9, "black"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    .line 172
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x9

    const-string v3, "white"

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->WHITE:Ljxl/format/Colour;

    .line 174
    new-instance v0, Ljxl/format/Colour;

    const/4 v8, 0x0

    const-string v9, "default background"

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND1:Ljxl/format/Colour;

    .line 176
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0xc0

    const-string v3, "default background"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    .line 178
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x8

    const-string v9, "black"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    .line 183
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0xa

    const-string v3, "red"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    .line 184
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0xb

    const-string v9, "bright green"

    const/4 v10, 0x0

    const/16 v11, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BRIGHT_GREEN:Ljxl/format/Colour;

    .line 185
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0xc

    const-string v3, "blue"

    const/4 v4, 0x0

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0xd

    const-string v9, "yellow"

    const/16 v10, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->YELLOW:Ljxl/format/Colour;

    .line 186
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0xe

    const-string v3, "pink"

    const/16 v4, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PINK:Ljxl/format/Colour;

    .line 187
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0xf

    const-string v9, "turquoise"

    const/4 v10, 0x0

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->TURQUOISE:Ljxl/format/Colour;

    .line 188
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x10

    const-string v3, "dark red"

    const/16 v4, 0x80

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_RED:Ljxl/format/Colour;

    .line 189
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x11

    const-string v9, "green"

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREEN:Ljxl/format/Colour;

    .line 190
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x12

    const-string v3, "dark blue"

    const/4 v4, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_BLUE:Ljxl/format/Colour;

    .line 191
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x13

    const-string v9, "dark yellow"

    const/16 v10, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_YELLOW:Ljxl/format/Colour;

    .line 192
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x14

    const-string v3, "violet"

    const/16 v4, 0x80

    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->VIOLET:Ljxl/format/Colour;

    .line 193
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x15

    const-string v9, "teal"

    const/4 v10, 0x0

    const/16 v12, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->TEAL:Ljxl/format/Colour;

    .line 194
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x16

    const-string v3, "grey 25%"

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    const/16 v6, 0xc0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_25_PERCENT:Ljxl/format/Colour;

    .line 195
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x17

    const-string v9, "grey 50%"

    const/16 v10, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_50_PERCENT:Ljxl/format/Colour;

    .line 196
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x18

    const-string v3, "periwinkle%"

    const/16 v4, 0x99

    const/16 v5, 0x99

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PERIWINKLE:Ljxl/format/Colour;

    .line 197
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x19

    const-string v9, "plum"

    const/16 v10, 0x99

    const/16 v11, 0x33

    const/16 v12, 0x66

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PLUM2:Ljxl/format/Colour;

    .line 198
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x1a

    const-string v3, "ivory"

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xcc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->IVORY:Ljxl/format/Colour;

    .line 199
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x1b

    const-string v9, "light turquoise"

    const/16 v10, 0xcc

    const/16 v11, 0xff

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_TURQUOISE2:Ljxl/format/Colour;

    .line 200
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x1c

    const-string v3, "dark purple"

    const/16 v4, 0x66

    const/4 v5, 0x0

    const/16 v6, 0x66

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_PURPLE:Ljxl/format/Colour;

    .line 201
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x1d

    const-string v9, "coral"

    const/16 v10, 0xff

    const/16 v11, 0x80

    const/16 v12, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->CORAL:Ljxl/format/Colour;

    .line 202
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x1e

    const-string v3, "ocean blue"

    const/4 v4, 0x0

    const/16 v5, 0x66

    const/16 v6, 0xcc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->OCEAN_BLUE:Ljxl/format/Colour;

    .line 203
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x1f

    const-string v9, "ice blue"

    const/16 v10, 0xcc

    const/16 v11, 0xcc

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->ICE_BLUE:Ljxl/format/Colour;

    .line 204
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x20

    const-string v3, "dark blue"

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_BLUE2:Ljxl/format/Colour;

    .line 205
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x21

    const-string v9, "pink"

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PINK2:Ljxl/format/Colour;

    .line 206
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x22

    const-string v3, "yellow"

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->YELLOW2:Ljxl/format/Colour;

    .line 207
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x23

    const-string v9, "turqoise"

    const/4 v10, 0x0

    const/16 v11, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->TURQOISE2:Ljxl/format/Colour;

    .line 208
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x24

    const-string v3, "violet"

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->VIOLET2:Ljxl/format/Colour;

    .line 209
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x25

    const-string v9, "dark red"

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_RED2:Ljxl/format/Colour;

    .line 210
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x26

    const-string v3, "teal"

    const/4 v4, 0x0

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->TEAL2:Ljxl/format/Colour;

    .line 211
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x27

    const-string v9, "blue"

    const/4 v10, 0x0

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BLUE2:Ljxl/format/Colour;

    .line 212
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x28

    const-string v3, "sky blue"

    const/16 v5, 0xcc

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->SKY_BLUE:Ljxl/format/Colour;

    .line 213
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x29

    const-string v9, "light turquoise"

    const/16 v10, 0xcc

    const/16 v11, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_TURQUOISE:Ljxl/format/Colour;

    .line 215
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x2a

    const-string v3, "light green"

    const/16 v4, 0xcc

    const/16 v5, 0xff

    const/16 v6, 0xcc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_GREEN:Ljxl/format/Colour;

    .line 216
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x2b

    const-string v9, "very light yellow"

    const/16 v10, 0xff

    const/16 v12, 0x99

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->VERY_LIGHT_YELLOW:Ljxl/format/Colour;

    .line 218
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x2c

    const-string v3, "pale blue"

    const/16 v4, 0x99

    const/16 v5, 0xcc

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PALE_BLUE:Ljxl/format/Colour;

    .line 219
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x2d

    const-string v9, "rose"

    const/16 v11, 0x99

    const/16 v12, 0xcc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->ROSE:Ljxl/format/Colour;

    .line 220
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x2e

    const-string v3, "lavender"

    const/16 v4, 0xcc

    const/16 v5, 0x99

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LAVENDER:Ljxl/format/Colour;

    .line 221
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x2f

    const-string v9, "tan"

    const/16 v11, 0xcc

    const/16 v12, 0x99

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->TAN:Ljxl/format/Colour;

    .line 222
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x30

    const-string v3, "light blue"

    const/16 v4, 0x33

    const/16 v5, 0x66

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    .line 223
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x31

    const-string v9, "aqua"

    const/16 v10, 0x33

    const/16 v12, 0xcc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->AQUA:Ljxl/format/Colour;

    .line 224
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x32

    const-string v3, "lime"

    const/16 v4, 0x99

    const/16 v5, 0xcc

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    .line 225
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x33

    const-string v9, "gold"

    const/16 v10, 0xff

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GOLD:Ljxl/format/Colour;

    .line 226
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x34

    const-string v3, "light orange"

    const/16 v4, 0xff

    const/16 v5, 0x99

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_ORANGE:Ljxl/format/Colour;

    .line 228
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x35

    const-string v9, "orange"

    const/16 v11, 0x66

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->ORANGE:Ljxl/format/Colour;

    .line 229
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x36

    const-string v3, "blue grey"

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0xcc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BLUE_GREY:Ljxl/format/Colour;

    .line 230
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x37

    const-string v9, "grey 40%"

    const/16 v10, 0x96

    const/16 v11, 0x96

    const/16 v12, 0x96

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_40_PERCENT:Ljxl/format/Colour;

    .line 231
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x38

    const-string v3, "dark teal"

    const/4 v4, 0x0

    const/16 v5, 0x33

    const/16 v6, 0x66

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_TEAL:Ljxl/format/Colour;

    .line 232
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x39

    const-string v9, "sea green"

    const/16 v10, 0x33

    const/16 v11, 0x99

    const/16 v12, 0x66

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->SEA_GREEN:Ljxl/format/Colour;

    .line 233
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x3a

    const-string v3, "dark green"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DARK_GREEN:Ljxl/format/Colour;

    .line 234
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x3b

    const-string v9, "olive green"

    const/16 v11, 0x33

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->OLIVE_GREEN:Ljxl/format/Colour;

    .line 235
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x3c

    const-string v3, "brown"

    const/16 v4, 0x99

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BROWN:Ljxl/format/Colour;

    .line 236
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x3d

    const-string v9, "plum"

    const/16 v10, 0x99

    const/16 v12, 0x66

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PLUM:Ljxl/format/Colour;

    .line 237
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x3e

    const-string v3, "indigo"

    const/16 v4, 0x33

    const/16 v6, 0x99

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->INDIGO:Ljxl/format/Colour;

    .line 238
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x3f

    const-string v9, "grey 80%"

    const/16 v10, 0x33

    const/16 v12, 0x33

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_80_PERCENT:Ljxl/format/Colour;

    .line 239
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x40

    const-string v3, "automatic"

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    .line 242
    sget-object v0, Ljxl/format/Colour;->GREY_80_PERCENT:Ljxl/format/Colour;

    sput-object v0, Ljxl/format/Colour;->GRAY_80:Ljxl/format/Colour;

    .line 243
    sget-object v0, Ljxl/format/Colour;->GREY_50_PERCENT:Ljxl/format/Colour;

    sput-object v0, Ljxl/format/Colour;->GRAY_50:Ljxl/format/Colour;

    .line 244
    sget-object v0, Ljxl/format/Colour;->GREY_25_PERCENT:Ljxl/format/Colour;

    sput-object v0, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;III)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Ljxl/format/Colour;->value:I

    .line 62
    iput-object p2, p0, Ljxl/format/Colour;->string:Ljava/lang/String;

    .line 63
    new-instance p1, Ljxl/format/RGB;

    invoke-direct {p1, p3, p4, p5}, Ljxl/format/RGB;-><init>(III)V

    iput-object p1, p0, Ljxl/format/Colour;->rgb:Ljxl/format/RGB;

    .line 65
    sget-object p1, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 66
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/Colour;

    sput-object p2, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 67
    sget-object p2, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    array-length p3, p1

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    sget-object p2, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getAllColours()[Ljxl/format/Colour;
    .locals 1

    .line 164
    sget-object v0, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    return-object v0
.end method

.method public static getInternalColour(I)Ljxl/format/Colour;
    .locals 3

    const/4 v0, 0x0

    .line 146
    :goto_0
    sget-object v1, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 148
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Colour;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 150
    sget-object p0, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    sget-object p0, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    return-object p0
.end method


# virtual methods
.method public getDefaultBlue()I
    .locals 1

    .line 125
    iget-object v0, p0, Ljxl/format/Colour;->rgb:Ljxl/format/RGB;

    invoke-virtual {v0}, Ljxl/format/RGB;->getBlue()I

    move-result v0

    return v0
.end method

.method public getDefaultGreen()I
    .locals 1

    .line 113
    iget-object v0, p0, Ljxl/format/Colour;->rgb:Ljxl/format/RGB;

    invoke-virtual {v0}, Ljxl/format/RGB;->getGreen()I

    move-result v0

    return v0
.end method

.method public getDefaultRGB()Ljxl/format/RGB;
    .locals 1

    .line 135
    iget-object v0, p0, Ljxl/format/Colour;->rgb:Ljxl/format/RGB;

    return-object v0
.end method

.method public getDefaultRed()I
    .locals 1

    .line 101
    iget-object v0, p0, Ljxl/format/Colour;->rgb:Ljxl/format/RGB;

    invoke-virtual {v0}, Ljxl/format/RGB;->getRed()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ljxl/format/Colour;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 79
    iget v0, p0, Ljxl/format/Colour;->value:I

    return v0
.end method
