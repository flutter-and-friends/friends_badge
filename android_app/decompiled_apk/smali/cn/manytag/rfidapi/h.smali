.class Lcn/manytag/rfidapi/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/f;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/h;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/h;->a:Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/util/Data_syn;->Bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/InventoryTag;

    invoke-direct {v0}, Lcn/manytag/rfidapi/uhf/data/InventoryTag;-><init>()V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/InventoryTag;->setTag(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/h;->a:Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;->onInventoryTag(Lcn/manytag/rfidapi/uhf/data/InventoryTag;)V

    :cond_1
    return-void
.end method
