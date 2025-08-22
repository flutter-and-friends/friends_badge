.class Lcn/manytag/rfidapi/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/e;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnFindTag;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/b;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/b;->a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    aget-byte p1, p1, v1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcn/manytag/rfidapi/b;->a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/FindTagStatus;->FIND_SUCCESS:Lcn/manytag/rfidapi/uhf/data/FindTagStatus;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcn/manytag/rfidapi/b;->a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/FindTagStatus;->FIND_FAIL:Lcn/manytag/rfidapi/uhf/data/FindTagStatus;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcn/manytag/rfidapi/b;->a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/FindTagStatus;->SET_SUCCESS:Lcn/manytag/rfidapi/uhf/data/FindTagStatus;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcn/manytag/rfidapi/b;->a:Lcn/manytag/rfidapi/uhf/listen/OnFindTag;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/FindTagStatus;->SET_FAIL:Lcn/manytag/rfidapi/uhf/data/FindTagStatus;

    :goto_0
    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnFindTag;->onFindTag(Lcn/manytag/rfidapi/uhf/data/FindTagStatus;)V

    :goto_1
    return-void
.end method
