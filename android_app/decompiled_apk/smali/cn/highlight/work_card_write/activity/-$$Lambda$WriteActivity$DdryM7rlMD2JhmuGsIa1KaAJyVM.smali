.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->lambda$showErrorDialog$6$WriteActivity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
