.class Lme/shaohui/advancedluban/Luban$4;
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
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/shaohui/advancedluban/Luban;

.field final synthetic val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnMultiCompressListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lme/shaohui/advancedluban/Luban$4;->this$0:Lme/shaohui/advancedluban/Luban;

    iput-object p2, p0, Lme/shaohui/advancedluban/Luban$4;->val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lme/shaohui/advancedluban/Luban$4;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban$4;->val$listener:Lme/shaohui/advancedluban/OnMultiCompressListener;

    invoke-interface {v0, p1}, Lme/shaohui/advancedluban/OnMultiCompressListener;->onSuccess(Ljava/util/List;)V

    return-void
.end method
