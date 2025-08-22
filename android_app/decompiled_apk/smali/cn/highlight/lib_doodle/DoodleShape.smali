.class public final enum Lcn/highlight/lib_doodle/DoodleShape;
.super Ljava/lang/Enum;
.source "DoodleShape.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/lib_doodle/DoodleShape;",
        ">;",
        "Lcn/highlight/lib_doodle/IDoodleShape;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum ARROW:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum FILL_TRIANGLE:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum HOLLOW_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum HOLLOW_RECT:Lcn/highlight/lib_doodle/DoodleShape;

.field public static final enum LINE:Lcn/highlight/lib_doodle/DoodleShape;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v1, 0x0

    const-string v2, "HAND_WRITE"

    invoke-direct {v0, v2, v1}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

    .line 11
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v2, 0x1

    const-string v3, "ARROW"

    invoke-direct {v0, v3, v2}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    .line 12
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v3, 0x2

    const-string v4, "LINE"

    invoke-direct {v0, v4, v3}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    .line 13
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v4, 0x3

    const-string v5, "FILL_CIRCLE"

    invoke-direct {v0, v5, v4}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    .line 14
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v5, 0x4

    const-string v6, "HOLLOW_CIRCLE"

    invoke-direct {v0, v6, v5}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    .line 15
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v6, 0x5

    const-string v7, "FILL_RECT"

    invoke-direct {v0, v7, v6}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    .line 16
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v7, 0x6

    const-string v8, "HOLLOW_RECT"

    invoke-direct {v0, v8, v7}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    .line 17
    new-instance v0, Lcn/highlight/lib_doodle/DoodleShape;

    const/4 v8, 0x7

    const-string v9, "FILL_TRIANGLE"

    invoke-direct {v0, v9, v8}, Lcn/highlight/lib_doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_TRIANGLE:Lcn/highlight/lib_doodle/DoodleShape;

    const/16 v0, 0x8

    new-array v0, v0, [Lcn/highlight/lib_doodle/DoodleShape;

    .line 9
    sget-object v9, Lcn/highlight/lib_doodle/DoodleShape;->HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v9, v0, v1

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v3

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v4

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v5

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v6

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v7

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->FILL_TRIANGLE:Lcn/highlight/lib_doodle/DoodleShape;

    aput-object v1, v0, v8

    sput-object v0, Lcn/highlight/lib_doodle/DoodleShape;->$VALUES:[Lcn/highlight/lib_doodle/DoodleShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/lib_doodle/DoodleShape;
    .locals 1

    .line 9
    const-class v0, Lcn/highlight/lib_doodle/DoodleShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/lib_doodle/DoodleShape;

    return-object p0
.end method

.method public static values()[Lcn/highlight/lib_doodle/DoodleShape;
    .locals 1

    .line 9
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->$VALUES:[Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v0}, [Lcn/highlight/lib_doodle/DoodleShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/lib_doodle/DoodleShape;

    return-object v0
.end method


# virtual methods
.method public config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 2

    .line 21
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object p1

    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1
    return-void
.end method

.method public copy()Lcn/highlight/lib_doodle/IDoodleShape;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 0

    return-void
.end method
