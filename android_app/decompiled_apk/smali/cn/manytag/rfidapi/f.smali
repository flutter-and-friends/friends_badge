.class Lcn/manytag/rfidapi/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/h;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnOperation;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnOperation;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/f;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/f;->a:Lcn/manytag/rfidapi/uhf/listen/OnOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/f;->a:Lcn/manytag/rfidapi/uhf/listen/OnOperation;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcn/manytag/rfidapi/uhf/listen/OnOperation;->onOperation(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
