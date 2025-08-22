.class Lcn/highlight/work_card_write/api/ApiUtil$2;
.super Ljava/lang/Object;
.source "ApiUtil.java"

# interfaces
.implements Lcn/highlight/work_card_write/api/ApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/api/ApiUtil;->login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/work_card_write/api/ApiResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/highlight/work_card_write/api/ApiResult<",
        "Lcn/highlight/work_card_write/entity/LoginRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/api/ApiUtil;

.field final synthetic val$apiResult:Lcn/highlight/work_card_write/api/ApiResult;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/api/ApiUtil;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/highlight/work_card_write/api/ApiUtil$2;->this$0:Lcn/highlight/work_card_write/api/ApiUtil;

    iput-object p2, p0, Lcn/highlight/work_card_write/api/ApiUtil$2;->val$apiResult:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->access$000()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    .line 109
    iget-object v0, p0, Lcn/highlight/work_card_write/api/ApiUtil$2;->val$apiResult:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-interface {v0, p1, p2}, Lcn/highlight/work_card_write/api/ApiResult;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuss(Lcn/highlight/work_card_write/entity/LoginRes;)V
    .locals 1

    .line 102
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->access$000()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/api/ApiUtil$2;->val$apiResult:Lcn/highlight/work_card_write/api/ApiResult;

    invoke-interface {v0, p1}, Lcn/highlight/work_card_write/api/ApiResult;->onSuss(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuss(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcn/highlight/work_card_write/entity/LoginRes;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/api/ApiUtil$2;->onSuss(Lcn/highlight/work_card_write/entity/LoginRes;)V

    return-void
.end method
