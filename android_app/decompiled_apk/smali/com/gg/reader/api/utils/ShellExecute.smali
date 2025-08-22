.class public Lcom/gg/reader/api/utils/ShellExecute;
.super Ljava/lang/Object;
.source "ShellExecute.java"


# static fields
.field private static instance:Lcom/gg/reader/api/utils/ShellExecute;


# instance fields
.field dis:Ljava/io/DataInputStream;

.field exeEcho:Ljava/lang/Process;

.field os:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;

    return-void
.end method

.method private disposeCmdExe()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 57
    iput-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 61
    iput-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 65
    iput-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/gg/reader/api/utils/ShellExecute;
    .locals 1

    .line 22
    sget-object v0, Lcom/gg/reader/api/utils/ShellExecute;->instance:Lcom/gg/reader/api/utils/ShellExecute;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/gg/reader/api/utils/ShellExecute;

    invoke-direct {v0}, Lcom/gg/reader/api/utils/ShellExecute;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/ShellExecute;->instance:Lcom/gg/reader/api/utils/ShellExecute;

    .line 25
    :cond_0
    sget-object v0, Lcom/gg/reader/api/utils/ShellExecute;->instance:Lcom/gg/reader/api/utils/ShellExecute;

    return-object v0
.end method

.method private initCmdExe()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    .line 40
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    .line 41
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public exeCmd(Ljava/lang/String;)I
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/gg/reader/api/utils/ShellExecute;->initCmdExe()V

    const/4 v0, -0x1

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 85
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    const-string v1, "exit\n"

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 87
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 88
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/gg/reader/api/utils/ShellExecute;->disposeCmdExe()V

    return v0
.end method

.method public exeCmdRt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 105
    invoke-direct {p0}, Lcom/gg/reader/api/utils/ShellExecute;->initCmdExe()V

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    const-string v1, "exit\n"

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->dis:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/utils/ShellExecute;->exeEcho:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/gg/reader/api/utils/ShellExecute;->disposeCmdExe()V

    return-object v0
.end method
