.class Ldevlight/io/library/ntb/NavigationTabBar$10;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/ntb/NavigationTabBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;

.field final synthetic val$tempIndex:I


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V
    .locals 0

    .line 1646
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$10;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iput p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$10;->val$tempIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1649
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$10;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$10;->val$tempIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ldevlight/io/library/ntb/NavigationTabBar;->setModelIndex(IZ)V

    return-void
.end method
