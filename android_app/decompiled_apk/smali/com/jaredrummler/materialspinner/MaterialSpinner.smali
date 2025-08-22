.class public Lcom/jaredrummler/materialspinner/MaterialSpinner;
.super Landroid/widget/TextView;
.source "MaterialSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;,
        Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

.field private arrowColor:I

.field private arrowColorDisabled:I

.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundColor:I

.field private backgroundSelector:I

.field private hideArrow:Z

.field private hintColor:I

.field private hintText:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private nothingSelected:Z

.field private onItemSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;

.field private onNothingSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;

.field private popupPaddingBottom:I

.field private popupPaddingLeft:I

.field private popupPaddingRight:I

.field private popupPaddingTop:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowHeight:I

.field private popupWindowMaxHeight:I

.field private selectedIndex:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaredrummler/materialspinner/MaterialSpinner;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/jaredrummler/materialspinner/MaterialSpinner;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/jaredrummler/materialspinner/MaterialSpinner;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jaredrummler/materialspinner/MaterialSpinner;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->onItemSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->onNothingSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hideArrow:Z

    return p0
.end method

.method static synthetic access$800(Lcom/jaredrummler/materialspinner/MaterialSpinner;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->animateArrow(Z)V

    return-void
.end method

.method private animateArrow(Z)V
    .locals 4

    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2710

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 545
    :goto_1
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const-string v0, "level"

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private calculatePopupWindowHeight()I
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/jaredrummler/materialspinner/R$dimen;->ms__item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 574
    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v2}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    .line 575
    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowMaxHeight:I

    if-lez v3, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    return v3

    .line 577
    :cond_1
    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowHeight:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 581
    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v2}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    float-to-int v0, v0

    return v0

    :cond_3
    return v1
.end method

