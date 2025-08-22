.class public Ljxl/format/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final ALL:Ljxl/format/Border;

.field public static final BOTTOM:Ljxl/format/Border;

.field public static final LEFT:Ljxl/format/Border;

.field public static final NONE:Ljxl/format/Border;

.field public static final RIGHT:Ljxl/format/Border;

.field public static final TOP:Ljxl/format/Border;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljxl/format/Border;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    .line 49
    new-instance v0, Ljxl/format/Border;

    const-string v1, "all"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    .line 50
    new-instance v0, Ljxl/format/Border;

    const-string v1, "top"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    .line 51
    new-instance v0, Ljxl/format/Border;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    .line 52
    new-instance v0, Ljxl/format/Border;

    const-string v1, "left"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    .line 53
    new-instance v0, Ljxl/format/Border;

    const-string v1, "right"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljxl/format/Border;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Ljxl/format/Border;->string:Ljava/lang/String;

    return-object v0
.end method
