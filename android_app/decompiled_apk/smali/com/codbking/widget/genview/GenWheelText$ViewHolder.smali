.class Lcom/codbking/widget/genview/GenWheelText$ViewHolder;
.super Ljava/lang/Object;
.source "GenWheelText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codbking/widget/genview/GenWheelText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/codbking/widget/genview/GenWheelText;


# direct methods
.method private constructor <init>(Lcom/codbking/widget/genview/GenWheelText;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->this$0:Lcom/codbking/widget/genview/GenWheelText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codbking/widget/genview/GenWheelText;Lcom/codbking/widget/genview/GenWheelText$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;-><init>(Lcom/codbking/widget/genview/GenWheelText;)V

    return-void
.end method
