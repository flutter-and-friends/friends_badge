.class public final enum Lcn/forward/androids/views/EasyAdapter$Mode;
.super Ljava/lang/Enum;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/EasyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/forward/androids/views/EasyAdapter$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/forward/androids/views/EasyAdapter$Mode;

.field public static final enum CLICK:Lcn/forward/androids/views/EasyAdapter$Mode;

.field public static final enum MULTI_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

.field public static final enum SINGLE_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 329
    new-instance v0, Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    invoke-direct {v0, v2, v1}, Lcn/forward/androids/views/EasyAdapter$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->CLICK:Lcn/forward/androids/views/EasyAdapter$Mode;

    new-instance v0, Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v2, 0x1

    const-string v3, "SINGLE_SELECT"

    invoke-direct {v0, v3, v2}, Lcn/forward/androids/views/EasyAdapter$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->SINGLE_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    new-instance v0, Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v3, 0x2

    const-string v4, "MULTI_SELECT"

    invoke-direct {v0, v4, v3}, Lcn/forward/androids/views/EasyAdapter$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->MULTI_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/forward/androids/views/EasyAdapter$Mode;

    .line 328
    sget-object v4, Lcn/forward/androids/views/EasyAdapter$Mode;->CLICK:Lcn/forward/androids/views/EasyAdapter$Mode;

    aput-object v4, v0, v1

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->SINGLE_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->MULTI_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->$VALUES:[Lcn/forward/androids/views/EasyAdapter$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/forward/androids/views/EasyAdapter$Mode;
    .locals 1

    .line 328
    const-class v0, Lcn/forward/androids/views/EasyAdapter$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/forward/androids/views/EasyAdapter$Mode;

    return-object p0
.end method

.method public static values()[Lcn/forward/androids/views/EasyAdapter$Mode;
    .locals 1

    .line 328
    sget-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->$VALUES:[Lcn/forward/androids/views/EasyAdapter$Mode;

    invoke-virtual {v0}, [Lcn/forward/androids/views/EasyAdapter$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/forward/androids/views/EasyAdapter$Mode;

    return-object v0
.end method
