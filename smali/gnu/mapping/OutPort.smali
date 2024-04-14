.class public Lgnu/mapping/OutPort;
.super Lgnu/lists/PrintConsumer;
.source "OutPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static errInitial:Lgnu/mapping/OutPort;

.field public static final errLocation:Lgnu/mapping/ThreadLocation;

.field static logFile:Ljava/io/Writer;

.field static outInitial:Lgnu/mapping/OutPort;

.field public static final outLocation:Lgnu/mapping/ThreadLocation;


# instance fields
.field private base:Ljava/io/Writer;

.field protected bout:Lgnu/text/PrettyWriter;

.field numberFormat:Ljava/text/NumberFormat;

.field public objectFormat:Lgnu/lists/AbstractFormat;

.field path:Lgnu/text/Path;

.field public printReadable:Z

.field protected unregisterRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 91
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stdout"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    .line 93
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stderr"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    .line 95
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    .line 97
    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "err-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    .line 100
    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 1

    .line 36
    iget-object v0, p1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 1

    .line 66
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 71
    instance-of v0, p1, Lgnu/mapping/OutPort;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, v1}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lgnu/text/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 80
    iput-object p2, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p2, p3}, Lgnu/lists/PrintConsumer;-><init>(Ljava/io/Writer;Z)V

    .line 28
    iput-object p2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    .line 29
    iput-object p1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .line 30
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->closeOnExit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    sget-object p1, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {p1, p2}, Lgnu/text/WriterManager;->register(Ljava/io/Writer;)Lgnu/text/WriterRef;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Z)V
    .locals 2

    .line 41
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/text/PrettyWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZLgnu/text/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 86
    iput-object p3, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 1

    .line 49
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZLgnu/text/Path;)V
    .locals 1

    .line 55
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 56
    iput-object p4, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    return-void
.end method

.method public static closeLogFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 153
    sput-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 155
    :cond_0
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v2, v0, Lgnu/mapping/LogWriter;

    if-eqz v2, :cond_1

    .line 156
    check-cast v0, Lgnu/mapping/LogWriter;

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 157
    :cond_1
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v2, v0, Lgnu/mapping/LogWriter;

    if-eqz v2, :cond_2

    .line 158
    check-cast v0, Lgnu/mapping/LogWriter;

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    :cond_2
    return-void
.end method

.method public static errDefault()Lgnu/mapping/OutPort;
    .locals 1

    .line 113
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method protected static final isWordChar(C)Z
    .locals 1

    .line 188
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/OutPort;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    const-string v1, "port-char-encoding"

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_2

    .line 129
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    const-string v0, "8859_1"

    .line 135
    :cond_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    :goto_1
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, v1, p0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/Path;)V

    return-object v0
.end method

.method public static outDefault()Lgnu/mapping/OutPort;
    .locals 1

    .line 103
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method public static runCleanups()V
    .locals 1

    .line 383
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->run()V

    return-void
.end method

.method public static setErrDefault(Lgnu/mapping/OutPort;)V
    .locals 1

    .line 118
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setLogFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lgnu/mapping/OutPort;->closeLogFile()V

    .line 165
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 166
    sget-object p0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object p0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, p0, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_1

    .line 167
    check-cast p0, Lgnu/mapping/LogWriter;

    invoke-virtual {p0, v0}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 168
    :cond_1
    sget-object p0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object p0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, p0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_2

    .line 169
    check-cast p0, Lgnu/mapping/LogWriter;

    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    :cond_2
    return-void
.end method

.method public static setOutDefault(Lgnu/mapping/OutPort;)V
    .locals 1

    .line 108
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    .line 340
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearBuffer()V

    return-void
.end method

.method public close()V
    .locals 3

    .line 362
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v0, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-ne v1, v2, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    .line 371
    :goto_0
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v1, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected closeOnExit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public closeThis()V
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v0, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-eq v0, v1, :cond_1

    .line 349
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->closeThis()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    .line 355
    :cond_1
    :goto_0
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v1, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public echo([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v0, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Lgnu/mapping/LogWriter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/LogWriter;->echo([CII)V

    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .line 300
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endAttribute(Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 303
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 1

    .line 277
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endElement(Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 280
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    :goto_0
    return-void
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public freshLine()V
    .locals 1

    .line 323
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->println()V

    :cond_0
    return-void
.end method

.method public getColumnNumber()I
    .locals 1

    .line 330
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public print(D)V
    .locals 1

    .line 216
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(D)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(F)V
    .locals 3

    .line 224
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(F)V

    goto :goto_0

    :cond_0
    float-to-double v1, p1

    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(I)V

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 1

    .line 208
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(J)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<output-port"

    .line 255
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 258
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 259
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3e

    .line 261
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    goto :goto_0

    .line 247
    :cond_0
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_1

    .line 248
    check-cast p1, Lgnu/lists/Consumable;

    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "null"

    .line 250
    :cond_2
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "(null)"

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(Z)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    :goto_0
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->setColumnNumber(I)V

    return-void
.end method

.method public setIndentation(IZ)V
    .locals 1

    .line 438
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 291
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 292
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const-string p1, ": "

    .line 293
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    .line 270
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 271
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 395
    iget-object p2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p3, p1

    :goto_0
    invoke-virtual {p2, p3, v1}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public writeBreak(I)V
    .locals 1

    .line 406
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->writeBreak(I)V

    return-void
.end method

.method public writeBreakFill()V
    .locals 1

    const/16 v0, 0x46

    .line 433
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    return-void
.end method

.method public writeBreakLinear()V
    .locals 1

    const/16 v0, 0x4e

    .line 421
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    return-void
.end method

.method public writeSpaceFill()V
    .locals 1

    const/16 v0, 0x20

    .line 427
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    const/16 v0, 0x46

    .line 428
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    return-void
.end method

.method public writeSpaceLinear()V
    .locals 1

    const/16 v0, 0x20

    .line 411
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    const/16 v0, 0x4e

    .line 412
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    return-void
.end method

.method public writeWordEnd()V
    .locals 1

    .line 309
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordEnd()V

    return-void
.end method

.method public writeWordStart()V
    .locals 1

    .line 318
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordStart()V

    return-void
.end method
