.class public final enum Lcn/forward/androids/views/EasyAdapter$SelectionMode;
.super Ljava/lang/Enum;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/EasyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/forward/androids/views/EasyAdapter$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/forward/androids/views/EasyAdapter$SelectionMode;

.field public static final enum REVERSE_SELECTED:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

.field public static final enum SELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

.field public static final enum UNSELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 373
    new-instance v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    const/4 v1, 0x0

    const-string v2, "SELECT_ALL"

    invoke-direct {v0, v2, v1}, Lcn/forward/androids/views/EasyAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->SELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    .line 374
    new-instance v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    const/4 v2, 0x1

    const-string v3, "UNSELECT_ALL"

    invoke-direct {v0, v3, v2}, Lcn/forward/androids/views/EasyAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->UNSELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    .line 375
    new-instance v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    const/4 v3, 0x2

    const-string v4, "REVERSE_SELECTED"

    invoke-direct {v0, v4, v3}, Lcn/forward/androids/views/EasyAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->REVERSE_SELECTED:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    .line 372
    sget-object v4, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->SELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    aput-object v4, v0, v1

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->UNSELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->REVERSE_SELECTED:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->$VALUES:[Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/forward/androids/views/EasyAdapter$SelectionMode;
    .locals 1

    .line 372
    const-class v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    return-object p0
.end method

.method public static values()[Lcn/forward/androids/views/EasyAdapter$SelectionMode;
    .locals 1

    .line 372
    sget-object v0, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->$VALUES:[Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    invoke-virtual {v0}, [Lcn/forward/androids/views/EasyAdapter$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    return-object v0
.end method
