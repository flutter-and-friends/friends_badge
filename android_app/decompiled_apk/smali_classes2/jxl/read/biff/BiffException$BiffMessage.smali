.class Ljxl/read/biff/BiffException$BiffMessage;
.super Ljava/lang/Object;
.source "BiffException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/read/biff/BiffException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BiffMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljxl/read/biff/BiffException$BiffMessage;->message:Ljava/lang/String;

    return-void
.end method
