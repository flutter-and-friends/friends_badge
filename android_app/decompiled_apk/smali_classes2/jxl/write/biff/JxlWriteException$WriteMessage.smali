.class Ljxl/write/biff/JxlWriteException$WriteMessage;
.super Ljava/lang/Object;
.source "JxlWriteException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/JxlWriteException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/JxlWriteException$WriteMessage;->message:Ljava/lang/String;

    return-void
.end method
