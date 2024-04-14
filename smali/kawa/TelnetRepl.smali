.class public Lkawa/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "TelnetRepl.java"


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 15
    iput-object p1, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    .line 16
    iput-object p2, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 47
    invoke-virtual {v0}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    .line 49
    new-instance v2, Lgnu/mapping/OutPort;

    const-string v3, "/dev/stdout"

    invoke-static {v3}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 50
    new-instance v1, Lgnu/mapping/TtyInPort;

    const-string v3, "/dev/stdin"

    invoke-static {v3}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 58
    new-instance v0, Lgnu/mapping/Future;

    new-instance v3, Lkawa/TelnetRepl;

    invoke-direct {v3, p0, p1}, Lkawa/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    invoke-direct {v0, v3, v1, v2, v2}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 24
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    :catch_1
    throw v0
.end method
