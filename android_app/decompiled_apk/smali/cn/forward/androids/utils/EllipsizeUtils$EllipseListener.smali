.class Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;
.super Ljava/lang/Object;
.source "EllipsizeUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/EllipsizeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EllipseListener"
.end annotation


# instance fields
.field final content:Ljava/lang/String;

.field final highlightAll:Z

.field final highlightColor:I

.field final ignoreCase:Z

.field final keyword:Ljava/lang/String;

.field needHighlight:Z

.field final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    .line 252
    iput-object p2, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->content:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->keyword:Ljava/lang/String;

    .line 254
    iput p4, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->highlightColor:I

    .line 255
    iput-boolean p5, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->highlightAll:Z

    .line 256
    iput-boolean p6, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->ignoreCase:Z

    const/4 p2, 0x1

    .line 257
    iput-boolean p2, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->needHighlight:Z

    .line 259
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 246
    invoke-direct/range {v0 .. v6}, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;-><init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->needHighlight:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .line 264
    iget-object v0, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 266
    iget-object v0, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->keyword:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->ignoreCase:Z

    invoke-static {v0, v1, v2, v3}, Lcn/forward/androids/utils/EllipsizeUtils;->access$000(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    iget-boolean v0, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->needHighlight:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 272
    iget-boolean v2, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->highlightAll:Z

    if-nez v2, :cond_2

    .line 273
    iget-object v0, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    .line 279
    :goto_0
    iget-object v0, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->keyword:Ljava/lang/String;

    iget v4, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->highlightColor:I

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->ignoreCase:Z

    invoke-static/range {v2 .. v7}, Lcn/forward/androids/utils/EllipsizeUtils;->highlight(Ljava/lang/String;Ljava/lang/String;IIIZ)Landroid/text/SpannableString;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcn/forward/androids/utils/EllipsizeUtils$EllipseListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1
.end method
