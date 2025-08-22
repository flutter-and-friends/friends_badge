.class Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$AllenVersionCheckerHolder;
.super Ljava/lang/Object;
.source "AllenVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllenVersionCheckerHolder"
.end annotation


# static fields
.field public static final allenVersionChecker:Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;-><init>(Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$1;)V

    sput-object v0, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$AllenVersionCheckerHolder;->allenVersionChecker:Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
