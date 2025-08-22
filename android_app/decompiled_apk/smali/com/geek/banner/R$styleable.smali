.class public final Lcom/geek/banner/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geek/banner/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Banner:[I

.field public static final Banner_banner_auto_play:I = 0x0

.field public static final Banner_banner_default_image:I = 0x1

.field public static final Banner_banner_expose_width:I = 0x2

.field public static final Banner_banner_interval_time:I = 0x3

.field public static final Banner_banner_multi_anim:I = 0x4

.field public static final Banner_banner_mz_anim:I = 0x5

.field public static final Banner_banner_mz_overlap:I = 0x6

.field public static final Banner_banner_page_spacing:I = 0x7

.field public static final Banner_banner_scroll_time:I = 0x8

.field public static final Banner_banner_show_indicator:I = 0x9

.field public static final Banner_banner_show_model:I = 0xa

.field public static final Banner_banner_single_anim:I = 0xb

.field public static final Banner_indicator_default_drawable:I = 0xc

.field public static final Banner_indicator_default_height:I = 0xd

.field public static final Banner_indicator_default_width:I = 0xe

.field public static final Banner_indicator_margin_bottom:I = 0xf

.field public static final Banner_indicator_select_drawable:I = 0x10

.field public static final Banner_indicator_select_height:I = 0x11

.field public static final Banner_indicator_select_width:I = 0x12

.field public static final Banner_indicator_space:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 89
    fill-array-data v0, :array_0

    sput-object v0, Lcom/geek/banner/R$styleable;->Banner:[I

    return-void

    :array_0
    .array-data 4
        0x7f040042
        0x7f040043
        0x7f040044
        0x7f040045
        0x7f040046
        0x7f040047
        0x7f040048
        0x7f040049
        0x7f04004a
        0x7f04004b
        0x7f04004c
        0x7f04004d
        0x7f040159
        0x7f04015a
        0x7f04015b
        0x7f04015c
        0x7f04015d
        0x7f04015e
        0x7f04015f
        0x7f040160
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
