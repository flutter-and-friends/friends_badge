.class Lme/shaohui/advancedluban/Luban$6;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/Luban;->launch(Lme/shaohui/advancedluban/OnMultiCompressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/shaohui/advancedluban/Luban;

.field final synthetic val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnMultiCompressListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lme/shaohui/advancedluban/Luban$6;->this$0:Lme/shaohui/advancedluban/Luban;

    iput-object p2, p0, Lme/shaohui/advancedluban/Luban$6;->val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Long;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lme/shaohui/advancedluban/Luban$6;->val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;

    invoke-interface {p1}, Lme/shaohui/advancedluban/OnMultiCompressListener;->onStart()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/shaohui/advancedluban/Luban$6;->call(Ljava/lang/Long;)V

    return-void
.end method
