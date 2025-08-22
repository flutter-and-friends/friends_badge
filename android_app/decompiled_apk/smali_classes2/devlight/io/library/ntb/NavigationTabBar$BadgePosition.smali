.class public final enum Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;
.super Ljava/lang/Enum;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BadgePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

.field public static final enum CENTER:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

.field public static final CENTER_INDEX:I = 0x1

.field public static final enum LEFT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

.field public static final LEFT_INDEX:I = 0x0

.field public static final enum RIGHT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

.field public static final RIGHT_INDEX:I = 0x2


# instance fields
.field private final mPositionFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1940
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v1, v3}, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->LEFT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v2, v4}, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->CENTER:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v0, v4, v3, v5}, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->RIGHT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    const/4 v0, 0x3

    new-array v0, v0, [Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    .line 1939
    sget-object v4, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->LEFT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    aput-object v4, v0, v1

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->CENTER:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    aput-object v1, v0, v2

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->RIGHT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    aput-object v1, v0, v3

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1948
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1949
    iput p3, p0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->mPositionFraction:F

    return-void
.end method

.method static synthetic access$800(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)F
    .locals 0

    .line 1939
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->mPositionFraction:F

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;
    .locals 1

    .line 1939
    const-class v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    return-object p0
.end method

.method public static values()[Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;
    .locals 1

    .line 1939
    sget-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-virtual {v0}, [Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    return-object v0
.end method
