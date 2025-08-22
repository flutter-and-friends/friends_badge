.class Lcom/uhf/api/cls/Reader$Exceptionotify;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Exceptionotify"
.end annotation


# instance fields
.field re:Lcom/uhf/api/cls/Reader$READER_ERR;

.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V
    .locals 0

    .line 3164
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3165
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->reader:Lcom/uhf/api/cls/Reader;

    .line 3166
    iput-object p3, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->re:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3170
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uhf/api/cls/ReadExceptionListener;

    .line 3171
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->re:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-interface {v1, v2, v3}, Lcom/uhf/api/cls/ReadExceptionListener;->tagReadException(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    goto :goto_0

    :cond_0
    return-void
.end method
