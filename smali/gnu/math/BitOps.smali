.class public Lgnu/math/BitOps;
.super Ljava/lang/Object;
.source "BitOps.java"


# static fields
.field static final bit4_count:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 489
    fill-array-data v0, :array_0

    sput-object v0, Lgnu/math/BitOps;->bit4_count:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 4

    .line 128
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 129
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    and-int/2addr p0, p1

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 131
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    aget p0, p0, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 132
    :cond_1
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 133
    new-array v2, v1, [I

    .line 134
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v0

    and-int/2addr p1, v3

    aput p1, v2, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 136
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    aget p1, p1, v1

    aput p1, v2, v1

    goto :goto_0

    .line 137
    :cond_2
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, p0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 6

    .line 143
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 144
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 146
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, p0}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 147
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    .line 152
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 153
    :goto_1
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 154
    :goto_2
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    if-ge v2, v3, :cond_4

    .line 155
    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v0, :cond_5

    .line 157
    iget-object p0, p1, Lgnu/math/IntNum;->words:[I

    aget p0, p0, v2

    aput p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    :cond_5
    invoke-static {v1, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static bitCount(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 497
    sget-object v1, Lgnu/math/BitOps;->bit4_count:[B

    and-int/lit8 v2, p0, 0xf

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static bitCount(Lgnu/math/IntNum;)I
    .locals 3

    .line 516
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 520
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v1}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v1

    goto :goto_0

    .line 524
    :cond_0
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 525
    invoke-static {v0, v1}, Lgnu/math/BitOps;->bitCount([II)I

    move-result v0

    move v2, v1

    move v1, v0

    move v0, v2

    .line 527
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_1

    mul-int/lit8 v0, v0, 0x20

    sub-int v1, v0, v1

    :cond_1
    return v1
.end method

.method public static bitCount([II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 507
    aget v1, p0, p1

    invoke-static {v1}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    .line 200
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 201
    invoke-static {v0, p0, p1, p2}, Lgnu/math/BitOps;->setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 202
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 198
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    :cond_2
    return-object p1

    .line 195
    :cond_3
    invoke-static {p1, p2}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 194
    :cond_4
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static bitValue(Lgnu/math/IntNum;I)Z
    .locals 4

    .line 19
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 20
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/16 p0, 0x20

    if-lt p1, p0, :cond_0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    shr-int p0, v0, p1

    and-int/2addr p0, v3

    if-eqz p0, :cond_1

    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    shr-int/lit8 v1, p1, 0x5

    .line 27
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    if-lt v1, v0, :cond_3

    sub-int/2addr v0, v3

    aget p0, p0, v0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_3
    aget p0, p0, v1

    shr-int/2addr p0, p1

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    :goto_1
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method static dataBufferFor(Lgnu/math/IntNum;I)[I
    .locals 5

    .line 37
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x5

    .line 40
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/4 v3, -0x1

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 44
    :cond_0
    new-array p0, p1, [I

    const/4 v2, 0x0

    .line 45
    aput v0, p0, v2

    if-gez v0, :cond_5

    :goto_0
    if-ge v1, p1, :cond_5

    .line 49
    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 55
    :goto_1
    new-array v1, v1, [I

    move v2, v0

    :goto_2
    add-int/2addr v2, v3

    if-ltz v2, :cond_3

    .line 57
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v2

    aput v4, v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 p0, v0, -0x1

    .line 58
    aget p0, v1, p0

    if-gez p0, :cond_4

    :goto_3
    if-ge v0, p1, :cond_4

    .line 61
    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object p0, v1

    :cond_5
    return-object p0
.end method

.method public static extract(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p2, v2, :cond_1

    .line 398
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    iget p0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    aget p0, p0, v1

    :goto_0
    shl-int p2, v0, p2

    not-int p2, p2

    and-int/2addr p0, p2

    shr-int/2addr p0, p1

    .line 399
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 402
    :cond_1
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    const/4 v4, 0x1

    const/16 v5, 0x1f

    if-nez v3, :cond_4

    .line 404
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    if-ltz v3, :cond_3

    if-lt p1, v5, :cond_2

    goto :goto_1

    .line 405
    :cond_2
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    shr-int v1, p0, p1

    :goto_1
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 409
    :cond_4
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    .line 410
    :goto_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    mul-int/lit8 v7, v3, 0x20

    if-le p2, v7, :cond_6

    if-nez v6, :cond_5

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    move p2, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v3, p2, 0x1f

    shr-int/lit8 v3, v3, 0x5

    :goto_3
    sub-int v6, p2, p1

    const/16 v7, 0x40

    if-ge v6, v7, :cond_9

    .line 423
    iget-object p2, p0, Lgnu/math/IntNum;->words:[I

    if-nez p2, :cond_8

    .line 424
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    if-lt p1, v2, :cond_7

    const/16 p1, 0x1f

    :cond_7
    shr-int/2addr p0, p1

    int-to-long p0, p0

    goto :goto_4

    .line 426
    :cond_8
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {p0, v3, p1}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide p0

    :goto_4
    const-wide/16 v0, -0x1

    shl-long/2addr v0, v6

    not-long v0, v0

    and-long/2addr p0, v0

    .line 427
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_9
    shr-int/lit8 v7, p1, 0x5

    shr-int/lit8 p2, p2, 0x5

    add-int/2addr p2, v4

    sub-int/2addr p2, v7

    .line 434
    new-array p2, p2, [I

    .line 435
    iget-object v8, p0, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_b

    if-lt p1, v2, :cond_a

    const/4 p0, -0x1

    goto :goto_5

    .line 436
    :cond_a
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    shr-int/2addr p0, p1

    :goto_5
    aput p0, p2, v1

    goto :goto_6

    :cond_b
    sub-int/2addr v3, v7

    and-int/2addr p1, v5

    .line 441
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {p2, p0, v7, v3, p1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    :goto_6
    shr-int/lit8 p0, v6, 0x5

    .line 444
    aget p1, p2, p0

    shl-int/2addr v0, v6

    not-int v0, v0

    and-int/2addr p1, v0

    aput p1, p2, p0

    add-int/2addr p0, v4

    .line 445
    invoke-static {p2, p0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x7

    .line 164
    invoke-static {v0, p0, p1}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static lowestBitSet(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0xff

    if-nez v1, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_2

    ushr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public static lowestBitSet(Lgnu/math/IntNum;)I
    .locals 3

    .line 470
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 473
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p0}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result p0

    return p0

    .line 477
    :cond_0
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    :cond_1
    if-lez p0, :cond_2

    const/4 v1, 0x0

    .line 480
    aget v2, v0, v1

    invoke-static {v2}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static not(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 2

    .line 176
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static reverseBits(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 13

    .line 532
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 533
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const/16 v1, 0x3f

    if-ge p2, v1, :cond_1

    int-to-long v0, v0

    sub-int/2addr p2, v4

    :goto_0
    if-ge p1, p2, :cond_0

    shr-long v4, v0, p1

    and-long/2addr v4, v2

    shr-long v6, v0, p2

    and-long/2addr v6, v2

    shl-long v8, v2, p1

    shl-long v10, v2, p2

    or-long/2addr v8, v10

    not-long v8, v8

    and-long/2addr v0, v8

    shl-long/2addr v4, p2

    or-long/2addr v0, v4

    shl-long v4, v6, p1

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_1
    sub-int/2addr p2, v4

    .line 553
    invoke-static {p0, p2}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object p0

    :goto_1
    if-ge p1, p2, :cond_3

    shr-int/lit8 v0, p1, 0x5

    shr-int/lit8 v1, p2, 0x5

    .line 560
    aget v5, p0, v0

    shr-int v6, v5, p1

    and-int/2addr v6, v4

    if-ne v0, v1, :cond_2

    shr-int v1, v5, p2

    and-int/2addr v1, v4

    int-to-long v7, v5

    shl-long v9, v2, p1

    shl-long v11, v2, p2

    or-long/2addr v9, v11

    not-long v9, v9

    and-long/2addr v7, v9

    long-to-int v5, v7

    shl-int/2addr v6, p2

    or-int/2addr v5, v6

    shl-int/2addr v1, p1

    or-int/2addr v1, v5

    goto :goto_2

    .line 570
    :cond_2
    aget v7, p0, v1

    and-int/lit8 v8, p2, 0x1f

    shr-int v9, v7, v8

    and-int/2addr v9, v4

    and-int/lit8 v10, p1, 0x1f

    shl-int v11, v4, v10

    not-int v11, v11

    and-int/2addr v5, v11

    shl-int v11, v4, v8

    not-int v11, v11

    and-int/2addr v7, v11

    shl-int/2addr v9, v10

    or-int/2addr v5, v9

    shl-int/2addr v6, v8

    or-int/2addr v6, v7

    .line 576
    aput v6, p0, v1

    move v1, v5

    .line 578
    :goto_2
    aput v1, p0, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 582
    :cond_3
    array-length p1, p0

    invoke-static {p0, p1}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 10

    .line 208
    iget-object v0, p3, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p2, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_2

    iget v0, p2, Lgnu/math/IntNum;->ival:I

    iget v1, p3, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_2

    .line 212
    :cond_2
    :goto_1
    invoke-static {p1}, Lgnu/math/BitOps;->swappedOp(I)I

    move-result p1

    .line 217
    :goto_2
    iget-object v0, p2, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 219
    iget v0, p2, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x1

    goto :goto_3

    .line 224
    :cond_3
    iget-object v0, p2, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    .line 225
    iget v3, p2, Lgnu/math/IntNum;->ival:I

    .line 227
    :goto_3
    iget-object v4, p3, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_4

    .line 229
    iget v4, p3, Lgnu/math/IntNum;->ival:I

    const/4 v5, 0x1

    goto :goto_4

    .line 234
    :cond_4
    iget-object v4, p3, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v1

    .line 235
    iget v5, p3, Lgnu/math/IntNum;->ival:I

    :goto_4
    if-le v5, v2, :cond_5

    .line 238
    invoke-virtual {p0, v5}, Lgnu/math/IntNum;->realloc(I)V

    .line 239
    :cond_5
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    const/4 v7, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 v4, -0x1

    const/4 p1, 0x0

    :cond_6
    :goto_5
    const/4 p2, 0x0

    goto/16 :goto_16

    :pswitch_0
    const/4 p1, 0x0

    :goto_6
    and-int/2addr v4, v0

    not-int v4, v4

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_7

    if-gez v0, :cond_6

    goto/16 :goto_11

    .line 362
    :cond_7
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_6

    :pswitch_1
    const/4 p1, 0x0

    :goto_7
    not-int v4, v4

    or-int/2addr v4, v0

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_8

    if-ltz v0, :cond_6

    goto/16 :goto_11

    .line 353
    :cond_8
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_7

    :pswitch_2
    not-int v4, v4

    const/4 p1, 0x0

    :goto_8
    const/4 p2, 0x2

    goto/16 :goto_16

    :pswitch_3
    const/4 p1, 0x0

    :goto_9
    not-int v8, v0

    or-int/2addr v4, v8

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_9

    if-gez v0, :cond_6

    goto/16 :goto_15

    .line 340
    :cond_9
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_9

    :pswitch_4
    const/4 p1, 0x0

    :goto_a
    not-int v4, v0

    add-int/lit8 v0, p1, 0x1

    if-lt v0, v3, :cond_a

    goto :goto_5

    .line 332
    :cond_a
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget p1, p1, v0

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget p1, p1, v0

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_a

    :pswitch_5
    const/4 p1, 0x0

    :goto_b
    xor-int/2addr v4, v0

    not-int v4, v4

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_b

    if-ltz v0, :cond_11

    goto/16 :goto_11

    .line 323
    :cond_b
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_b

    :pswitch_6
    const/4 p1, 0x0

    :goto_c
    or-int/2addr v4, v0

    not-int v4, v4

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_c

    if-ltz v0, :cond_6

    goto :goto_11

    .line 314
    :cond_c
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_c

    :pswitch_7
    const/4 p1, 0x0

    :goto_d
    or-int/2addr v4, v0

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_d

    if-ltz v0, :cond_6

    goto/16 :goto_15

    .line 305
    :cond_d
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_d

    :pswitch_8
    const/4 p1, 0x0

    :goto_e
    xor-int/2addr v4, v0

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_e

    if-gez v0, :cond_11

    goto :goto_11

    .line 296
    :cond_e
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_e

    :pswitch_9
    const/4 p1, 0x0

    :goto_f
    add-int/lit8 v4, p1, 0x1

    if-lt v4, v3, :cond_f

    move v4, v0

    goto/16 :goto_5

    .line 288
    :cond_f
    aput v0, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget p1, p1, v4

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v4

    move p1, v4

    goto :goto_f

    :pswitch_a
    const/4 p1, 0x0

    :goto_10
    not-int v4, v4

    and-int/2addr v4, v0

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_10

    if-gez v0, :cond_6

    :goto_11
    goto/16 :goto_8

    .line 279
    :cond_10
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_10

    :pswitch_b
    const/4 p1, 0x0

    :cond_11
    :goto_12
    const/4 p2, 0x1

    goto :goto_16

    :pswitch_c
    const/4 p1, 0x0

    :goto_13
    not-int v8, v0

    and-int/2addr v4, v8

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_12

    if-ltz v0, :cond_6

    goto :goto_15

    .line 266
    :cond_12
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_13

    :pswitch_d
    const/4 p1, 0x0

    :goto_14
    and-int/2addr v4, v0

    add-int/lit8 v8, p1, 0x1

    if-lt v8, v3, :cond_13

    if-gez v0, :cond_6

    :goto_15
    goto :goto_12

    .line 257
    :cond_13
    aput v4, v6, p1

    iget-object p1, p3, Lgnu/math/IntNum;->words:[I

    aget v4, p1, v8

    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    aget v0, p1, v8

    move p1, v8

    goto :goto_14

    :pswitch_e
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_16
    add-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_14

    goto :goto_17

    :cond_14
    move v1, p2

    :goto_17
    if-eqz v1, :cond_17

    if-eq v1, v2, :cond_16

    if-eq v1, v7, :cond_15

    goto :goto_1a

    .line 386
    :cond_15
    aput v4, v6, p1

    :goto_18
    add-int/2addr p1, v2

    if-ge p1, v5, :cond_19

    iget-object p2, p3, Lgnu/math/IntNum;->words:[I

    aget p2, p2, p1

    not-int p2, p2

    aput p2, v6, p1

    goto :goto_18

    .line 385
    :cond_16
    aput v4, v6, p1

    :goto_19
    add-int/2addr p1, v2

    if-ge p1, v5, :cond_19

    iget-object p2, p3, Lgnu/math/IntNum;->words:[I

    aget p2, p2, p1

    aput p2, v6, p1

    goto :goto_19

    :cond_17
    if-nez p1, :cond_18

    if-nez v6, :cond_18

    .line 380
    iput v4, p0, Lgnu/math/IntNum;->ival:I

    return-void

    .line 383
    :cond_18
    aput v4, v6, p1

    move p1, v0

    .line 388
    :cond_19
    :goto_1a
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setBitValue(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .locals 4

    const/4 v0, 0x1

    and-int/2addr p2, v0

    .line 71
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 74
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/16 v3, 0x1f

    if-nez v2, :cond_2

    if-ge p1, v3, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    :goto_0
    shr-int v2, v1, v2

    and-int/2addr v2, v0

    if-ne v2, p2, :cond_1

    return-object p0

    :cond_1
    const/16 p2, 0x3f

    if-ge p1, p2, :cond_5

    int-to-long v1, v1

    shl-int p0, v0, p1

    int-to-long p0, p0

    xor-long/2addr p0, v1

    .line 80
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_2
    shr-int/lit8 v2, p1, 0x5

    if-lt v2, v1, :cond_4

    .line 87
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    sub-int/2addr v1, v0

    aget v1, v2, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_4
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v2

    shr-int/2addr v1, p1

    and-int/2addr v1, v0

    :goto_1
    if-ne v1, p2, :cond_5

    return-object p0

    .line 93
    :cond_5
    invoke-static {p0, p1}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object p0

    shr-int/lit8 p2, p1, 0x5

    .line 94
    aget v1, p0, p2

    and-int/2addr p1, v3

    shl-int p1, v0, p1

    xor-int/2addr p1, v1

    aput p1, p0, p2

    .line 95
    array-length p1, p0

    invoke-static {p0, p1}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static swappedOp(I)I
    .locals 1

    const-string v0, "\u0000\u0001\u0004\u0005\u0002\u0003\u0006\u0007\u0008\t\u000c\r\n\u000b\u000e\u000f"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static test(Lgnu/math/IntNum;I)Z
    .locals 3

    .line 101
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 102
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_3

    .line 103
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    aget p0, p0, v2

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public static test(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 4

    .line 109
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 110
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result p0

    return p0

    .line 111
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 112
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, p0}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result p0

    return p0

    .line 113
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_2

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :cond_2
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_4

    .line 119
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result p0

    return p0
.end method

.method public static xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x6

    .line 170
    invoke-static {v0, p0, p1}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method
