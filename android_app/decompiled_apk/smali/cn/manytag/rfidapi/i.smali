.class Lcn/manytag/rfidapi/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/j;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/i;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/i;->a:Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    aget-byte v1, p1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/util/Data_syn;->Bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [B

    array-length v4, p1

    add-int/lit8 v4, v4, -0x5

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->hexTo10([B)I

    move-result p1

    const v0, 0xffff

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, v3}, Lcn/manytag/rfidapi/uhf/util/Data_syn;->deciMal(II)F

    move-result p1

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/TagInfo;

    invoke-direct {v0}, Lcn/manytag/rfidapi/uhf/data/TagInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/data/TagInfo;->setEpc(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/TagInfo;->setRssi(F)V

    iget-object p1, p0, Lcn/manytag/rfidapi/i;->a:Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/i;->a:Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;

    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;->onTagInfo(Lcn/manytag/rfidapi/uhf/data/TagInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
