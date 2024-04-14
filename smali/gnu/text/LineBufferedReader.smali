.class public Lgnu/text/LineBufferedReader;
.super Ljava/io/Reader;
.source "LineBufferedReader.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final CONVERT_CR:I = 0x1

.field private static final DONT_KEEP_FULL_LINES:I = 0x8

.field private static final PREV_WAS_CR:I = 0x4

.field private static final USER_BUFFER:I = 0x2


# instance fields
.field public buffer:[C

.field private flags:I

.field highestPos:I

.field protected in:Ljava/io/Reader;

.field public limit:I

.field protected lineNumber:I

.field private lineStartPos:I

.field protected markPos:I

.field path:Lgnu/text/Path;

.field public pos:I

.field protected readAheadLimit:I

.field public readState:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0xa

    .line 48
    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 134
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0xa

    .line 48
    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 139
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    return-void
.end method

.method private clearMark()V
    .locals 4

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 166
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 169
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lt v0, v1, :cond_2

    return-void

    .line 171
    :cond_2
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 172
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_1

    .line 175
    :cond_3
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 176
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_0
.end method

.method static countLines([CII)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    .line 641
    aget-char v2, p0, p1

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v2, v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    if-ne v2, v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private reserve([CI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget v0, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr p2, v0

    .line 212
    array-length v0, p1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 216
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 217
    iget v2, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v2, :cond_3

    iget v3, p0, Lgnu/text/LineBufferedReader;->markPos:I

    if-ge v3, v0, :cond_3

    sub-int v4, v0, v3

    if-gt v4, v2, :cond_2

    .line 219
    iget v2, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    sub-int v2, p2, v3

    array-length v4, p1

    if-le v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 222
    :cond_2
    :goto_0
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 227
    :cond_3
    :goto_1
    array-length v2, p1

    sub-int/2addr p2, v2

    if-gt p2, v0, :cond_4

    .line 228
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v2, :cond_8

    iget v2, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    goto :goto_2

    .line 232
    :cond_4
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gt p2, v2, :cond_5

    if-le v0, v2, :cond_5

    move v0, v2

    goto :goto_2

    .line 234
    :cond_5
    iget v3, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    sub-int p2, v0, p2

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    goto :goto_2

    :cond_6
    if-ltz v2, :cond_7

    move v0, v2

    .line 240
    :cond_7
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    .line 243
    :cond_8
    :goto_2
    iget p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr p2, v0

    iput p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 244
    iget p2, p0, Lgnu/text/LineBufferedReader;->limit:I

    sub-int/2addr p2, v0

    iput p2, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 245
    iget p2, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr p2, v0

    iput p2, p0, Lgnu/text/LineBufferedReader;->markPos:I

    .line 246
    iget p2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr p2, v0

    iput p2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 247
    iget p2, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    sub-int/2addr p2, v0

    iput p2, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 249
    :goto_3
    iget p2, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez p2, :cond_9

    .line 250
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    invoke-static {v2, v0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :cond_9
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

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

    .line 28
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public fill(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1
.end method

.method public getColumnNumber()I
    .locals 6

    .line 433
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-lez v0, :cond_1

    .line 435
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v0, -0x1

    aget-char v4, v4, v5

    if-eq v4, v3, :cond_0

    if-ne v4, v1, :cond_1

    :cond_0
    return v2

    .line 439
    :cond_1
    iget v4, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v4, :cond_2

    .line 440
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v0, v1

    return v0

    .line 444
    :cond_2
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    move v0, v2

    .line 445
    :goto_1
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v2, v4, :cond_6

    .line 447
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    if-eq v2, v3, :cond_4

    if-ne v2, v1, :cond_5

    :cond_4
    move v0, v5

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    sub-int/2addr v4, v0

    .line 452
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v0, :cond_7

    sub-int/2addr v4, v0

    :cond_7
    return v4
.end method

.method public final getConvertCR()Z
    .locals 2

    .line 97
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getLineNumber()I
    .locals 4

    .line 404
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 405
    iget v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-nez v1, :cond_1

    .line 407
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v1, :cond_3

    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v1, v2, :cond_3

    .line 409
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v2, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-static {v1, v2, v3}, Lgnu/text/LineBufferedReader;->countLines([CII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPath()Lgnu/text/Path;
    .locals 1

    .line 382
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    return-object v0
.end method

.method public getReadState()C
    .locals 1

    .line 53
    iget-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    return v0
.end method

.method public incrLineNumber(II)V
    .locals 1

    .line 426
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 427
    iput p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    return-void
.end method

.method public lineStart(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 464
    :try_start_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 466
    :cond_0
    iput p1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 467
    iget p1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput p1, p0, Lgnu/text/LineBufferedReader;->markPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 713
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    .line 716
    aget-char v0, v1, v0

    if-ne v0, v4, :cond_0

    .line 717
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    return v3

    .line 722
    :cond_1
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-ltz v0, :cond_2

    .line 724
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    :cond_2
    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    if-lez v0, :cond_0

    .line 258
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v0, -0x1

    aget-char v4, v4, v5

    goto :goto_0

    .line 259
    :cond_0
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto :goto_0

    .line 261
    :cond_1
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v4, :cond_2

    const/16 v4, 0xa

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v3, :cond_3

    if-ne v4, v2, :cond_a

    .line 267
    :cond_3
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v6, v0, :cond_5

    iget v6, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-eqz v6, :cond_4

    iget v6, p0, Lgnu/text/LineBufferedReader;->markPos:I

    if-gt v0, v6, :cond_5

    .line 269
    :cond_4
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 270
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v6, v5

    iput v6, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 272
    :cond_5
    iget v6, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-ge v0, v6, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-ne v4, v2, :cond_8

    if-gt v0, v5, :cond_7

    .line 273
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x2

    aget-char v0, v6, v0

    if-eq v0, v3, :cond_9

    .line 276
    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Lgnu/text/LineBufferedReader;->lineStart(Z)V

    :cond_9
    if-nez v1, :cond_a

    .line 279
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 282
    :cond_a
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_10

    .line 284
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez v0, :cond_b

    const/16 v0, 0x2000

    new-array v0, v0, [C

    .line 285
    iput-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    goto :goto_2

    .line 286
    :cond_b
    array-length v6, v0

    if-ne v1, v6, :cond_c

    .line 287
    invoke-direct {p0, v0, v5}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    .line 288
    :cond_c
    :goto_2
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v0, :cond_e

    if-ne v4, v3, :cond_d

    .line 291
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_3

    .line 293
    :cond_d
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 295
    :cond_e
    :goto_3
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lgnu/text/LineBufferedReader;->fill(I)I

    move-result v0

    if-gtz v0, :cond_f

    const/4 v0, -0x1

    return v0

    .line 298
    :cond_f
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 301
    :cond_10
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_12

    if-ne v4, v3, :cond_13

    .line 310
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v6, v5

    if-ne v1, v6, :cond_11

    .line 312
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    sub-int/2addr v2, v5

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    sub-int/2addr v1, v5

    .line 313
    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 315
    :cond_11
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 316
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    return v0

    :cond_12
    if-ne v0, v3, :cond_13

    .line 321
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 334
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v2, v1, v0

    goto :goto_0

    .line 335
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v0, :cond_3

    :cond_2
    const/16 v2, 0xa

    :cond_3
    :goto_0
    move v0, p3

    :goto_1
    if-lez v0, :cond_c

    .line 342
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v1, v4, :cond_8

    if-eq v2, v3, :cond_8

    const/16 v5, 0xd

    if-ne v2, v5, :cond_4

    goto :goto_4

    :cond_4
    sub-int v6, v4, v1

    if-ge v0, v6, :cond_5

    add-int v4, v1, v0

    :cond_5
    :goto_2
    if-ge v1, v4, :cond_7

    .line 365
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, v3, :cond_7

    if-ne v2, v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, v2

    .line 370
    aput-char v7, p1, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v6

    goto :goto_2

    .line 373
    :cond_7
    :goto_3
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v4, v1, v4

    sub-int/2addr v0, v4

    .line 374
    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_1

    :cond_8
    :goto_4
    if-lt v1, v4, :cond_9

    if-ge v0, p3, :cond_9

    sub-int/2addr p3, v0

    return p3

    .line 348
    :cond_9
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    if-gez v2, :cond_b

    sub-int/2addr p3, v0

    if-gtz p3, :cond_a

    const/4 p3, -0x1

    :cond_a
    return p3

    :cond_b
    add-int/lit8 v1, p2, 0x1

    int-to-char v4, v2

    .line 354
    aput-char v4, p1, p2

    add-int/lit8 v0, v0, -0x1

    move p2, v1

    goto :goto_1

    :cond_c
    return p3
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 538
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 539
    :cond_2
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v3, v4, :cond_6

    .line 541
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v3, v4, v3

    if-eq v3, v1, :cond_3

    if-ne v3, v2, :cond_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    if-eq v3, v2, :cond_5

    .line 545
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-nez v1, :cond_5

    .line 547
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v1, v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 549
    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_0

    .line 552
    :cond_4
    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v3, v3, v1

    if-ne v3, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 553
    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 555
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int/2addr v5, v0

    invoke-direct {v1, v2, v0, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 558
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x49

    .line 560
    invoke-virtual {p0, v1, v0}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 561
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public readLine(Ljava/lang/StringBuffer;C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    :goto_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 495
    :cond_1
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v1, v2, :cond_9

    .line 497
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v2, v1

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 500
    invoke-virtual {p1, v2, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    if-ne p2, v0, :cond_3

    .line 503
    iget p1, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgnu/text/LineBufferedReader;->pos:I

    return-void

    .line 506
    :cond_3
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v0

    const/16 v2, 0x49

    if-nez v0, :cond_7

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eq p2, v2, :cond_5

    .line 514
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_5
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-ne v0, v5, :cond_6

    if-eq p2, v2, :cond_8

    .line 519
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-ltz v0, :cond_8

    .line 522
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_2

    :cond_7
    :goto_1
    if-eq p2, v2, :cond_8

    .line 509
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_2
    return-void

    .line 527
    :cond_9
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_1

    .line 474
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-le v0, v1, :cond_0

    .line 475
    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 476
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    return-void

    .line 473
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 188
    iget-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-eqz p1, :cond_0

    .line 190
    array-length v1, p1

    new-array v1, v1, [C

    .line 191
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 194
    :cond_0
    iget p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0

    .line 198
    :cond_1
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-gt v1, v2, :cond_2

    .line 200
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 201
    invoke-direct {p0, p1, v0}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    :goto_0
    return-void

    .line 199
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "setBuffer - too short"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setConvertCR(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    iget p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0

    .line 104
    :cond_0
    iget p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    :goto_0
    return-void
.end method

.method public setKeepFullLines(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iget p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0

    .line 93
    :cond_0
    iget p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgnu/text/LineBufferedReader;->flags:I

    :goto_0
    return-void
.end method

.method public setLineNumber(I)V
    .locals 2

    .line 421
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 0

    .line 397
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/text/LineBufferedReader;->setPath(Lgnu/text/Path;)V

    return-void
.end method

.method public setPath(Lgnu/text/Path;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    return-void
.end method

.method public skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_1

    neg-int v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 570
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    return p1

    .line 579
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-lt v0, v1, :cond_3

    :cond_2
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    .line 582
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v2, v1, v0

    goto :goto_1

    .line 583
    :cond_4
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v0, :cond_2

    :cond_5
    move v0, p1

    const/16 v2, 0xa

    :goto_2
    if-lez v0, :cond_c

    if-eq v2, v3, :cond_a

    const/16 v1, 0xd

    if-eq v2, v1, :cond_a

    .line 589
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_6

    goto :goto_5

    :cond_6
    sub-int v6, v5, v4

    if-ge v0, v6, :cond_7

    add-int v5, v4, v0

    :cond_7
    :goto_3
    if-ge v4, v5, :cond_9

    .line 604
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v2, v2, v4

    if-eq v2, v3, :cond_9

    if-ne v2, v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 611
    :cond_9
    :goto_4
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v1, v4, v1

    sub-int/2addr v0, v1

    .line 612
    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_2

    .line 591
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    if-gez v2, :cond_b

    sub-int/2addr p1, v0

    return p1

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_c
    return p1
.end method

.method public skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    return-void
.end method

.method public skipRestOfLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    :cond_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_2

    .line 660
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-ltz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 662
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final skip_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    return-void
.end method

.method public unread()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-eqz v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 676
    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 677
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_5

    :cond_0
    if-lez v0, :cond_1

    if-ne v1, v3, :cond_1

    .line 680
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v1, -0x1

    aget-char v0, v0, v4

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 681
    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 682
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v0, v1, :cond_5

    .line 684
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    :cond_2
    if-lez v0, :cond_4

    .line 688
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_3

    if-ne v1, v3, :cond_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 695
    :cond_4
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    :cond_5
    return-void

    .line 675
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unread too much"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unread_quick()V
    .locals 1

    .line 705
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    return-void
.end method
