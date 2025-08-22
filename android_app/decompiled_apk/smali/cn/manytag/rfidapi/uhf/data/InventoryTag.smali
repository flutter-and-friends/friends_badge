.class public Lcn/manytag/rfidapi/uhf/data/InventoryTag;
.super Ljava/lang/Object;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/data/InventoryTag;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/InventoryTag;->tag:Ljava/lang/String;

    return-void
.end method
