.class public final enum Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;
.super Ljava/lang/Enum;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TitleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

.field public static final enum ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

.field public static final ACTIVE_INDEX:I = 0x1

.field public static final enum ALL:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

.field public static final ALL_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1932
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ALL:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    const/4 v2, 0x1

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v2}, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    const/4 v0, 0x2

    new-array v0, v0, [Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    .line 1931
    sget-object v3, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ALL:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    aput-object v3, v0, v1

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    aput-object v1, v0, v2

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1931
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;
    .locals 1

    .line 1931
    const-class v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    return-object p0
.end method

.method public static values()[Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;
    .locals 1

    .line 1931
    sget-object v0, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->$VALUES:[Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    invoke-virtual {v0}, [Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    return-object v0
.end method
