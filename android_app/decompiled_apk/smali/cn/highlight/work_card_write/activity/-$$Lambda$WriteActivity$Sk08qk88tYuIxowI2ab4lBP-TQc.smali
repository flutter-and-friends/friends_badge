.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/WriteActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->lambda$readNFC$16$WriteActivity(Landroid/nfc/Tag;)V

    return-void
.end method
