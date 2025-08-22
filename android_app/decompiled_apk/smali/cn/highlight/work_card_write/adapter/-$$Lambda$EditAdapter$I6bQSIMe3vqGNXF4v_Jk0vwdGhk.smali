.class public final synthetic Lcn/highlight/work_card_write/adapter/-$$Lambda$EditAdapter$I6bQSIMe3vqGNXF4v_Jk0vwdGhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/adapter/EditAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/adapter/EditAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$EditAdapter$I6bQSIMe3vqGNXF4v_Jk0vwdGhk;->f$0:Lcn/highlight/work_card_write/adapter/EditAdapter;

    iput p2, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$EditAdapter$I6bQSIMe3vqGNXF4v_Jk0vwdGhk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$EditAdapter$I6bQSIMe3vqGNXF4v_Jk0vwdGhk;->f$0:Lcn/highlight/work_card_write/adapter/EditAdapter;

    iget v1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$EditAdapter$I6bQSIMe3vqGNXF4v_Jk0vwdGhk;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcn/highlight/work_card_write/adapter/EditAdapter;->lambda$onBindViewHolder$0$EditAdapter(ILandroid/view/View;)V

    return-void
.end method
