.class public final enum Lcom/uhf/api/cls/Reader$BackReadGpiTriState;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackReadGpiTriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$BackReadGpiTriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

.field public static final enum BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

.field public static final enum BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

.field public static final enum BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 757
    new-instance v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v1, 0x0

    const-string v2, "BackReadGpi_WaitStart"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 758
    new-instance v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v2, 0x1

    const-string v3, "BackReadGpi_WaitStop"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 759
    new-instance v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v3, 0x2

    const-string v4, "BackReadGpi_WaitTimeout"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 756
    sget-object v4, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->$VALUES:[Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 760
    iput p1, p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->value:I

    .line 763
    iput p3, p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$BackReadGpiTriState;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 773
    :cond_0
    sget-object p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-object p0

    .line 771
    :cond_1
    sget-object p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-object p0

    .line 769
    :cond_2
    sget-object p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$BackReadGpiTriState;
    .locals 1

    .line 756
    const-class v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$BackReadGpiTriState;
    .locals 1

    .line 756
    sget-object v0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->$VALUES:[Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->value:I

    return v0
.end method
