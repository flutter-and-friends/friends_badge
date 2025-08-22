.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$1:Ljava/lang/String;

    iput p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$1:Ljava/lang/String;

    iget v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->lambda$addInfo$21$WriteActivity(Ljava/lang/String;I)V

    return-void
.end method
