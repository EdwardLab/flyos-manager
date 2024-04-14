.class public Lgnu/kawa/lispexpr/ReaderTypespec;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderTypespec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 23
    iget p3, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 24
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 25
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    .line 27
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 30
    instance-of v2, v0, Lgnu/mapping/InPort;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 32
    move-object v4, v0

    check-cast v4, Lgnu/mapping/InPort;

    iget-char v5, v4, Lgnu/mapping/InPort;->readState:C

    int-to-char v6, p2

    .line 33
    iput-char v6, v4, Lgnu/mapping/InPort;->readState:C

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 44
    :goto_1
    :try_start_0
    iget v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, v0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v6, v7, :cond_1

    const/16 v6, 0xa

    if-eq p2, v6, :cond_1

    .line 45
    iget-object p2, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char p2, p2, v6

    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result p2

    :goto_2
    const/16 v6, 0x5c

    if-ne p2, v6, :cond_3

    .line 50
    instance-of p2, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz p2, :cond_2

    .line 51
    move-object p2, p1

    check-cast p2, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {p2}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p2

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result p2

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    const/16 v6, 0x5b

    if-ne p2, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    const/16 v6, 0x5d

    if-ne p2, v6, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v1, p2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 63
    :goto_3
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_1

    .line 68
    :cond_6
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->unread(I)V

    .line 73
    new-instance p2, Ljava/lang/String;

    iget-object v1, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v3, p3

    invoke-direct {p2, v1, p3, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iput p3, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v2, :cond_7

    .line 80
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v5, v0, Lgnu/mapping/InPort;->readState:C

    :cond_7
    return-object p2

    :catchall_0
    move-exception p2

    .line 78
    iput p3, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v2, :cond_8

    .line 80
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v5, v0, Lgnu/mapping/InPort;->readState:C

    :cond_8
    throw p2
.end method
