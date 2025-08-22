.class public Lcn/highlight/work_card_write/api/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/highlight/work_card_write/api/MessageEvent;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/highlight/work_card_write/api/MessageEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/highlight/work_card_write/api/MessageEvent;->message:Ljava/lang/String;

    return-object v0
.end method
