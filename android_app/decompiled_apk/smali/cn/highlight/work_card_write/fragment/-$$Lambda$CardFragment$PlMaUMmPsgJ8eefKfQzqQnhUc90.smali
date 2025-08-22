.class public final synthetic Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/fragment/CardFragment;

.field private final synthetic f$1:Lcn/highlight/work_card_write/view/CycleWheelView;

.field private final synthetic f$2:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/fragment/CardFragment;Lcn/highlight/work_card_write/view/CycleWheelView;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    iput-object p2, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$1:Lcn/highlight/work_card_write/view/CycleWheelView;

    iput-object p3, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$2:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iput-object p4, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$1:Lcn/highlight/work_card_write/view/CycleWheelView;

    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$2:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v3, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->lambda$showSizeDialog$4$CardFragment(Lcn/highlight/work_card_write/view/CycleWheelView;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
