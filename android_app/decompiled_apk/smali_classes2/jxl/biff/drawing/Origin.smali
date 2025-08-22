.class public final Ljxl/biff/drawing/Origin;
.super Ljava/lang/Object;
.source "Origin.java"


# static fields
.field public static final READ:Ljxl/biff/drawing/Origin;

.field public static final READ_WRITE:Ljxl/biff/drawing/Origin;

.field public static final WRITE:Ljxl/biff/drawing/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljxl/biff/drawing/Origin;

    invoke-direct {v0}, Ljxl/biff/drawing/Origin;-><init>()V

    sput-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    .line 35
    new-instance v0, Ljxl/biff/drawing/Origin;

    invoke-direct {v0}, Ljxl/biff/drawing/Origin;-><init>()V

    sput-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    .line 36
    new-instance v0, Ljxl/biff/drawing/Origin;

    invoke-direct {v0}, Ljxl/biff/drawing/Origin;-><init>()V

    sput-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
