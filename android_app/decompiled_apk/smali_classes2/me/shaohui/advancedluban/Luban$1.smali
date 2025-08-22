.class Lme/shaohui/advancedluban/Luban$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/Luban;->launch(Lme/shaohui/advancedluban/OnCompressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/shaohui/advancedluban/Luban;

.field final synthetic val$listener:Lme/shaohui/advancedluban/OnCompressListener;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnCompressListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lme/shaohui/advancedluban/Luban$1;->this$0:Lme/shaohui/advancedluban/Luban;

    iput-object p2, p0, Lme/shaohui/advancedluban/Luban$1;->val$listener:Lme/shaohui/advancedluban/OnCompressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/io/File;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban$1;->val$listener:Lme/shaohui/advancedluban/OnCompressListener;

    invoke-interface {v0, p1}, Lme/shaohui/advancedluban/OnCompressListener;->onSuccess(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lme/shaohui/advancedluban/Luban$1;->call(Ljava/io/File;)V

    return-void
.end method