.method private canShowPopup()Z
    .locals 3

    .line 518
    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 523
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->isLaidOut()Z

    move-result v0

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 532
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 534
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 535
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 537
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 97
    sget-object v0, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 98
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 99
    invoke-static {p1}, Lcom/jaredrummler/materialspinner/Utils;->isRtl(Landroid/content/Context;)Z

    move-result v1

    .line 105
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    sget v3, Lcom/jaredrummler/materialspinner/R$dimen;->ms__padding_top:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v1, :cond_0

    .line 109
    sget v4, Lcom/jaredrummler/materialspinner/R$dimen;->ms__padding_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v5, v4

    move v4, v3

    goto :goto_0

    .line 111
    :cond_0
    sget v4, Lcom/jaredrummler/materialspinner/R$dimen;->ms__padding_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v5, v3

    .line 113
    :goto_0
    sget v6, Lcom/jaredrummler/materialspinner/R$dimen;->ms__popup_padding_left:I

    .line 114
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 115
    sget v7, Lcom/jaredrummler/materialspinner/R$dimen;->ms__popup_padding_top:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    :try_start_0
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_background_color:I

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundColor:I

    .line 119
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_background_selector:I

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundSelector:I

    .line 120
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_text_color:I

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    .line 121
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_hint_color:I

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintColor:I

    .line 122
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_arrow_tint:I

    iget v10, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    invoke-virtual {p2, v7, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    .line 123
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_hide_arrow:I

    invoke-virtual {p2, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hideArrow:Z

    .line 124
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_hint:I

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, ""

    goto :goto_1

    :cond_1
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_hint:I

    .line 125
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    .line 126
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_dropdown_max_height:I

    invoke-virtual {p2, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowMaxHeight:I

    .line 127
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_dropdown_height:I

    const/4 v10, -0x2

    invoke-virtual {p2, v7, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowHeight:I

    .line 129
    sget v7, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_padding_top:I

    invoke-virtual {p2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 130
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_padding_left:I

    invoke-virtual {p2, v10, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 131
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_padding_bottom:I

    invoke-virtual {p2, v10, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 132
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_padding_right:I

    invoke-virtual {p2, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 133
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_popup_padding_top:I

    .line 134
    invoke-virtual {p2, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingTop:I

    .line 135
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_popup_padding_left:I

    .line 136
    invoke-virtual {p2, v10, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingLeft:I

    .line 137
    sget v10, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_popup_padding_bottom:I

    .line 138
    invoke-virtual {p2, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingBottom:I

    .line 139
    sget v2, Lcom/jaredrummler/materialspinner/R$styleable;->MaterialSpinner_ms_popup_padding_right:I

    .line 140
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingRight:I

    .line 141
    iget v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    const v6, 0x3f4ccccd

    invoke-static {v2, v6}, Lcom/jaredrummler/materialspinner/Utils;->lighter(IF)I

    move-result v2

    iput v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColorDisabled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x1

    .line 146
    iput-boolean p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    const v2, 0x800013

    .line 148
    invoke-virtual {p0, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setGravity(I)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setClickable(Z)V

    .line 150
    invoke-virtual {p0, v4, v7, v5, v3}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setPadding(IIII)V

    .line 152
    sget v2, Lcom/jaredrummler/materialspinner/R$drawable;->ms__selector:I

    invoke-virtual {p0, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setBackgroundResource(I)V

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setLayoutDirection(I)V

    const/4 v2, 0x4

    .line 155
    invoke-virtual {p0, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setTextDirection(I)V

    .line 158
    :cond_2
    iget-boolean v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hideArrow:Z

    if-nez v2, :cond_4

    .line 159
    sget v2, Lcom/jaredrummler/materialspinner/R$drawable;->ms__arrow:I

    invoke-static {p1, v2}, Lcom/jaredrummler/materialspinner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v9

    goto :goto_2

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v3

    .line 167
    :goto_2
    aget-object v1, v2, v9

    aget-object v4, v2, p2

    aget-object v3, v2, v3

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_4
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    .line 171
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setId(I)V

    .line 172
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 174
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;

    invoke-direct {v2, p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;-><init>(Lcom/jaredrummler/materialspinner/MaterialSpinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    .line 198
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 199
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 200
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 202
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_5

    .line 203
    iget-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 204
    iget-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/jaredrummler/materialspinner/R$drawable;->ms__drawable:I

    invoke-static {p1, v1}, Lcom/jaredrummler/materialspinner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 206
    :cond_5
    iget-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/jaredrummler/materialspinner/R$drawable;->ms__drop_down_shadow:I

    invoke-static {p1, v1}, Lcom/jaredrummler/materialspinner/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_3
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundColor:I

    if-eq p1, v8, :cond_6

    .line 210
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setBackgroundColor(I)V

    goto :goto_4

    .line 211
    :cond_6
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundSelector:I

    if-eqz p1, :cond_7

    .line 212
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setBackgroundResource(I)V

    .line 214
    :cond_7
    :goto_4
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    if-eq p1, v0, :cond_8

    .line 215
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setTextColor(I)V

    .line 218
    :cond_8
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/jaredrummler/materialspinner/MaterialSpinner$2;

    invoke-direct {p2, p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner$2;-><init>(Lcom/jaredrummler/materialspinner/MaterialSpinner;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 143
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private setAdapterInternal(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;)V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 446
    :goto_0
    iget-object v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setHintEnabled(Z)V

    .line 447
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    invoke-virtual {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 449
    iput v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    .line 451
    :cond_1
    invoke-virtual {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 452
    iget-boolean v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintColor:I

    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setHintColor(I)V

    goto :goto_1

    .line 456
    :cond_2
    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    invoke-virtual {p0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setTextColor(I)V

    .line 457
    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    invoke-virtual {p1, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 460
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 463
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->calculatePopupWindowHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hideArrow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->animateArrow(Z)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public expand()V
    .locals 2

    .line 485
    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->canShowPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-boolean v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hideArrow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->animateArrow(Z)V

    .line 489
    :cond_0
    iput-boolean v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    .line 490
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 233
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->calculatePopupWindowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 234
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v3}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v3, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 314
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 315
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "selected_index"

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    const-string v0, "nothing_selected"

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    .line 318
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    if-eqz v0, :cond_1

    .line 319
    iget-boolean v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintColor:I

    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setHintColor(I)V

    .line 321
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_0
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    invoke-virtual {v0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    invoke-virtual {v0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->notifyItemSelected(I)V

    :cond_1
    const-string v0, "is_popup_showing"

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lcom/jaredrummler/materialspinner/MaterialSpinner$3;

    invoke-direct {v0, p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner$3;-><init>(Lcom/jaredrummler/materialspinner/MaterialSpinner;)V

    invoke-virtual {p0, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const-string v0, "state"

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 341
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    const-string v2, "selected_index"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-boolean v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->nothingSelected:Z

    const-string v2, "nothing_selected"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    const-string v2, "is_popup_showing"

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->collapse()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 308
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->expand()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->collapse()V

    .line 261
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 423
    new-instance v0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;

    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingLeft:I

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingTop:I

    iget v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingRight:I

    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingBottom:I

    .line 424
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->setPopupPadding(IIII)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundSelector:I

    .line 425
    invoke-virtual {p1, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setBackgroundSelector(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    .line 426
    invoke-virtual {p1, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setTextColor(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 427
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setAdapterInternal(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 438
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    invoke-virtual {v0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setTextColor(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 439
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundSelector:I

    invoke-virtual {v0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setBackgroundSelector(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 440
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingLeft:I

    iget v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingTop:I

    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingRight:I

    iget v4, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setPopupPadding(IIII)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 441
    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setAdapterInternal(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;)V

    return-void
.end method

.method public setArrowColor(I)V
    .locals 2

    .line 510
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    .line 511
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    const v0, 0x3f4ccccd

    invoke-static {p1, v0}, Lcom/jaredrummler/materialspinner/Utils;->lighter(IF)I

    move-result p1

    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColorDisabled:I

    .line 512
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 513
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 8

    .line 265
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundColor:I

    .line 266
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    .line 269
    :try_start_0
    const-class v1, Landroid/graphics/drawable/StateListDrawable;

    const-string v2, "getStateDrawable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const v4, 0x3f59999a

    .line 271
    invoke-static {p1, v4}, Lcom/jaredrummler/materialspinner/Utils;->darker(IF)I

    move-result v4

    aput v4, v2, v6

    aput p1, v2, v3

    const/4 v4, 0x0

    .line 272
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    new-array v5, v3, [Ljava/lang/Object;

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 274
    aget v7, v2, v4

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MaterialSpinner"

    const-string v2, "Error setting background color"

    .line 277
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 280
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setDropdownHeight(I)V
    .locals 1

    .line 565
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowHeight:I

    .line 566
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->calculatePopupWindowHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public setDropdownMaxHeight(I)V
    .locals 1

    .line 555
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindowMaxHeight:I

    .line 556
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->calculatePopupWindowHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 345
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 347
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->arrowColorDisabled:I

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public setHintColor(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->hintColor:I

    .line 296
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 410
    new-instance v0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;

    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingLeft:I

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingTop:I

    iget v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingRight:I

    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->popupPaddingBottom:I

    .line 411
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->setPopupPadding(IIII)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->backgroundSelector:I

    .line 412
    invoke-virtual {p1, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setBackgroundSelector(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    .line 413
    invoke-virtual {p1, v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setTextColor(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 414
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setAdapterInternal(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;)V

    return-void
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 400
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->onItemSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;

    return-void
.end method

.method public setOnNothingSelectedListener(Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->onNothingSelectedListener:Lcom/jaredrummler/materialspinner/MaterialSpinner$OnNothingSelectedListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->notifyItemSelected(I)V

    .line 367
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->selectedIndex:I

    .line 368
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position must be lower than adapter count!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 286
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    .line 287
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    if-eqz v0, :cond_0

    .line 288
    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->textColor:I

    invoke-virtual {v0, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->setTextColor(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    .line 289
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner;->adapter:Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    invoke-virtual {v0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->notifyDataSetChanged()V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
