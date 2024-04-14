.class public Lgnu/mapping/TtyInPort;
.super Lgnu/mapping/InPort;
.source "TtyInPort.java"


# instance fields
.field protected promptEmitted:Z

.field protected prompter:Lgnu/mapping/Procedure;

.field protected tie:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 32
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 39
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {p1}, Lgnu/mapping/OutPort;->flush()V

    .line 56
    iget-object p1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {p1}, Lgnu/mapping/OutPort;->clearBuffer()V

    return-void
.end method

.method public fill(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v2, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result p1

    .line 47
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 48
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v2, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/OutPort;->echo([CII)V

    :cond_0
    return p1
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public lineStart(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 63
    iget-object p1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->freshLine()V

    .line 65
    :cond_0
    iget-object p1, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    if-eqz p1, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {p1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lgnu/mapping/TtyInPort;->emitPrompt(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 81
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when evaluating prompt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 91
    :cond_0
    invoke-super {p0}, Lgnu/mapping/InPort;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 94
    iget-boolean v2, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v3}, Lgnu/mapping/OutPort;->println()V

    .line 97
    :cond_2
    iput-boolean v1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    return v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/InPort;->read([CII)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_2

    .line 106
    iget-boolean p3, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    .line 107
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->println()V

    .line 108
    :cond_2
    iput-boolean p2, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    return p1
.end method

.method public setPrompter(Lgnu/mapping/Procedure;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    return-void
.end method
