.class public Ljxl/write/DateFormat;
.super Ljxl/write/biff/DateFormatRecord;
.source "DateFormat.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Ljxl/write/biff/DateFormatRecord;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method
