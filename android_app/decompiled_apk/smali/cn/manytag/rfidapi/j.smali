.class Lcn/manytag/rfidapi/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/g;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnKeypad;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnKeypad;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/j;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/j;->a:Lcn/manytag/rfidapi/uhf/listen/OnKeypad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/16 v2, 0x33

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/manytag/rfidapi/j;->a:Lcn/manytag/rfidapi/uhf/listen/OnKeypad;

    sget-object v3, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->START:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    invoke-interface {v2, v3}, Lcn/manytag/rfidapi/uhf/listen/OnKeypad;->onKeypad(Lcn/manytag/rfidapi/uhf/data/KeypadStatus;)V

    :cond_2
    aget-byte p1, p1, v1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcn/manytag/rfidapi/j;->a:Lcn/manytag/rfidapi/uhf/listen/OnKeypad;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->STOP:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnKeypad;->onKeypad(Lcn/manytag/rfidapi/uhf/data/KeypadStatus;)V

    :cond_3
    return-void
.end method
