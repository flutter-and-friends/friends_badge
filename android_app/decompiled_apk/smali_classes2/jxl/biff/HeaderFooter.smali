.class public abstract Ljxl/biff/HeaderFooter;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/HeaderFooter$Contents;
    }
.end annotation


# static fields
.field private static final BOLD_TOGGLE:Ljava/lang/String; = "&B"

.field private static final CENTRE:Ljava/lang/String; = "&C"

.field private static final DATE:Ljava/lang/String; = "&D"

.field private static final DOUBLE_UNDERLINE_TOGGLE:Ljava/lang/String; = "&E"

.field private static final ITALICS_TOGGLE:Ljava/lang/String; = "&I"

.field private static final LEFT_ALIGN:Ljava/lang/String; = "&L"

.field private static final OUTLINE_TOGGLE:Ljava/lang/String; = "&O"

.field private static final PAGENUM:Ljava/lang/String; = "&P"

.field private static final RIGHT_ALIGN:Ljava/lang/String; = "&R"

.field private static final SHADOW_TOGGLE:Ljava/lang/String; = "&H"

.field private static final STRIKETHROUGH_TOGGLE:Ljava/lang/String; = "&S"

.field private static final SUBSCRIPT_TOGGLE:Ljava/lang/String; = "&Y"

.field private static final SUPERSCRIPT_TOGGLE:Ljava/lang/String; = "&X"

.field private static final TIME:Ljava/lang/String; = "&T"

.field private static final TOTAL_PAGENUM:Ljava/lang/String; = "&N"

.field private static final UNDERLINE_TOGGLE:Ljava/lang/String; = "&U"

.field private static final WORKBOOK_NAME:Ljava/lang/String; = "&F"

.field private static final WORKSHEET_NAME:Ljava/lang/String; = "&A"

.field static synthetic class$jxl$biff$HeaderFooter:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private centre:Ljxl/biff/HeaderFooter$Contents;

.field private left:Ljxl/biff/HeaderFooter$Contents;

.field private right:Ljxl/biff/HeaderFooter$Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/biff/HeaderFooter;->class$jxl$biff$HeaderFooter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.HeaderFooter"

    invoke-static {v0}, Ljxl/biff/HeaderFooter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/HeaderFooter;->class$jxl$biff$HeaderFooter:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/HeaderFooter;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 474
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 475
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const-string v1, "&L"

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "&R"

    .line 506
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "&C"

    .line 507
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-nez v1, :cond_3

    if-eq v3, v5, :cond_1

    .line 514
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    move v0, v3

    goto :goto_0

    :cond_1
    if-eq v2, v5, :cond_2

    .line 519
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    move v0, v2

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    :goto_0
    if-eq v0, v3, :cond_4

    if-ne v1, v5, :cond_7

    if-ne v2, v5, :cond_7

    if-ne v3, v5, :cond_7

    :cond_4
    if-eq v2, v5, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 536
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    move v0, v2

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 542
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_7
    :goto_1
    if-ne v0, v2, :cond_8

    add-int/2addr v0, v4

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 554
    :cond_8
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_9

    .line 556
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 559
    :cond_9
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_a

    .line 561
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 564
    :cond_a
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_b

    .line 566
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    :cond_b
    return-void

    .line 498
    :cond_c
    :goto_2
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 499
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 500
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter;)V
    .locals 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 486
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 487
    iget-object p1, p1, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 635
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 636
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 637
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    return-void
.end method

.method protected abstract createContents()Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected getCentreText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 617
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getLeftText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 627
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getRightText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 607
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&L"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    :cond_0
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&C"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :cond_1
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&R"

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
