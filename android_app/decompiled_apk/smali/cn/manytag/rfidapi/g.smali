.class Lcn/manytag/rfidapi/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/i;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/data/Setting;

.field final synthetic b:Lcn/manytag/rfidapi/uhf/listen/OnSetting;

.field final synthetic c:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/data/Setting;Lcn/manytag/rfidapi/uhf/listen/OnSetting;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    iput-object p3, p0, Lcn/manytag/rfidapi/g;->b:Lcn/manytag/rfidapi/uhf/listen/OnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/16 v2, 0x35

    const/16 v3, 0x23

    const/16 v4, 0x21

    const/16 v5, 0x11

    const/4 v6, -0x1

    if-eq v1, v0, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v6, :cond_10

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x5

    if-eq v1, v6, :cond_e

    if-eq v1, v0, :cond_d

    if-eq v1, v5, :cond_b

    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    aget-byte v0, p1, v8

    aget-byte p1, p1, v9

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {v1, v0}, Lcn/manytag/rfidapi/uhf/data/Setting;->setReadingCycle(I)V

    iget-object v0, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/Setting;->setRestCycle(I)V

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x0

    aget-byte v2, p1, v11

    if-ne v2, v7, :cond_4

    const-string v1, "China1(840MHz-845MHz)"

    :cond_4
    aget-byte v2, p1, v11

    if-ne v2, v0, :cond_5

    const-string v1, "China2(920MHz-925MHz)"

    :cond_5
    aget-byte v0, p1, v11

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    const-string v1, "Europe(865MHz-868MHz)"

    :cond_6
    aget-byte v0, p1, v11

    if-ne v0, v9, :cond_7

    const-string v1, "USA(902MHz-928MHz)"

    :cond_7
    aget-byte v0, p1, v11

    const/16 v2, 0x16

    if-ne v0, v2, :cond_8

    const-string v1, "Korea(917MHz-923MHz)"

    :cond_8
    aget-byte p1, p1, v11

    const/16 v0, 0x32

    if-ne p1, v0, :cond_9

    const-string v1, "Japan(952MHz-953MHz)"

    :cond_9
    iget-object p1, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {p1, v1}, Lcn/manytag/rfidapi/uhf/data/Setting;->setWorkingFrequency(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    aget-byte p1, p1, v11

    iget-object v0, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/Setting;->setPower(I)V

    goto/16 :goto_2

    :cond_b
    aget-byte v0, p1, v11

    if-ne v0, v8, :cond_c

    const/4 v10, 0x1

    goto :goto_0

    :cond_c
    aget-byte p1, p1, v11

    :goto_0
    iget-object p1, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {p1, v10}, Lcn/manytag/rfidapi/uhf/data/Setting;->setSound(Z)V

    goto/16 :goto_2

    :cond_d
    aget-byte p1, p1, v11

    iget-object v0, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/Setting;->setGattery(I)V

    goto/16 :goto_2

    :cond_e
    aget-byte v1, p1, v11

    const/4 v2, 0x7

    const-string v3, "."

    if-ne v6, v1, :cond_f

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v4, p1, v8

    invoke-static {v1, v4}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v1

    new-array v4, v1, [B

    invoke-static {p1, v2, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v4, 0x3

    new-array v5, v4, [B

    add-int/2addr v1, v9

    invoke-static {p1, v1, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v2, v5, v10

    invoke-static {v1, v2}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v2, v5, v7

    invoke-static {v1, v2}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v0, v5, v0

    invoke-static {v1, v0}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v4, p1, v8

    invoke-static {v1, v4}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manytag/rfidapi/g;->c:Lcn/manytag/rfidapi/Reader;

    aget-byte p1, p1, v9

    invoke-static {v1, p1}, Lcn/manytag/rfidapi/Reader;->access$000(Lcn/manytag/rfidapi/Reader;B)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/uhf/data/Setting;->setVersion(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcn/manytag/rfidapi/g;->b:Lcn/manytag/rfidapi/uhf/listen/OnSetting;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcn/manytag/rfidapi/g;->a:Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnSetting;->onSetting(Lcn/manytag/rfidapi/uhf/data/Setting;)V

    :cond_10
    return-void
.end method
