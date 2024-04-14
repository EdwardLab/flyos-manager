.class public Lgnu/kawa/xml/HttpPrinter;
.super Lgnu/lists/FilterConsumer;
.source "HttpPrinter.java"


# instance fields
.field currentHeader:Ljava/lang/Object;

.field private elementNesting:I

.field headers:Ljava/util/Vector;

.field protected ostream:Ljava/io/OutputStream;

.field protected sawContentType:Ljava/lang/String;

.field sbuf:Ljava/lang/StringBuilder;

.field private seenStartDocument:I

.field seenXmlHeader:Z

.field writer:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Lgnu/mapping/OutPort;)V
    .locals 2

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 42
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 36
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    return-void
.end method

.method public static make(Lgnu/mapping/OutPort;)Lgnu/kawa/xml/HttpPrinter;
    .locals 1

    .line 47
    new-instance v0, Lgnu/kawa/xml/HttpPrinter;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/HttpPrinter;-><init>(Lgnu/mapping/OutPort;)V

    return-object v0
.end method

.method private writeRaw(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 59
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-type"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected beforeNode()V
    .locals 2

    .line 65
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Content-type"

    const-string v1, "text/xml"

    .line 66
    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    return-void
.end method

.method public beginData()V
    .locals 4

    .line 121
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_6

    .line 123
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    const-string v1, "text/plain"

    if-nez v0, :cond_0

    const-string v0, "Content-type"

    .line 124
    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lgnu/mapping/OutPort;

    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    :cond_1
    const/4 v0, 0x0

    .line 128
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    const-string v3, "text/html"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "html"

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "xhtml"

    goto :goto_0

    .line 132
    :cond_3
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "plain"

    .line 134
    :cond_4
    :goto_0
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-static {v1, v0}, Lgnu/xml/XMLPrinter;->make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 135
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-nez v0, :cond_5

    .line 137
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 142
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->printHeaders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_6
    :goto_1
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    .line 154
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public endAttribute()V
    .locals 2

    .line 107
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 3

    .line 224
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Content-type"

    const-string v1, "text/plain"

    .line 229
    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 232
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {v1, v0}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 240
    :cond_3
    :goto_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    .line 242
    :cond_4
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 243
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public endElement()V
    .locals 2

    .line 178
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 179
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    if-nez v0, :cond_0

    .line 180
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->endDocument()V

    :cond_0
    return-void
.end method

.method public printHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    const-string p1, ": "

    .line 74
    invoke-direct {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p2}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 76
    invoke-direct {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public printHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->printHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    .line 86
    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public reset(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 259
    iput-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 261
    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 263
    :cond_0
    iget-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iput-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 266
    iget-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 269
    :cond_1
    iput-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    move v2, v0

    :cond_2
    return v2
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 217
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    :cond_0
    const/4 v0, 0x2

    .line 219
    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 162
    iget-boolean v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenXmlHeader:Z

    if-nez v0, :cond_0

    const-string v0, "text/html"

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/xhtml"

    goto :goto_0

    :cond_1
    const-string v0, "text/xml"

    :goto_0
    const-string v1, "Content-type"

    .line 169
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 172
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 173
    iget p1, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 201
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    :goto_0
    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 209
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :goto_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 186
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-nez v0, :cond_0

    .line 187
    check-cast p1, Lgnu/lists/Consumable;

    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 191
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
