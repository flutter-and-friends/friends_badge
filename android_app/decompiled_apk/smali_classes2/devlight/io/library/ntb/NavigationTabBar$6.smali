.class Ldevlight/io/library/ntb/NavigationTabBar$6;
.super Landroid/text/TextPaint;
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

    .line 197
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$6;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0, p2}, Landroid/text/TextPaint;-><init>(I)V

    .line 199
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$6;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$6;->setFakeBoldText(Z)V

    return-void
.end method
