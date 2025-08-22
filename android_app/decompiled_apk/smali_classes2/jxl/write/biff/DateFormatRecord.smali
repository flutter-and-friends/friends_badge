.class public Ljxl/write/biff/DateFormatRecord;
.super Ljxl/biff/FormatRecord;
.source "DateFormatRecord.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    const-string v0, "a"

    const-string v1, "AM/PM"

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Ljxl/write/biff/DateFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "S"

    const-string v1, "0"

    .line 42
    invoke-virtual {p0, p1, v0, v1}, Ljxl/write/biff/DateFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljxl/write/biff/DateFormatRecord;->setFormatString(Ljava/lang/String;)V

    return-void
.end method
