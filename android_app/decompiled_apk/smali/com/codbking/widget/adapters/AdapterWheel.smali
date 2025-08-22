.class public Lcom/codbking/widget/adapters/AdapterWheel;
.super Lcom/codbking/widget/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/codbking/widget/view/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codbking/widget/view/WheelAdapter;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/codbking/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/codbking/widget/adapters/AdapterWheel;->adapter:Lcom/codbking/widget/view/WheelAdapter;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/codbking/widget/view/WheelAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/codbking/widget/adapters/AdapterWheel;->adapter:Lcom/codbking/widget/view/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/codbking/widget/adapters/AdapterWheel;->adapter:Lcom/codbking/widget/view/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/codbking/widget/view/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/codbking/widget/adapters/AdapterWheel;->adapter:Lcom/codbking/widget/view/WheelAdapter;

    invoke-interface {v0}, Lcom/codbking/widget/view/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
