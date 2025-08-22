.class public final enum Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;
.super Ljava/lang/Enum;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BadgeGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

.field public static final enum BOTTOM:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

.field public static final BOTTOM_INDEX:I = 0x1

.field public static final enum TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

.field public static final TOP_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1955
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    const/4 v2, 0x1

    const-string v3, "BOTTOM"

    invoke-direct {v0, v3, v2}, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->BOTTOM:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    const/4 v0, 0x2

    new-array v0, v0, [Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    .line 1954
    sget-object v3, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    aput-object v3, v0, v1

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->BOTTOM:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    aput-object v1, v0, v2

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1954
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;
    .locals 1

    .line 1954
    const-class v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    return-object p0
.end method

.method public static values()[Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;
    .locals 1

    .line 1954
    sget-object v0, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    invoke-virtual {v0}, [Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    return-object v0
.end method
