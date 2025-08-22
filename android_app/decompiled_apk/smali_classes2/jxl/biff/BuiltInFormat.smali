.class final Ljxl/biff/BuiltInFormat;
.super Ljava/lang/Object;
.source "BuiltInFormat.java"

# interfaces
.implements Ljxl/format/Format;
.implements Ljxl/biff/DisplayFormat;


# static fields
.field public static builtIns:[Ljxl/biff/BuiltInFormat;


# instance fields
.field private formatIndex:I

.field private formatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x32

    new-array v0, v0, [Ljxl/biff/BuiltInFormat;

    .line 129
    sput-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    .line 134
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 135
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x1

    const-string v3, "0"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 136
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x2

    const-string v3, "0.00"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 137
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x3

    const-string v3, "#,##0"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 138
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x4

    const-string v3, "#,##0.00"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 139
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x5

    const-string v3, "($#,##0_);($#,##0)"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 140
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "($#,##0_);[Red]($#,##0)"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 141
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 142
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0x8

    const-string v3, "($#,##0.00_);[Red]($#,##0.00)"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 143
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0x9

    const-string v3, "0%"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 144
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0xa

    const-string v3, "0.00%"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 145
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0xb

    const-string v3, "0.00E+00"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 146
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0xc

    const-string v3, "# ?/?"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 147
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const/16 v2, 0xd

    const-string v3, "# ??/??"

    invoke-direct {v1, v3, v2}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 148
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "dd/mm/yyyy"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 149
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "d-mmm-yy"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 150
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "d-mmm"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 151
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "mmm-yy"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 152
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "h:mm AM/PM"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 153
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "h:mm:ss AM/PM"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 154
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "h:mm"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 155
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "h:mm:ss"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 156
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "m/d/yy h:mm"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 157
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "(#,##0_);(#,##0)"

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 158
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "(#,##0_);[Red](#,##0)"

    const/16 v3, 0x26

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 159
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "(#,##0.00_);(#,##0.00)"

    const/16 v3, 0x27

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 160
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "(#,##0.00_);[Red](#,##0.00)"

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 161
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "_(*#,##0_);_(*(#,##0);_(*\"-\"_);(@_)"

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 163
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "_($*#,##0_);_($*(#,##0);_($*\"-\"_);(@_)"

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 165
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "_(* #,##0.00_);_(* (#,##0.00);_(* \"-\"??_);(@_)"

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 167
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "_($* #,##0.00_);_($* (#,##0.00);_($* \"-\"??_);(@_)"

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 169
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "mm:ss"

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 170
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "[h]mm:ss"

    const/16 v3, 0x2e

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 171
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "mm:ss.0"

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 172
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "##0.0E+0"

    const/16 v3, 0x30

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 173
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    new-instance v1, Ljxl/biff/BuiltInFormat;

    const-string v2, "@"

    const/16 v3, 0x31

    invoke-direct {v1, v2, v3}, Ljxl/biff/BuiltInFormat;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Ljxl/biff/BuiltInFormat;->formatIndex:I

    .line 53
    iput-object p1, p0, Ljxl/biff/BuiltInFormat;->formatString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Ljxl/biff/BuiltInFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    check-cast p1, Ljxl/biff/BuiltInFormat;

    .line 123
    iget v1, p0, Ljxl/biff/BuiltInFormat;->formatIndex:I

    iget p1, p1, Ljxl/biff/BuiltInFormat;->formatIndex:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFormatIndex()I
    .locals 1

    .line 75
    iget v0, p0, Ljxl/biff/BuiltInFormat;->formatIndex:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Ljxl/biff/BuiltInFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(I)V
    .locals 0

    return-void
.end method

.method public isBuiltIn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
