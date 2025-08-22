.class Lcn/highlight/core/view/XCFlowLayout$1;
.super Ljava/lang/Object;
.source "XCFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/view/XCFlowLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/view/XCFlowLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcn/highlight/core/view/XCFlowLayout;Landroid/view/View;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/highlight/core/view/XCFlowLayout$1;->this$0:Lcn/highlight/core/view/XCFlowLayout;

    iput-object p2, p0, Lcn/highlight/core/view/XCFlowLayout$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcn/highlight/core/view/XCFlowLayout$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcn/highlight/core/view/XCFlowLayout$1;->this$0:Lcn/highlight/core/view/XCFlowLayout;

    invoke-static {p1}, Lcn/highlight/core/view/XCFlowLayout;->access$000(Lcn/highlight/core/view/XCFlowLayout;)Lcn/highlight/core/view/XCFlowLayout$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/core/view/XCFlowLayout$1;->val$child:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/highlight/core/view/XCFlowLayout$1;->val$finalI:I

    .line 133
    invoke-interface {p1, v0, v1}, Lcn/highlight/core/view/XCFlowLayout$OnItemClickListener;->onItemClick(Ljava/lang/String;I)V

    return-void
.end method
