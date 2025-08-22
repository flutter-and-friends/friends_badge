.class public Lcom/gg/reader/api/utils/XhPower;
.super Ljava/lang/Object;
.source "XhPower.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPower(Z)V
    .locals 6

    const-string v0, "1"

    :try_start_0
    const-string v1, "/sys/cgp_ctrl/cgp_on"

    const-string v2, "/sys/cgp_ctrl/cgp_switch_vbat"

    const-string v3, "/sys/cgp_ctrl/cgp_uart_switch"

    const-string v4, "/sys/cgp_ctrl/cgp_vbus_5v"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "0"

    if-eqz p0, :cond_0

    .line 14
    :try_start_1
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 17
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 20
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 23
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 30
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 33
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
