.class abstract Lcom/codbking/widget/BaseWheelPick;
.super Landroid/widget/LinearLayout;
.source "BaseWheelPick.java"

# interfaces
.implements Lcom/codbking/widget/view/OnWheelChangedListener;
.implements Lcom/codbking/widget/view/OnWheelScrollListener;


# instance fields
.field protected ctx:Landroid/content/Context;

.field private genView:Lcom/codbking/widget/genview/GenWheelText;

.field protected selectColor:I

.field protected split:I

.field protected splitHeight:I

.field protected textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, -0x222223

    .line 26
    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->textColor:I

    const v1, -0xbbbbbc

    .line 27
    iput v1, p0, Lcom/codbking/widget/BaseWheelPick;->selectColor:I

    .line 28
    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->split:I

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->splitHeight:I

    .line 35
    invoke-direct {p0, p1}, Lcom/codbking/widget/BaseWheelPick;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0x222223

    .line 26
    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->textColor:I

    const v1, -0xbbbbbc

    .line 27
    iput v1, p0, Lcom/codbking/widget/BaseWheelPick;->selectColor:I

    .line 28
    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->split:I

    const/4 v2, 0x1

    .line 29
    iput v2, p0, Lcom/codbking/widget/BaseWheelPick;->splitHeight:I

    .line 41
    sget-object v2, Lcom/codbking/widget/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    sget v2, Lcom/codbking/widget/R$styleable;->DatePicker_picker_text_color:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/codbking/widget/BaseWheelPick;->textColor:I

    .line 43
    sget v2, Lcom/codbking/widget/R$styleable;->DatePicker_picker_select_textColor:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/BaseWheelPick;->selectColor:I

    .line 44
    sget v1, Lcom/codbking/widget/R$styleable;->DatePicker_picker_split:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->split:I

    .line 45
    sget v0, Lcom/codbking/widget/R$styleable;->DatePicker_picker_split_height:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/codbking/widget/BaseWheelPick;->splitHeight:I

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-direct {p0, p1}, Lcom/codbking/widget/BaseWheelPick;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 52
    new-instance v0, Lcom/codbking/widget/genview/GenWheelText;

    iget v1, p0, Lcom/codbking/widget/BaseWheelPick;->textColor:I

    invoke-direct {v0, v1}, Lcom/codbking/widget/genview/GenWheelText;-><init>(I)V

    iput-object v0, p0, Lcom/codbking/widget/BaseWheelPick;->genView:Lcom/codbking/widget/genview/GenWheelText;

    .line 53
    iput-object p1, p0, Lcom/codbking/widget/BaseWheelPick;->ctx:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/codbking/widget/BaseWheelPick;->getLayout()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected convertData(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Integer;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method protected abstract getItemHeight()I
.end method

.method protected abstract getLayout()I
.end method

.method public onChanged(Lcom/codbking/widget/view/WheelView;II)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 83
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 85
    iget v0, p0, Lcom/codbking/widget/BaseWheelPick;->splitHeight:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget v0, p0, Lcom/codbking/widget/BaseWheelPick;->split:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-virtual {p0}, Lcom/codbking/widget/BaseWheelPick;->getItemHeight()I

    move-result v7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v8, v0, 0x1

    mul-int v0, v8, v7

    int-to-float v4, v0

    .line 92
    invoke-virtual {p0}, Lcom/codbking/widget/BaseWheelPick;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v2, v4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract setData([Ljava/lang/Object;)V
.end method

.method protected setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V
    .locals 3

    .line 58
    new-instance v0, Lcom/codbking/widget/genview/WheelGeneralAdapter;

    iget-object v1, p0, Lcom/codbking/widget/BaseWheelPick;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/codbking/widget/BaseWheelPick;->genView:Lcom/codbking/widget/genview/GenWheelText;

    invoke-direct {v0, v1, v2}, Lcom/codbking/widget/genview/WheelGeneralAdapter;-><init>(Landroid/content/Context;Lcom/codbking/widget/genview/GenWheelView;)V

    const/4 v1, 0x0

    .line 59
    aget-object v1, p2, v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 60
    check-cast p2, [Ljava/lang/Integer;

    check-cast p2, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/codbking/widget/BaseWheelPick;->convertData(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codbking/widget/genview/WheelGeneralAdapter;->setData([Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, p2}, Lcom/codbking/widget/genview/WheelGeneralAdapter;->setData([Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget p2, p0, Lcom/codbking/widget/BaseWheelPick;->textColor:I

    iget v1, p0, Lcom/codbking/widget/BaseWheelPick;->selectColor:I

    invoke-virtual {p1, p2, v1}, Lcom/codbking/widget/view/WheelView;->setSelectTextColor(II)V

    .line 65
    invoke-virtual {p1, p3}, Lcom/codbking/widget/view/WheelView;->setCyclic(Z)V

    .line 66
    invoke-virtual {p1, v0}, Lcom/codbking/widget/view/WheelView;->setViewAdapter(Lcom/codbking/widget/adapters/WheelViewAdapter;)V

    .line 67
    invoke-virtual {p1, p0}, Lcom/codbking/widget/view/WheelView;->addChangingListener(Lcom/codbking/widget/view/OnWheelChangedListener;)V

    .line 68
    invoke-virtual {p1, p0}, Lcom/codbking/widget/view/WheelView;->addScrollingListener(Lcom/codbking/widget/view/OnWheelScrollListener;)V

    return-void
.end method
