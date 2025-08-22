.class Lme/shaohui/advancedluban/LubanCompresser$2;
.super Ljava/lang/Object;
.source "LubanCompresser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/LubanCompresser;->multiAction(Ljava/util/List;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/shaohui/advancedluban/LubanCompresser;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/LubanCompresser;Ljava/io/File;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lme/shaohui/advancedluban/LubanCompresser$2;->this$0:Lme/shaohui/advancedluban/LubanCompresser;

    iput-object p2, p0, Lme/shaohui/advancedluban/LubanCompresser$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser$2;->this$0:Lme/shaohui/advancedluban/LubanCompresser;

    invoke-static {v0}, Lme/shaohui/advancedluban/LubanCompresser;->access$000(Lme/shaohui/advancedluban/LubanCompresser;)Lme/shaohui/advancedluban/LubanBuilder;

    move-result-object v1

    iget v1, v1, Lme/shaohui/advancedluban/LubanBuilder;->gear:I

    iget-object v2, p0, Lme/shaohui/advancedluban/LubanCompresser$2;->val$file:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lme/shaohui/advancedluban/LubanCompresser;->access$100(Lme/shaohui/advancedluban/LubanCompresser;ILjava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lme/shaohui/advancedluban/LubanCompresser$2;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
