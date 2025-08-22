.class public final enum Lcn/highlight/lib_doodle/DoodleColor$Type;
.super Ljava/lang/Enum;
.source "DoodleColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/lib_doodle/DoodleColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/lib_doodle/DoodleColor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/lib_doodle/DoodleColor$Type;

.field public static final enum BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

.field public static final enum COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor$Type;

    const/4 v1, 0x0

    const-string v2, "COLOR"

    invoke-direct {v0, v2, v1}, Lcn/highlight/lib_doodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 16
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor$Type;

    const/4 v2, 0x1

    const-string v3, "BITMAP"

    invoke-direct {v0, v3, v2}, Lcn/highlight/lib_doodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 14
    sget-object v3, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    aput-object v3, v0, v1

    sget-object v1, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->$VALUES:[Lcn/highlight/lib_doodle/DoodleColor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/lib_doodle/DoodleColor$Type;
    .locals 1

    .line 14
    const-class v0, Lcn/highlight/lib_doodle/DoodleColor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/lib_doodle/DoodleColor$Type;

    return-object p0
.end method

.method public static values()[Lcn/highlight/lib_doodle/DoodleColor$Type;
    .locals 1

    .line 14
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->$VALUES:[Lcn/highlight/lib_doodle/DoodleColor$Type;

    invoke-virtual {v0}, [Lcn/highlight/lib_doodle/DoodleColor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/lib_doodle/DoodleColor$Type;

    return-object v0
.end method
