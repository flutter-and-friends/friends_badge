.class public final Lcom/contrarywind/view/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/contrarywind/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final pickerview:[I

.field public static final pickerview_wheelview_dividerColor:I = 0x0

.field public static final pickerview_wheelview_dividerWidth:I = 0x1

.field public static final pickerview_wheelview_gravity:I = 0x2

.field public static final pickerview_wheelview_lineSpacingMultiplier:I = 0x3

.field public static final pickerview_wheelview_textColorCenter:I = 0x4

.field public static final pickerview_wheelview_textColorOut:I = 0x5

.field public static final pickerview_wheelview_textSize:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_0

    sput-object v0, Lcom/contrarywind/view/R$styleable;->pickerview:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04038a
        0x7f04038b
        0x7f04038c
        0x7f04038d
        0x7f04038e
        0x7f04038f
        0x7f040390
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
