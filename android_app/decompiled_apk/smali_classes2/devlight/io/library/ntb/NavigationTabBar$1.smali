.class Ldevlight/io/library/ntb/NavigationTabBar$1;
.super Landroid/graphics/Paint;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 160
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$1;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
