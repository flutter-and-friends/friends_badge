.class public final synthetic Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/adapter/WriteAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/adapter/WriteAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;->f$0:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    iput p2, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;->f$0:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    iget v1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->lambda$onBindViewHolder$0$WriteAdapter(ILandroid/view/View;)V

    return-void
.end method
