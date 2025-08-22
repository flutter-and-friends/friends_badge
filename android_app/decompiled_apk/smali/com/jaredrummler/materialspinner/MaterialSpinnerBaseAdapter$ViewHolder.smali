.class Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MaterialSpinnerBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method
