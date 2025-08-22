.class public Ljxl/write/NumberFormat;
.super Ljxl/write/biff/NumberFormatRecord;
.source "NumberFormat.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;


# static fields
.field public static final COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

.field public static final CURRENCY_DOLLAR:Ljava/lang/String; = "[$$-409]"

.field public static final CURRENCY_EURO_PREFIX:Ljava/lang/String; = "[$\u20ac-2]"

.field public static final CURRENCY_EURO_SUFFIX:Ljava/lang/String; = "[$\u20ac-1]"

.field public static final CURRENCY_JAPANESE_YEN:Ljava/lang/String; = "[$\u00a5-411]"

.field public static final CURRENCY_POUND:Ljava/lang/String; = "\u00a3"

.field public static final FRACTIONS_EIGHTHS:Ljava/lang/String; = "?/8"

.field public static final FRACTION_HALVES:Ljava/lang/String; = "?/2"

.field public static final FRACTION_HUNDREDTHS:Ljava/lang/String; = "?/100"

.field public static final FRACTION_QUARTERS:Ljava/lang/String; = "?/4"

.field public static final FRACTION_SIXTEENTHS:Ljava/lang/String; = "?/16"

.field public static final FRACTION_TENTHS:Ljava/lang/String; = "?/10"

.field public static final FRACTION_THREE_DIGITS:Ljava/lang/String; = "???/???"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    invoke-direct {v0}, Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;-><init>()V

    sput-object v0, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Ljxl/write/biff/NumberFormatRecord;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/NumberFormatRecord;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    return-void
.end method
