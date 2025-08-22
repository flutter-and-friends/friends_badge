.class public final synthetic Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/adapter/CardThemeAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;->f$0:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    iput p2, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;->f$0:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    iget v1, p0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->lambda$onBindViewHolder$0$CardThemeAdapter(ILandroid/view/View;)V

    return-void
.end method
