.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/graphics/Bitmap;

.field private final synthetic f$3:[F

.field private final synthetic f$4:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLandroid/graphics/Bitmap;[FLcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-boolean p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$1:Z

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$3:[F

    iput-object p5, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$4:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$1:Z

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$2:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$3:[F

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;->f$4:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->lambda$showMainSetImage$22$Model2Activity(ZLandroid/graphics/Bitmap;[FLcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
