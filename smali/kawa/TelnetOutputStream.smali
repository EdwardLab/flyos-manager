.class public Lkawa/TelnetOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TelnetOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 20
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    :cond_0
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkawa/TelnetOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 35
    aget-byte v1, p1, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 38
    iget-object v1, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    move v0, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeCommand(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final writeCommand(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 58
    iget-object p1, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final writeDo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfd

    .line 63
    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    return-void
.end method

.method public final writeDont(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfe

    .line 68
    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    return-void
.end method

.method public final writeSubCommand(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfa

    .line 84
    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 85
    invoke-virtual {p0, p2}, Lkawa/TelnetOutputStream;->write([B)V

    const/16 p1, 0xf0

    .line 86
    invoke-virtual {p0, p1}, Lkawa/TelnetOutputStream;->writeCommand(I)V

    return-void
.end method

.method public final writeWill(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfb

    .line 73
    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    return-void
.end method

.method public final writeWont(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfc

    .line 78
    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    return-void
.end method
