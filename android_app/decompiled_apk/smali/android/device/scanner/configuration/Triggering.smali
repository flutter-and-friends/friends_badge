.class public final enum Landroid/device/scanner/configuration/Triggering;
.super Ljava/lang/Enum;
.source "Triggering.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/device/scanner/configuration/Triggering;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/device/scanner/configuration/Triggering;

.field public static final enum CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

.field public static final enum HOST:Landroid/device/scanner/configuration/Triggering;

.field public static final enum PULSE:Landroid/device/scanner/configuration/Triggering;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Landroid/device/scanner/configuration/Triggering;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "PULSE"

    invoke-direct {v0, v3, v1, v2}, Landroid/device/scanner/configuration/Triggering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->PULSE:Landroid/device/scanner/configuration/Triggering;

    .line 15
    new-instance v0, Landroid/device/scanner/configuration/Triggering;

    const/4 v3, 0x1

    const-string v4, "CONTINUOUS"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, Landroid/device/scanner/configuration/Triggering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

    .line 16
    new-instance v0, Landroid/device/scanner/configuration/Triggering;

    const-string v4, "HOST"

    const/16 v5, 0x8

    invoke-direct {v0, v4, v2, v5}, Landroid/device/scanner/configuration/Triggering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->HOST:Landroid/device/scanner/configuration/Triggering;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/device/scanner/configuration/Triggering;

    .line 13
    sget-object v4, Landroid/device/scanner/configuration/Triggering;->PULSE:Landroid/device/scanner/configuration/Triggering;

    aput-object v4, v0, v1

    sget-object v1, Landroid/device/scanner/configuration/Triggering;->CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

    aput-object v1, v0, v3

    sget-object v1, Landroid/device/scanner/configuration/Triggering;->HOST:Landroid/device/scanner/configuration/Triggering;

    aput-object v1, v0, v2

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->$VALUES:[Landroid/device/scanner/configuration/Triggering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Landroid/device/scanner/configuration/Triggering;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/device/scanner/configuration/Triggering;
    .locals 1

    .line 13
    const-class v0, Landroid/device/scanner/configuration/Triggering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/device/scanner/configuration/Triggering;

    return-object p0
.end method

.method public static values()[Landroid/device/scanner/configuration/Triggering;
    .locals 1

    .line 13
    sget-object v0, Landroid/device/scanner/configuration/Triggering;->$VALUES:[Landroid/device/scanner/configuration/Triggering;

    invoke-virtual {v0}, [Landroid/device/scanner/configuration/Triggering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/device/scanner/configuration/Triggering;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
