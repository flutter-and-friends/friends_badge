.class Lcom/blankj/utilcode/util/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils;->rationale(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/PermissionUtils;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public again(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$000(Lcom/blankj/utilcode/util/PermissionUtils;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$100(Lcom/blankj/utilcode/util/PermissionUtils;)V

    :goto_0
    return-void
.end method
