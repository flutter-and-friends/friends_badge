.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 5

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 61
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v1, v0, [I

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "US/CA"

    .line 63
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x1e

    const/4 v4, 0x0

    aput v2, v1, v4

    const/16 v2, 0x27

    aput v2, v1, v3

    const-string v2, "US"

    .line 64
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x3c

    aput v2, v1, v4

    const/16 v2, 0x8b

    aput v2, v1, v3

    const-string v2, "US/CA"

    .line 65
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x12c

    aput v2, v1, v4

    const/16 v2, 0x17b

    aput v2, v1, v3

    const-string v2, "FR"

    .line 66
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x17c

    aput v2, v1, v4

    const-string v2, "BG"

    .line 67
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x17f

    aput v2, v1, v4

    const-string v2, "SI"

    .line 68
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x181

    aput v2, v1, v4

    const-string v2, "HR"

    .line 69
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x183

    aput v2, v1, v4

    const-string v2, "BA"

    .line 70
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x190

    aput v2, v1, v4

    const/16 v2, 0x1b8

    aput v2, v1, v3

    const-string v2, "DE"

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x1c2

    aput v2, v1, v4

    const/16 v2, 0x1cb

    aput v2, v1, v3

    const-string v2, "JP"

    .line 72
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x1cc

    aput v2, v1, v4

    const/16 v2, 0x1d5

    aput v2, v1, v3

    const-string v2, "RU"

    .line 73
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1d7

    aput v2, v1, v4

    const-string v2, "TW"

    .line 74
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1da

    aput v2, v1, v4

    const-string v2, "EE"

    .line 75
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1db

    aput v2, v1, v4

    const-string v2, "LV"

    .line 76
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1dc

    aput v2, v1, v4

    const-string v2, "AZ"

    .line 77
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1dd

    aput v2, v1, v4

    const-string v2, "LT"

    .line 78
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1de

    aput v2, v1, v4

    const-string v2, "UZ"

    .line 79
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1df

    aput v2, v1, v4

    const-string v2, "LK"

    .line 80
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e0

    aput v2, v1, v4

    const-string v2, "PH"

    .line 81
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e1

    aput v2, v1, v4

    const-string v2, "BY"

    .line 82
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e2

    aput v2, v1, v4

    const-string v2, "UA"

    .line 83
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e4

    aput v2, v1, v4

    const-string v2, "MD"

    .line 84
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e5

    aput v2, v1, v4

    const-string v2, "AM"

    .line 85
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e6

    aput v2, v1, v4

    const-string v2, "GE"

    .line 86
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e7

    aput v2, v1, v4

    const-string v2, "KZ"

    .line 87
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x1e9

    aput v2, v1, v4

    const-string v2, "HK"

    .line 88
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x1ea

    aput v2, v1, v4

    const/16 v2, 0x1f3

    aput v2, v1, v3

    const-string v2, "JP"

    .line 89
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x1f4

    aput v2, v1, v4

    const/16 v2, 0x1fd

    aput v2, v1, v3

    const-string v2, "GB"

    .line 90
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x208

    aput v2, v1, v4

    const-string v2, "GR"

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x210

    aput v2, v1, v4

    const-string v2, "LB"

    .line 92
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x211

    aput v2, v1, v4

    const-string v2, "CY"

    .line 93
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x213

    aput v2, v1, v4

    const-string v2, "MK"

    .line 94
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x217

    aput v2, v1, v4

    const-string v2, "MT"

    .line 95
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x21b

    aput v2, v1, v4

    const-string v2, "IE"

    .line 96
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x21c

    aput v2, v1, v4

    const/16 v2, 0x225

    aput v2, v1, v3

    const-string v2, "BE/LU"

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x230

    aput v2, v1, v4

    const-string v2, "PT"

    .line 98
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x239

    aput v2, v1, v4

    const-string v2, "IS"

    .line 99
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x23a

    aput v2, v1, v4

    const/16 v2, 0x243

    aput v2, v1, v3

    const-string v2, "DK"

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x24e

    aput v2, v1, v4

    const-string v2, "PL"

    .line 101
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x252

    aput v2, v1, v4

    const-string v2, "RO"

    .line 102
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x257

    aput v2, v1, v4

    const-string v2, "HU"

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x258

    aput v2, v1, v4

    const/16 v2, 0x259

    aput v2, v1, v3

    const-string v2, "ZA"

    .line 104
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x25b

    aput v2, v1, v4

    const-string v2, "GH"

    .line 105
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x260

    aput v2, v1, v4

    const-string v2, "BH"

    .line 106
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x261

    aput v2, v1, v4

    const-string v2, "MU"

    .line 107
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x263

    aput v2, v1, v4

    const-string v2, "MA"

    .line 108
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x265

    aput v2, v1, v4

    const-string v2, "DZ"

    .line 109
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x268

    aput v2, v1, v4

    const-string v2, "KE"

    .line 110
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x26a

    aput v2, v1, v4

    const-string v2, "CI"

    .line 111
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x26b

    aput v2, v1, v4

    const-string v2, "TN"

    .line 112
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x26d

    aput v2, v1, v4

    const-string v2, "SY"

    .line 113
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x26e

    aput v2, v1, v4

    const-string v2, "EG"

    .line 114
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x270

    aput v2, v1, v4

    const-string v2, "LY"

    .line 115
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x271

    aput v2, v1, v4

    const-string v2, "JO"

    .line 116
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x272

    aput v2, v1, v4

    const-string v2, "IR"

    .line 117
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x273

    aput v2, v1, v4

    const-string v2, "KW"

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x274

    aput v2, v1, v4

    const-string v2, "SA"

    .line 119
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x275

    aput v2, v1, v4

    const-string v2, "AE"

    .line 120
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x280

    aput v2, v1, v4

    const/16 v2, 0x289

    aput v2, v1, v3

    const-string v2, "FI"

    .line 121
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x2b2

    aput v2, v1, v4

    const/16 v2, 0x2b7

    aput v2, v1, v3

    const-string v2, "CN"

    .line 122
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x2bc

    aput v2, v1, v4

    const/16 v2, 0x2c5

    aput v2, v1, v3

    const-string v2, "NO"

    .line 123
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2d9

    aput v2, v1, v4

    const-string v2, "IL"

    .line 124
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x2da

    aput v2, v1, v4

    const/16 v2, 0x2e3

    aput v2, v1, v3

    const-string v2, "SE"

    .line 125
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e4

    aput v2, v1, v4

    const-string v2, "GT"

    .line 126
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e5

    aput v2, v1, v4

    const-string v2, "SV"

    .line 127
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e6

    aput v2, v1, v4

    const-string v2, "HN"

    .line 128
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e7

    aput v2, v1, v4

    const-string v2, "NI"

    .line 129
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e8

    aput v2, v1, v4

    const-string v2, "CR"

    .line 130
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2e9

    aput v2, v1, v4

    const-string v2, "PA"

    .line 131
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2ea

    aput v2, v1, v4

    const-string v2, "DO"

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2ee

    aput v2, v1, v4

    const-string v2, "MX"

    .line 133
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x2f2

    aput v2, v1, v4

    const/16 v2, 0x2f3

    aput v2, v1, v3

    const-string v2, "CA"

    .line 134
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x2f7

    aput v2, v1, v4

    const-string v2, "VE"

    .line 135
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x2f8

    aput v2, v1, v4

    const/16 v2, 0x301

    aput v2, v1, v3

    const-string v2, "CH"

    .line 136
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x302

    aput v2, v1, v4

    const-string v2, "CO"

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x305

    aput v2, v1, v4

    const-string v2, "UY"

    .line 138
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x307

    aput v2, v1, v4

    const-string v2, "PE"

    .line 139
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x309

    aput v2, v1, v4

    const-string v2, "BO"

    .line 140
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x30b

    aput v2, v1, v4

    const-string v2, "AR"

    .line 141
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x30c

    aput v2, v1, v4

    const-string v2, "CL"

    .line 142
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x310

    aput v2, v1, v4

    const-string v2, "PY"

    .line 143
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x311

    aput v2, v1, v4

    const-string v2, "PE"

    .line 144
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x312

    aput v2, v1, v4

    const-string v2, "EC"

    .line 145
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x315

    aput v2, v1, v4

    const/16 v2, 0x316

    aput v2, v1, v3

    const-string v2, "BR"

    .line 146
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x320

    aput v2, v1, v4

    const/16 v2, 0x347

    aput v2, v1, v3

    const-string v2, "IT"

    .line 147
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x348

    aput v2, v1, v4

    const/16 v2, 0x351

    aput v2, v1, v3

    const-string v2, "ES"

    .line 148
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x352

    aput v2, v1, v4

    const-string v2, "CU"

    .line 149
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x35a

    aput v2, v1, v4

    const-string v2, "SK"

    .line 150
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x35b

    aput v2, v1, v4

    const-string v2, "CZ"

    .line 151
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x35c

    aput v2, v1, v4

    const-string v2, "YU"

    .line 152
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x361

    aput v2, v1, v4

    const-string v2, "MN"

    .line 153
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x363

    aput v2, v1, v4

    const-string v2, "KP"

    .line 154
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x364

    aput v2, v1, v4

    const/16 v2, 0x365

    aput v2, v1, v3

    const-string v2, "TR"

    .line 155
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x366

    aput v2, v1, v4

    const/16 v2, 0x36f

    aput v2, v1, v3

    const-string v2, "NL"

    .line 156
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x370

    aput v2, v1, v4

    const-string v2, "KR"

    .line 157
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x375

    aput v2, v1, v4

    const-string v2, "TH"

    .line 158
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x378

    aput v2, v1, v4

    const-string v2, "SG"

    .line 159
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x37a

    aput v2, v1, v4

    const-string v2, "IN"

    .line 160
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x37d

    aput v2, v1, v4

    const-string v2, "VN"

    .line 161
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x380

    aput v2, v1, v4

    const-string v2, "PK"

    .line 162
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v3, [I

    const/16 v2, 0x383

    aput v2, v1, v4

    const-string v2, "ID"

    .line 163
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x384

    aput v2, v1, v4

    const/16 v2, 0x397

    aput v2, v1, v3

    const-string v2, "AT"

    .line 164
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v2, 0x3a2

    aput v2, v1, v4

    const/16 v2, 0x3ab

    aput v2, v1, v3

    const-string v2, "AU"

    .line 165
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v0, [I

    const/16 v1, 0x3ac

    aput v1, v0, v4

    const/16 v1, 0x3b5

    aput v1, v0, v3

    const-string v1, "AZ"

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v3, [I

    const/16 v1, 0x3bb

    aput v1, v0, v4

    const-string v1, "MY"

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v3, [I

    const/16 v1, 0x3be

    aput v1, v0, v4

    const-string v1, "MO"

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 39
    iget-object v1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    return-object v3

    .line 41
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 42
    aget v5, v4, v0

    if-ge p1, v5, :cond_1

    return-object v3

    .line 46
    :cond_1
    array-length v3, v4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    aget v5, v4, v6

    :goto_1
    if-gt p1, v5, :cond_3

    .line 48
    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
