.class final enum Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
.super Ljava/lang/Enum;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum END:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum START:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 303
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->START:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v3, 0x2

    const-string v4, "END"

    invoke-direct {v0, v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->END:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v4, 0x3

    const-string v5, "CENTER"

    invoke-direct {v0, v5, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    aput-object v5, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->START:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->END:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    .line 303
    const-class v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    .line 303
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method
