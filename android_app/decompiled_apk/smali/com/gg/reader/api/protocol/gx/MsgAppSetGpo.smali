.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetGpo.java"


# instance fields
.field private gpo1:I

.field private gpo10:I

.field private gpo11:I

.field private gpo12:I

.field private gpo13:I

.field private gpo14:I

.field private gpo15:I

.field private gpo16:I

.field private gpo17:I

.field private gpo18:I

.field private gpo19:I

.field private gpo2:I

.field private gpo20:I

.field private gpo21:I

.field private gpo22:I

.field private gpo23:I

.field private gpo24:I

.field private gpo25:I

.field private gpo26:I

.field private gpo27:I

.field private gpo28:I

.field private gpo29:I

.field private gpo3:I

.field private gpo30:I

.field private gpo31:I

.field private gpo32:I

.field private gpo4:I

.field private gpo5:I

.field private gpo6:I

.field private gpo7:I

.field private gpo8:I

.field private gpo9:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    .line 31
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    .line 32
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    .line 33
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    .line 34
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    .line 35
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    .line 36
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    .line 37
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    .line 38
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    .line 39
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    .line 40
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    .line 41
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    .line 42
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    .line 43
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    .line 44
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    .line 48
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x9

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;-><init>()V

    if-eqz p1, :cond_1

    .line 60
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 63
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 64
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    goto :goto_0

    .line 148
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    goto :goto_0

    .line 145
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    goto :goto_0

    .line 142
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    goto :goto_0

    .line 138
    :pswitch_8
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    goto :goto_0

    .line 135
    :pswitch_9
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    goto :goto_0

    .line 132
    :pswitch_a
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    goto :goto_0

    .line 129
    :pswitch_b
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    goto :goto_0

    .line 126
    :pswitch_c
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    goto :goto_0

    .line 123
    :pswitch_d
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    goto :goto_0

    .line 120
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    goto :goto_0

    .line 117
    :pswitch_f
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    goto/16 :goto_0

    .line 113
    :pswitch_10
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    goto/16 :goto_0

    .line 110
    :pswitch_11
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    goto/16 :goto_0

    .line 107
    :pswitch_12
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    goto/16 :goto_0

    .line 104
    :pswitch_13
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    goto/16 :goto_0

    .line 101
    :pswitch_14
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    goto/16 :goto_0

    .line 98
    :pswitch_15
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    goto/16 :goto_0

    .line 95
    :pswitch_16
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    goto/16 :goto_0

    .line 92
    :pswitch_17
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    goto/16 :goto_0

    .line 88
    :pswitch_18
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    goto/16 :goto_0

    .line 85
    :pswitch_19
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    goto/16 :goto_0

    .line 82
    :pswitch_1a
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    goto/16 :goto_0

    .line 79
    :pswitch_1b
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    goto/16 :goto_0

    .line 76
    :pswitch_1c
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    goto/16 :goto_0

    .line 73
    :pswitch_1d
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    goto/16 :goto_0

    .line 70
    :pswitch_1e
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    goto/16 :goto_0

    .line 67
    :pswitch_1f
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 571
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;)V

    .line 577
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 578
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->setRtCode(B)V

    .line 579
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getGpo1()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I

    return v0
.end method

.method public getGpo10()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    return v0
.end method

.method public getGpo11()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    return v0
.end method

.method public getGpo12()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    return v0
.end method

.method public getGpo13()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    return v0
.end method

.method public getGpo14()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    return v0
.end method

.method public getGpo15()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    return v0
.end method

.method public getGpo16()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    return v0
.end method

.method public getGpo17()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    return v0
.end method

.method public getGpo18()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    return v0
.end method

.method public getGpo19()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    return v0
.end method

.method public getGpo2()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    return v0
.end method

.method public getGpo20()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    return v0
.end method

.method public getGpo21()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    return v0
.end method

.method public getGpo22()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    return v0
.end method

.method public getGpo23()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    return v0
.end method

.method public getGpo24()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    return v0
.end method

.method public getGpo25()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    return v0
.end method

.method public getGpo26()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    return v0
.end method

.method public getGpo27()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    return v0
.end method

.method public getGpo28()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    return v0
.end method

.method public getGpo29()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    return v0
.end method

.method public getGpo3()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    return v0
.end method

.method public getGpo30()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    return v0
.end method

.method public getGpo31()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    return v0
.end method

.method public getGpo32()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    return v0
.end method

.method public getGpo4()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    return v0
.end method

.method public getGpo5()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    return v0
.end method

.method public getGpo6()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    return v0
.end method

.method public getGpo7()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    return v0
.end method

.method public getGpo8()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    return v0
.end method

