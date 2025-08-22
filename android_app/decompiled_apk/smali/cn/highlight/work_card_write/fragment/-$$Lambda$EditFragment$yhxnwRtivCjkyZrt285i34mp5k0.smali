.class public final synthetic Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/fragment/EditFragment;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0;->f$0:Lcn/highlight/work_card_write/fragment/EditFragment;

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0;->f$0:Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment;->lambda$initNFC$8$EditFragment(Landroid/nfc/Tag;)V

    return-void
.end method
