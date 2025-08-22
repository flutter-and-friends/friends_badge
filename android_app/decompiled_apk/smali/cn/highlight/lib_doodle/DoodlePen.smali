.class public final enum Lcn/highlight/lib_doodle/DoodlePen;
.super Ljava/lang/Enum;
.source "DoodlePen.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodlePen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/lib_doodle/DoodlePen;",
        ">;",
        "Lcn/highlight/lib_doodle/IDoodlePen;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum BG:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum COPY:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum ERASER:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

.field public static final enum TEXT:Lcn/highlight/lib_doodle/DoodlePen;


# instance fields
.field private mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v1, 0x0

    const-string v2, "BRUSH"

    invoke-direct {v0, v2, v1}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    .line 12
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v2, 0x1

    const-string v3, "COPY"

    invoke-direct {v0, v3, v2}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    .line 13
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v3, 0x2

    const-string v4, "ERASER"

    invoke-direct {v0, v4, v3}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->ERASER:Lcn/highlight/lib_doodle/DoodlePen;

    .line 14
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v4, 0x3

    const-string v5, "MOSAIC"

    invoke-direct {v0, v5, v4}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

    .line 15
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v5, 0x4

    const-string v6, "BG"

    invoke-direct {v0, v6, v5}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    .line 16
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v6, 0x5

    const-string v7, "TEXT"

    invoke-direct {v0, v7, v6}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    .line 17
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v7, 0x6

    const-string v8, "BITMAP"

    invoke-direct {v0, v8, v7}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    .line 18
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v8, 0x7

    const-string v9, "QRCODE"

    invoke-direct {v0, v9, v8}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    .line 19
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/16 v9, 0x8

    const-string v10, "BARCODE"

    invoke-direct {v0, v10, v9}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    .line 20
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePen;

    const/16 v10, 0x9

    const-string v11, "SHAPE"

    invoke-direct {v0, v11, v10}, Lcn/highlight/lib_doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    const/16 v0, 0xa

    new-array v0, v0, [Lcn/highlight/lib_doodle/DoodlePen;

    .line 9
    sget-object v11, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v11, v0, v1

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->ERASER:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v3

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v4

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v5

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v6

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v7

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v8

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v9

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    aput-object v1, v0, v10

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePen;->$VALUES:[Lcn/highlight/lib_doodle/DoodlePen;

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

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/lib_doodle/DoodlePen;
    .locals 1

    .line 9
    const-class v0, Lcn/highlight/lib_doodle/DoodlePen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/lib_doodle/DoodlePen;

    return-object p0
.end method

.method public static values()[Lcn/highlight/lib_doodle/DoodlePen;
    .locals 1

    .line 9
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->$VALUES:[Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {v0}, [Lcn/highlight/lib_doodle/DoodlePen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/lib_doodle/DoodlePen;

    return-object v0
.end method


# virtual methods
.method public config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 2

    .line 26
    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq p0, p2, :cond_0

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->ERASER:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p0, p2, :cond_2

    .line 27
    :cond_0
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p2

    .line 28
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleColor;

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleColor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodleItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public copy()Lcn/highlight/lib_doodle/IDoodlePen;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 1

    .line 58
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p0, v0, :cond_0

    .line 59
    instance-of v0, p2, Lcn/highlight/lib_doodle/DoodleView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePen;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->getSize()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcn/highlight/lib_doodle/CopyLocation;->drawItSelf(Landroid/graphics/Canvas;F)V

    :cond_0
    return-void
.end method

.method public getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;
    .locals 1

    .line 38
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePen;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    if-nez v0, :cond_2

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePen;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcn/highlight/lib_doodle/CopyLocation;

    invoke-direct {v0}, Lcn/highlight/lib_doodle/CopyLocation;-><init>()V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodlePen;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    .line 46
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePen;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    return-object v0
.end method