.method public getGpo9()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 431
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 432
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 433
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 434
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 436
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 437
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 438
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 440
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    .line 441
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 442
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 444
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    .line 445
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 446
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 448
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    .line 449
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 450
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 452
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    if-eq v2, v1, :cond_5

    const/4 v1, 0x6

    .line 453
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 454
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 456
    :cond_5
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    if-eq v2, v1, :cond_6

    const/4 v1, 0x7

    .line 457
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 458
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 460
    :cond_6
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    if-eq v2, v1, :cond_7

    .line 461
    invoke-virtual {v0, v3, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 462
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 465
    :cond_7
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    if-eq v2, v1, :cond_8

    const/16 v1, 0x9

    .line 466
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 467
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 469
    :cond_8
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    if-eq v2, v1, :cond_9

    const/16 v1, 0xa

    .line 470
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 471
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 473
    :cond_9
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    if-eq v2, v1, :cond_a

    const/16 v1, 0xb

    .line 474
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 475
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 477
    :cond_a
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    if-eq v2, v1, :cond_b

    const/16 v1, 0xc

    .line 478
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 479
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 481
    :cond_b
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    if-eq v2, v1, :cond_c

    const/16 v1, 0xd

    .line 482
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 483
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 485
    :cond_c
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    if-eq v2, v1, :cond_d

    const/16 v1, 0xe

    .line 486
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 487
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 489
    :cond_d
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    if-eq v2, v1, :cond_e

    const/16 v1, 0xf

    .line 490
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 491
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 493
    :cond_e
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    if-eq v2, v1, :cond_f

    const/16 v1, 0x10

    .line 494
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 495
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 498
    :cond_f
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    if-eq v2, v1, :cond_10

    const/16 v1, 0x11

    .line 499
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 500
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 502
    :cond_10
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    if-eq v2, v1, :cond_11

    const/16 v1, 0x12

    .line 503
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 504
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 506
    :cond_11
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    if-eq v2, v1, :cond_12

    const/16 v1, 0x13

    .line 507
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 508
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 510
    :cond_12
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    if-eq v2, v1, :cond_13

    const/16 v1, 0x14

    .line 511
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 512
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 514
    :cond_13
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    if-eq v2, v1, :cond_14

    const/16 v1, 0x15

    .line 515
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 516
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 518
    :cond_14
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    if-eq v2, v1, :cond_15

    const/16 v1, 0x16

    .line 519
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 520
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 522
    :cond_15
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    if-eq v2, v1, :cond_16

    const/16 v1, 0x17

    .line 523
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 524
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 526
    :cond_16
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    if-eq v2, v1, :cond_17

    const/16 v1, 0x18

    .line 527
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 528
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 531
    :cond_17
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    if-eq v2, v1, :cond_18

    const/16 v1, 0x19

    .line 532
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 533
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 535
    :cond_18
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    if-eq v2, v1, :cond_19

    const/16 v1, 0x1a

    .line 536
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 537
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 539
    :cond_19
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    if-eq v2, v1, :cond_1a

    const/16 v1, 0x1b

    .line 540
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 541
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 543
    :cond_1a
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    if-eq v2, v1, :cond_1b

    const/16 v1, 0x1c

    .line 544
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 545
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 547
    :cond_1b
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    if-eq v2, v1, :cond_1c

    const/16 v1, 0x1d

    .line 548
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 549
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 551
    :cond_1c
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    if-eq v2, v1, :cond_1d

    const/16 v1, 0x1e

    .line 552
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 553
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 555
    :cond_1d
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    if-eq v2, v1, :cond_1e

    const/16 v1, 0x1f

    .line 556
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 557
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 559
    :cond_1e
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    if-eq v2, v1, :cond_1f

    const/16 v1, 0x20

    .line 560
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 561
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 565
    :cond_1f
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    .line 566
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->dataLen:I

    return-void
.end method

.method public setGpo1(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo1:I

    return-void
.end method

.method public setGpo10(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo10:I

    return-void
.end method

.method public setGpo11(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo11:I

    return-void
.end method

.method public setGpo12(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo12:I

    return-void
.end method

.method public setGpo13(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo13:I

    return-void
.end method

.method public setGpo14(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo14:I

    return-void
.end method

.method public setGpo15(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo15:I

    return-void
.end method

.method public setGpo16(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo16:I

    return-void
.end method

.method public setGpo17(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo17:I

    return-void
.end method

.method public setGpo18(I)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo18:I

    return-void
.end method

.method public setGpo19(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo19:I

    return-void
.end method

.method public setGpo2(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo2:I

    return-void
.end method

.method public setGpo20(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo20:I

    return-void
.end method

.method public setGpo21(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo21:I

    return-void
.end method

.method public setGpo22(I)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo22:I

    return-void
.end method

.method public setGpo23(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo23:I

    return-void
.end method

.method public setGpo24(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo24:I

    return-void
.end method

.method public setGpo25(I)V
    .locals 0

    .line 370
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo25:I

    return-void
.end method

.method public setGpo26(I)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo26:I

    return-void
.end method

.method public setGpo27(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo27:I

    return-void
.end method

.method public setGpo28(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo28:I

    return-void
.end method

.method public setGpo29(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo29:I

    return-void
.end method

.method public setGpo3(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo3:I

    return-void
.end method

.method public setGpo30(I)V
    .locals 0

    .line 410
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo30:I

    return-void
.end method

.method public setGpo31(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo31:I

    return-void
.end method

.method public setGpo32(I)V
    .locals 0

    .line 426
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo32:I

    return-void
.end method

.method public setGpo4(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo4:I

    return-void
.end method

.method public setGpo5(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo5:I

    return-void
.end method

.method public setGpo6(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo6:I

    return-void
.end method

.method public setGpo7(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo7:I

    return-void
.end method

.method public setGpo8(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo8:I

    return-void
.end method

.method public setGpo9(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpo;->gpo9:I

    return-void
.end method
