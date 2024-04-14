.class public Lgnu/text/LineInputStreamReader;
.super Lgnu/text/LineBufferedReader;
.source "LineInputStreamReader.java"


# instance fields
.field barr:[B

.field bbuf:Ljava/nio/ByteBuffer;

.field carr:[C

.field cbuf:Ljava/nio/CharBuffer;

.field cset:Ljava/nio/charset/Charset;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field istrm:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 62
    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    invoke-direct {p0, v0}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 23
    iput-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    .line 26
    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 64
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    return-void
.end method

.method private fillBytes(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v2, v1

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 83
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 76
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public fill(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 126
    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->carr:[C

    if-eq v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 130
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->carr:[C

    .line 132
    :cond_1
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    iget v1, p0, Lgnu/text/LineInputStreamReader;->pos:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    iget-object p1, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    iget v0, p0, Lgnu/text/LineInputStreamReader;->pos:I

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 138
    :cond_2
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget v2, p0, Lgnu/text/LineInputStreamReader;->pos:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_5

    .line 140
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    .line 145
    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 147
    :cond_4
    invoke-direct {p0, v0}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v0

    if-gez v0, :cond_2

    const/4 p1, 0x1

    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    const/4 v1, -0x1

    :cond_6
    return v1
.end method

.method public getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public markStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lgnu/text/LineInputStreamReader;->pos:I

    iget v1, p0, Lgnu/text/LineInputStreamReader;->limit:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resetStart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match previous "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    .line 34
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method
