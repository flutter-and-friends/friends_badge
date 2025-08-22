.class public Lcom/bigkoo/pickerview/configure/PickerOptions;
.super Ljava/lang/Object;
.source "PickerOptions.java"


# static fields
.field private static final PICKER_VIEW_BG_COLOR_DEFAULT:I = -0x1

.field private static final PICKER_VIEW_BG_COLOR_TITLE:I = -0xa0a0b

.field private static final PICKER_VIEW_BTN_COLOR_NORMAL:I = -0xfa8201

.field private static final PICKER_VIEW_COLOR_TITLE:I = -0x1000000

.field public static final TYPE_PICKER_OPTIONS:I = 0x1

.field public static final TYPE_PICKER_TIME:I = 0x2


# instance fields
.field public bgColorTitle:I

.field public bgColorWheel:I

.field public cancelListener:Landroid/view/View$OnClickListener;

.field public cancelable:Z

.field public context:Landroid/content/Context;

.field public customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

.field public cyclic:Z

.field public cyclic1:Z

.field public cyclic2:Z

.field public cyclic3:Z

.field public date:Ljava/util/Calendar;

.field public decorView:Landroid/view/ViewGroup;

.field public dividerColor:I

.field public dividerType:Lcom/contrarywind/view/WheelView$DividerType;

.field public endDate:Ljava/util/Calendar;

.field public endYear:I

.field public font:Landroid/graphics/Typeface;

.field public isAlphaGradient:Z

.field public isCenterLabel:Z

.field public isDialog:Z

.field public isLunarCalendar:Z

.field public isRestoreItem:Z

.field public itemsVisibleCount:I

.field public label1:Ljava/lang/String;

.field public label2:Ljava/lang/String;

.field public label3:Ljava/lang/String;

.field public label_day:Ljava/lang/String;

.field public label_hours:Ljava/lang/String;

.field public label_minutes:Ljava/lang/String;

.field public label_month:Ljava/lang/String;

.field public label_seconds:Ljava/lang/String;

.field public label_year:Ljava/lang/String;

.field public layoutRes:I

.field public lineSpacingMultiplier:F

.field public option1:I

.field public option2:I

.field public option3:I

.field public optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

.field public optionsSelectListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

.field public outSideColor:I

.field public startDate:Ljava/util/Calendar;

.field public startYear:I

.field public textColorCancel:I

.field public textColorCenter:I

.field public textColorConfirm:I

.field public textColorOut:I

.field public textColorTitle:I

.field public textContentCancel:Ljava/lang/String;

.field public textContentConfirm:Ljava/lang/String;

.field public textContentTitle:Ljava/lang/String;

.field public textGravity:I

.field public textSizeContent:I

.field public textSizeSubmitCancel:I

.field public textSizeTitle:I

.field public timeSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;

.field public timeSelectListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

.field public type:[Z

.field public x_offset_day:I

.field public x_offset_hours:I

.field public x_offset_minutes:I

.field public x_offset_month:I

.field public x_offset_one:I

.field public x_offset_seconds:I

.field public x_offset_three:I

.field public x_offset_two:I

.field public x_offset_year:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic1:Z

    .line 49
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic2:Z

    .line 50
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic3:Z

    .line 52
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isRestoreItem:Z

    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 56
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->type:[Z

    .line 64
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic:Z

    .line 65
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isLunarCalendar:Z

    const/16 v1, 0x11

    .line 82
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textGravity:I

    const v2, -0xfa8201

    .line 89
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    .line 90
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    const/high16 v2, -0x1000000

    .line 91
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    const/4 v2, -0x1

    .line 93
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    const v3, -0xa0a0b

    .line 94
    iput v3, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    .line 96
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    const/16 v1, 0x12

    .line 97
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    .line 98
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    const v1, -0x575758

    .line 100
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    const v1, -0xd5d5d6

    .line 101
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    const v1, -0x2a2a2b

    .line 102
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    .line 103
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->outSideColor:I

    const v1, 0x3fcccccd

    .line 105
    iput v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    .line 109
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    .line 110
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->font:Landroid/graphics/Typeface;

    .line 111
    sget-object v2, Lcom/contrarywind/view/WheelView$DividerType;->FILL:Lcom/contrarywind/view/WheelView$DividerType;

    iput-object v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    const/16 v2, 0x9

    .line 112
    iput v2, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->itemsVisibleCount:I

    .line 113
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isAlphaGradient:Z

    if-ne p1, v1, :cond_0

    .line 73
    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_options:I

    iput p1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    goto :goto_0

    .line 75
    :cond_0
    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    iput p1, p0, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
