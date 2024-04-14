.class public Lgnu/text/Lexer;
.super Ljava/io/Reader;
.source "Lexer.java"


# instance fields
.field protected interactive:Z

.field messages:Lgnu/text/SourceMessages;

.field protected nesting:I

.field protected port:Lgnu/text/LineBufferedReader;

.field private saveTokenBufferLength:I

.field public tokenBuffer:[C

.field public tokenBufferLength:I


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 317
    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v0, -0x1

    .line 348
    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 19
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 317
    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v0, -0x1

    .line 348
    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 24
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 25
    iput-object p2, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public static readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J
    .locals 14

    int-to-long v0, p1

    const-wide v2, 0x7fffffffffffffffL

    .line 286
    div-long/2addr v2, v0

    .line 287
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 288
    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    const-wide/16 v6, 0x0

    if-lt v4, v5, :cond_0

    return-wide v6

    :cond_0
    const/4 v5, 0x0

    move-wide v8, v6

    .line 292
    :cond_1
    iget-object v10, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v10, v10, v4

    .line 293
    invoke-static {v10, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x1

    cmp-long v12, v8, v2

    if-lez v12, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    mul-long v8, v8, v0

    int-to-long v12, v10

    add-long/2addr v8, v12

    :goto_0
    cmp-long v10, v8, v6

    if-gez v10, :cond_4

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 302
    iget v10, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v10, :cond_1

    .line 305
    :goto_1
    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-eqz v5, :cond_5

    const-wide/16 v8, -0x1

    :cond_5
    return-wide v8
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkNext(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ltz v0, :cond_1

    .line 125
    iget-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public clearErrors()V
    .locals 1

    .line 154
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->clearErrors()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->close()V

    return-void
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    return-void
.end method

.method public eofError(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x66

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 192
    new-instance p1, Lgnu/text/SyntaxException;

    iget-object p2, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {p1, p2}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1
.end method

.method public error(CLjava/lang/String;)V
    .locals 9

    .line 166
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 167
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    .line 168
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v3, p0

    move v4, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 159
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 161
    :cond_0
    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x65

    .line 174
    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x66

    .line 179
    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 180
    new-instance p1, Lgnu/text/SyntaxException;

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {p1, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1
.end method

.method public getColumnNumber()I
    .locals 1

    .line 311
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 1

    .line 149
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrors()Lgnu/text/SourceError;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 310
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .line 136
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()Lgnu/text/LineBufferedReader;
    .locals 1

    .line 55
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    return-object v0
.end method

.method public isInteractive()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lgnu/text/Lexer;->interactive:Z

    return v0
.end method

.method public mark()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-gez v0, :cond_0

    .line 356
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 357
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: recursive call to mark not allowed"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    return v0
.end method

.method public popNesting(C)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 49
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 50
    iget p1, p0, Lgnu/text/Lexer;->nesting:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgnu/text/Lexer;->nesting:I

    return-void
.end method

.method public pushNesting(C)C
    .locals 2

    .line 36
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/Lexer;->nesting:I

    .line 37
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 38
    iget-char v1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 39
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/LineBufferedReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public readDelimited(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 255
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v4

    if-gez v4, :cond_0

    return v0

    :cond_0
    if-ne v4, v3, :cond_3

    .line 260
    iget v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v5, v1

    if-ltz v5, :cond_3

    move v6, v1

    :cond_1
    if-nez v6, :cond_2

    .line 268
    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    return v2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 273
    iget-object v7, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int v8, v5, v6

    aget-char v7, v7, v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_3
    int-to-char v4, v4

    .line 275
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_0
.end method

.method public readOptionalExponent()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v3

    move v9, v3

    move v3, v0

    move v0, v9

    :goto_1
    const/4 v4, 0x1

    if-ltz v0, :cond_5

    int-to-char v5, v0

    const/16 v6, 0xa

    .line 214
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_3

    :cond_2
    const v7, 0xccccccb

    .line 225
    :goto_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    int-to-char v8, v0

    .line 226
    invoke-static {v8, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-gez v8, :cond_3

    move v4, v5

    goto :goto_4

    :cond_3
    if-le v5, v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    const-string v5, "exponent sign not followed by digit"

    .line 217
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    :cond_6
    :goto_4
    if-ltz v0, :cond_7

    .line 235
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    :cond_7
    if-ne v3, v2, :cond_8

    neg-int v4, v4

    :cond_8
    if-eqz v1, :cond_a

    if-ne v3, v2, :cond_9

    const/high16 v0, -0x80000000

    goto :goto_5

    :cond_9
    const v0, 0x7fffffff

    :goto_5
    return v0

    :cond_a
    return v4
.end method

.method public readUnicodeChar()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    const v1, 0xd800

    if-lt v0, v1, :cond_0

    const v2, 0xdbff

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_0

    const v4, 0xdfff

    if-gt v2, v4, :cond_0

    sub-int v1, v0, v1

    shl-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v3

    add-int/2addr v1, v0

    const/high16 v0, 0x10000

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-ltz v0, :cond_0

    .line 366
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->reset()V

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: reset called without prior mark"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seenErrors()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInteractive(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lgnu/text/Lexer;->interactive:Z

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public skip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip()V

    return-void
.end method

.method protected skip_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    return-void
.end method

.method public tokenBufferAppend(I)V
    .locals 4

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    .line 327
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    and-int/lit16 p1, p1, 0x3ff

    const v0, 0xdc00

    add-int/2addr p1, v0

    .line 331
    :cond_0
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 332
    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 333
    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 335
    new-array v2, v2, [C

    iput-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v3, 0x0

    .line 336
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    :cond_1
    int-to-char p1, p1

    .line 339
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 340
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    return-void
.end method

.method public tokenBufferString()Ljava/lang/String;
    .locals 4

    .line 345
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected unread()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread()V

    return-void
.end method

.method public unread(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 89
    iget-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->unread()V

    :cond_0
    return-void
.end method

.method protected unread_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    return-void
.end method
