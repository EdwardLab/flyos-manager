.class public Lkawa/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final ECHO:I = 0x1

.field static final EOF:I = 0xec

.field static final IAC:I = 0xff

.field static final IP:I = 0xf4

.field static final LINEMODE:I = 0x22

.field static final NAWS:I = 0x1f

.field static final NOP:I = 0xf1

.field static final OPTION_NO:I = 0x0

.field static final OPTION_WANTNO:I = 0x1

.field static final OPTION_WANTNO_OPPOSITE:I = 0x2

.field static final OPTION_WANTYES:I = 0x3

.field static final OPTION_WANTYES_OPPOSITE:I = 0x4

.field static final OPTION_YES:I = 0x5

.field static final SB:I = 0xfa

.field static final SE:I = 0xf0

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field static final TM:I = 0x6

.field static final TTYPE:I = 0x18

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc


# instance fields
.field in:Lkawa/TelnetInputStream;

.field isServer:Z

.field final optionsState:[B

.field out:Lkawa/TelnetOutputStream;

.field final preferredLineMode:B

.field sin:Ljava/io/InputStream;

.field sout:Ljava/io/OutputStream;

.field public terminalType:[B

.field public windowHeight:S

.field public windowWidth:S


# direct methods
.method public constructor <init>(Ljava/net/Socket;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 74
    iput-byte v0, p0, Lkawa/Telnet;->preferredLineMode:B

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 99
    iput-object v0, p0, Lkawa/Telnet;->optionsState:[B

    .line 412
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    .line 413
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    .line 414
    new-instance p1, Lkawa/TelnetOutputStream;

    iget-object v0, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    invoke-direct {p1, v0}, Lkawa/TelnetOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    .line 415
    new-instance p1, Lkawa/TelnetInputStream;

    iget-object v0, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    invoke-direct {p1, v0, p0}, Lkawa/TelnetInputStream;-><init>(Ljava/io/InputStream;Lkawa/Telnet;)V

    iput-object p1, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    .line 416
    iput-boolean p2, p0, Lkawa/Telnet;->isServer:Z

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 367
    array-length v0, p0

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lkawa/Telnet;->usage()V

    :cond_0
    const/4 v0, 0x0

    .line 369
    aget-object v1, p0, v0

    const/16 v2, 0x17

    .line 371
    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 373
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 377
    :cond_1
    :try_start_0
    new-instance p0, Ljava/net/Socket;

    invoke-direct {p0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 378
    new-instance v1, Lkawa/Telnet;

    invoke-direct {v1, p0, v0}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 379
    invoke-virtual {v1}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object p0

    .line 380
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 388
    :goto_0
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_2

    .line 401
    invoke-virtual {v2}, Ljava/lang/Thread;->stop()V

    goto :goto_1

    :cond_2
    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 392
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_4

    const/16 v5, 0x3ff

    if-le v3, v5, :cond_3

    const/16 v3, 0x3ff

    .line 397
    :cond_3
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :cond_4
    add-int/2addr v3, v4

    .line 399
    invoke-virtual {p0, v1, v0, v3}, Lkawa/TelnetOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 405
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static usage()V
    .locals 2

    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:  [java] kawa.Telnet HOST [PORT#]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 362
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method change(II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    return v0

    .line 137
    :cond_0
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v1, :cond_1

    const/16 v2, 0x1f

    if-ne p2, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xfb

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_2

    const/16 v3, 0x22

    if-ne p2, v3, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 141
    fill-array-data p1, :array_0

    .line 146
    :try_start_0
    iget-object p2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {p2, v3, p1}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-ne p1, v2, :cond_3

    const/16 v4, 0x18

    if-ne p2, v4, :cond_3

    new-array p1, v0, [B

    aput-byte v0, p1, v3

    .line 160
    :try_start_1
    iget-object v1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v1, p2, p1}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v0

    :cond_3
    if-nez v1, :cond_5

    if-ne p2, v0, :cond_5

    const/16 p2, 0xfd

    if-ne p1, p2, :cond_4

    return v3

    :cond_4
    if-ne p1, v2, :cond_5

    return v0

    :cond_5
    return v3

    :array_0
    .array-data 1
        0x1t
        0x3t
    .end array-data
.end method

.method public getInputStream()Lkawa/TelnetInputStream;
    .locals 1

    .line 84
    iget-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    return-object v0
.end method

.method public getOutputStream()Lkawa/TelnetOutputStream;
    .locals 1

    .line 89
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    return-object v0
.end method

.method handle(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xfd

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 229
    :goto_1
    iget-object v5, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v5, v5, p2

    if-eqz v3, :cond_2

    shr-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    :cond_2
    shr-int/lit8 v6, v5, 0x3

    and-int/lit8 v6, v6, 0x7

    const/16 v7, 0xfb

    const/16 v8, 0xfe

    const/16 v9, 0xfc

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-eqz v6, :cond_c

    if-eq v6, v1, :cond_b

    const/4 v12, 0x2

    if-eq v6, v12, :cond_9

    if-eq v6, v11, :cond_8

    const/4 v0, 0x4

    if-eq v6, v0, :cond_6

    if-eq v6, v10, :cond_3

    goto :goto_9

    :cond_3
    if-eqz v4, :cond_4

    return-void

    .line 240
    :cond_4
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    .line 241
    iget-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0xfc

    :goto_2
    invoke-virtual {p1, v8, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_6

    :cond_6
    if-eqz v4, :cond_b

    .line 282
    iget-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v8, 0xfc

    :goto_3
    invoke-virtual {p1, v8, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_a

    :cond_8
    if-eqz v4, :cond_b

    .line 273
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    :goto_4
    const/4 v1, 0x5

    goto :goto_a

    .line 266
    :cond_9
    iget-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const/16 v0, 0xfb

    :goto_5
    invoke-virtual {p1, v0, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    const/4 v1, 0x3

    goto :goto_a

    :cond_b
    :goto_6
    const/4 v1, 0x0

    goto :goto_a

    :cond_c
    if-nez v4, :cond_d

    return-void

    .line 246
    :cond_d
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 249
    iget-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    const/16 v0, 0xfb

    :goto_7
    invoke-virtual {p1, v0, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_4

    .line 253
    :cond_f
    iget-object p1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    const/16 v8, 0xfc

    :goto_8
    invoke-virtual {p1, v8, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    :goto_9
    move v1, v5

    :goto_a
    if-eqz v3, :cond_11

    .line 291
    iget-object p1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xc7

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr p1, v0

    goto :goto_b

    .line 293
    :cond_11
    iget-object p1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xf8

    or-int/2addr p1, v1

    :goto_b
    int-to-byte p1, p1

    .line 294
    iget-object v0, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte p1, v0, p2

    return-void
.end method

.method public request(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xfd

    if-lt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 309
    :cond_1
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    if-eqz v2, :cond_2

    shr-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    :cond_2
    and-int/lit8 v4, v3, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_8

    if-eq v4, v1, :cond_7

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_9

    .line 327
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v0, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_4

    :cond_4
    if-nez v0, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    if-eqz v0, :cond_a

    :goto_2
    const/4 v1, 0x3

    goto :goto_4

    :cond_6
    if-nez v0, :cond_9

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 319
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v0, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    :cond_9
    :goto_3
    move v1, v3

    :cond_a
    :goto_4
    if-eqz v2, :cond_b

    .line 353
    iget-object p1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xc7

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr p1, v0

    goto :goto_5

    .line 355
    :cond_b
    iget-object p1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xf8

    or-int/2addr p1, v1

    :goto_5
    int-to-byte p1, p1

    .line 356
    iget-object v0, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte p1, v0, p2

    return-void
.end method

.method public run()V
    .locals 6

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 427
    :goto_0
    invoke-virtual {v0}, Lkawa/TelnetInputStream;->read()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 431
    invoke-virtual {v0}, Lkawa/TelnetInputStream;->available()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_2

    const/16 v5, 0x3ff

    if-le v2, v5, :cond_1

    const/16 v2, 0x3ff

    .line 436
    :cond_1
    invoke-virtual {v0, v1, v4, v2}, Lkawa/TelnetInputStream;->read([BII)I

    move-result v2

    .line 438
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    add-int/2addr v2, v4

    invoke-virtual {v5, v1, v3, v2}, Ljava/io/PrintStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 443
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 444
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method

.method public subCommand([BII)V
    .locals 5

    .line 182
    aget-byte p2, p1, p2

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    const/16 v0, 0x1f

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p2, v0, :cond_2

    const/16 v0, 0x22

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBCommand LINEMODE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " len:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    aget-byte p2, p1, v1

    if-ne p2, v3, :cond_3

    :goto_0
    add-int/lit8 p2, v2, 0x2

    if-ge p2, p3, :cond_1

    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p1, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    .line 188
    aget-byte p2, p1, v1

    shl-int/lit8 p2, p2, 0x8

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, p3

    int-to-short p2, p2

    iput-short p2, p0, Lkawa/Telnet;->windowWidth:S

    .line 189
    aget-byte p2, p1, v3

    shl-int/lit8 p2, p2, 0x8

    const/4 p3, 0x4

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    int-to-short p1, p2

    iput-short p1, p0, Lkawa/Telnet;->windowHeight:S

    :cond_3
    :goto_1
    return-void

    :cond_4
    sub-int/2addr p3, v1

    .line 198
    new-array p2, p3, [B

    const/4 v0, 0x0

    .line 199
    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object p2, p0, Lkawa/Telnet;->terminalType:[B

    .line 201
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "terminal type: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
