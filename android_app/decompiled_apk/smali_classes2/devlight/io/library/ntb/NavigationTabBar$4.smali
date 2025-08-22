.class Ldevlight/io/library/ntb/NavigationTabBar$4;
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

    .line 181
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$4;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 183
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$4;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$4;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
