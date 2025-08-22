.class public Lcom/codbking/widget/adapters/NumericWheelAdapter;
.super Lcom/codbking/widget/adapters/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/codbking/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codbking/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/codbking/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    iput p2, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->minValue:I

    .line 68
    iput p3, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->maxValue:I

    .line 69
    iput-object p4, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 3

    if-ltz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/codbking/widget/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 75
    iget v0, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    .line 76
    iget-object p1, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .locals 2

    .line 83
    iget v0, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/codbking/widget/adapters/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
