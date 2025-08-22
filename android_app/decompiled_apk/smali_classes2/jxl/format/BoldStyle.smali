.class public Ljxl/format/BoldStyle;
.super Ljava/lang/Object;
.source "BoldStyle.java"


# static fields
.field public static final BOLD:Ljxl/format/BoldStyle;

.field public static final NORMAL:Ljxl/format/BoldStyle;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljxl/format/BoldStyle;

    const/16 v1, 0x190

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Ljxl/format/BoldStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BoldStyle;->NORMAL:Ljxl/format/BoldStyle;

    .line 74
    new-instance v0, Ljxl/format/BoldStyle;

    const/16 v1, 0x2bc

    const-string v2, "Bold"

    invoke-direct {v0, v1, v2}, Ljxl/format/BoldStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BoldStyle;->BOLD:Ljxl/format/BoldStyle;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Ljxl/format/BoldStyle;->value:I

    .line 45
    iput-object p2, p0, Ljxl/format/BoldStyle;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Ljxl/format/BoldStyle;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 56
    iget v0, p0, Ljxl/format/BoldStyle;->value:I

    return v0
.end method
