.class public final synthetic Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/fragment/CardFragment;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk;->f$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk;->f$0:Lcn/highlight/work_card_write/fragment/CardFragment;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->lambda$initNFC$8$CardFragment(Landroid/nfc/Tag;)V

    return-void
.end method
