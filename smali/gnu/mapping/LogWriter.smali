.class public Lgnu/mapping/LogWriter;
.super Ljava/io/FilterWriter;
.source "LogWriter.java"


# instance fields
.field private log:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    return-void
.end method

.method public closeLogFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    return-void
.end method

.method public echo([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 72
    :cond_0
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    return-void
.end method

.method public final getLogFile()Ljava/io/Writer;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    return-object v0
.end method

.method public setLogFile(Ljava/io/Writer;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write([CII)V

    return-void
.end method
