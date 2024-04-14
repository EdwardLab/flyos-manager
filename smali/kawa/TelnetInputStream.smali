.class public Lkawa/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# static fields
.field static final SB_IAC:I = 0x190


# instance fields
.field protected buf:[B

.field connection:Lkawa/Telnet;

.field count:I

.field pos:I

.field state:I

.field subCommandLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkawa/Telnet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lkawa/TelnetInputStream;->state:I

    .line 30
    iput p1, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    const/16 p1, 0x200

    new-array p1, p1, [B

    .line 18
    iput-object p1, p0, Lkawa/TelnetInputStream;->buf:[B

    .line 19
    iput-object p2, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :goto_0
    iget v0, p0, Lkawa/TelnetInputStream;->pos:I

    iget v1, p0, Lkawa/TelnetInputStream;->count:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 40
    iget-object v0, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 43
    :cond_0
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v3, v1

    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1

    .line 45
    array-length v0, v1

    sub-int/2addr v0, v4

    .line 47
    :cond_1
    :goto_1
    iget-object v1, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    iget v1, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    iput v1, p0, Lkawa/TelnetInputStream;->pos:I

    .line 49
    iput v0, p0, Lkawa/TelnetInputStream;->count:I

    if-gtz v0, :cond_2

    return v2

    .line 53
    :cond_2
    iget-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v1, v0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 54
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v4, :cond_4

    if-eq v1, v3, :cond_3

    return v1

    .line 58
    :cond_3
    iput v3, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_0

    :cond_4
    const/16 v5, 0xfe

    const/16 v6, 0xfd

    const/16 v7, 0xfc

    const/16 v8, 0xfb

    const/16 v9, 0xfa

    const/4 v10, 0x0

    if-ne v4, v3, :cond_a

    if-ne v1, v3, :cond_5

    .line 65
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    return v3

    :cond_5
    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_9

    if-ne v1, v9, :cond_6

    goto :goto_2

    :cond_6
    const/16 v0, 0xf4

    if-ne v1, v0, :cond_7

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Interrupt Process"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_0

    :cond_7
    const/16 v0, 0xec

    if-ne v1, v0, :cond_8

    return v2

    .line 87
    :cond_8
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_0

    .line 74
    :cond_9
    :goto_2
    iput v1, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_0

    :cond_a
    if-eq v4, v8, :cond_11

    if-eq v4, v7, :cond_11

    if-eq v4, v6, :cond_11

    if-ne v4, v5, :cond_b

    goto :goto_3

    :cond_b
    const/16 v2, 0x190

    if-ne v4, v9, :cond_d

    if-ne v1, v3, :cond_c

    .line 99
    iput v2, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_0

    .line 101
    :cond_c
    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto/16 :goto_0

    :cond_d
    if-ne v4, v2, :cond_10

    if-ne v1, v3, :cond_e

    .line 107
    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 108
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xf0

    if-ne v1, v2, :cond_f

    .line 112
    iget-object v1, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v1, v0, v10, v2}, Lkawa/Telnet;->subCommand([BII)V

    .line 113
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 114
    iput v10, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_0

    .line 118
    :cond_f
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 119
    iput v10, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_0

    .line 123
    :cond_10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_11
    :goto_3
    iget-object v0, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    invoke-virtual {v0, v4, v1}, Lkawa/Telnet;->handle(II)V

    .line 94
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 132
    :cond_0
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_1

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-lt v1, v2, :cond_3

    .line 134
    :cond_1
    invoke-virtual {p0}, Lkawa/TelnetInputStream;->read()I

    move-result v0

    if-gez v0, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    int-to-byte v0, v0

    .line 137
    aput-byte v0, p1, p2

    const/4 v0, 0x1

    move p2, v1

    .line 140
    :cond_3
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_5

    .line 142
    :goto_0
    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-ge v1, v2, :cond_5

    if-ge v0, p3, :cond_5

    .line 144
    iget-object v2, p0, Lkawa/TelnetInputStream;->buf:[B

    aget-byte v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p2, 0x1

    .line 147
    aput-byte v2, p1, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 149
    iput v1, p0, Lkawa/TelnetInputStream;->pos:I

    move p2, v3

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method
