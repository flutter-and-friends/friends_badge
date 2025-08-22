.class public Ljxl/read/biff/PasswordException;
.super Ljxl/read/biff/BiffException;
.source "PasswordException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Ljxl/read/biff/PasswordException;->passwordProtected:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p0, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    return-void
.end method
