.class Lgnu/math/MPN;
.super Ljava/lang/Object;
.source "MPN.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_1([I[III)I
    .locals 6

    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 25
    aget v4, p1, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 26
    aput v4, p0, p3

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static add_n([I[I[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 43
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 45
    aput v3, p0, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static chars_per_word(I)I
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-ge p0, v3, :cond_4

    if-ge p0, v2, :cond_3

    const/4 v2, 0x2

    if-gt p0, v2, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    rsub-int/lit8 p0, p0, 0x12

    return p0

    :cond_3
    return v3

    :cond_4
    const/16 v3, 0xc

    if-ge p0, v3, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    if-gt p0, v1, :cond_6

    return v2

    :cond_6
    const/16 v1, 0x17

    if-gt p0, v1, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const/16 v1, 0x28

    if-gt p0, v1, :cond_8

    const/4 p0, 0x6

    return p0

    :cond_8
    const/16 v1, 0x100

    if-gt p0, v1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static cmp([II[II)I
    .locals 0

    if-le p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, p3, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 474
    :cond_1
    invoke-static {p0, p2, p1}, Lgnu/math/MPN;->cmp([I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static cmp([I[II)I
    .locals 3

    :cond_0
    const/4 v0, -0x1

    add-int/2addr p2, v0

    if-ltz p2, :cond_2

    .line 455
    aget v1, p0, p2

    .line 456
    aget v2, p1, p2

    if-eq v1, v2, :cond_0

    const/high16 p0, -0x80000000

    xor-int p1, v1, p0

    xor-int/2addr p0, v2

    if-le p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static count_leading_zeros(I)I
    .locals 3

    if-nez p0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x10

    :goto_0
    if-lez v1, :cond_2

    ushr-int v2, p0, v1

    if-nez v2, :cond_1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static divide([II[II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p1

    .line 297
    :cond_0
    aget v4, v0, v3

    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    if-ne v4, v5, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    int-to-long v9, v4

    shl-long/2addr v9, v6

    add-int/lit8 v4, v3, -0x1

    .line 301
    aget v4, v0, v4

    int-to-long v11, v4

    and-long/2addr v11, v7

    add-long/2addr v9, v11

    .line 302
    invoke-static {v9, v10, v5}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_0
    if-eqz v4, :cond_3

    sub-int v5, v3, v2

    .line 306
    invoke-static {v0, v5, v1, v2, v4}, Lgnu/math/MPN;->submul_1([II[III)I

    move-result v9

    .line 307
    aget v10, v0, v3

    int-to-long v10, v10

    and-long/2addr v10, v7

    int-to-long v12, v9

    and-long/2addr v12, v7

    sub-long/2addr v10, v12

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_2

    add-int v10, v5, v9

    .line 315
    aget v11, v0, v10

    int-to-long v14, v11

    and-long/2addr v14, v7

    aget v11, v1, v9

    move/from16 v16, v4

    move/from16 p1, v5

    int-to-long v4, v11

    and-long/2addr v4, v7

    add-long/2addr v14, v4

    add-long/2addr v12, v14

    long-to-int v4, v12

    .line 317
    aput v4, v0, v10

    ushr-long/2addr v12, v6

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move/from16 v4, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v4

    move/from16 p1, v5

    .line 320
    aget v4, v0, v3

    int-to-long v4, v4

    add-long/2addr v4, v12

    long-to-int v5, v4

    aput v5, v0, v3

    const-wide/16 v4, 0x1

    sub-long v10, v12, v4

    move/from16 v5, p1

    move/from16 v4, v16

    goto :goto_1

    .line 324
    :cond_3
    aput v4, v0, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v2, :cond_0

    return-void
.end method

.method public static divmod_1([I[III)I
    .locals 10

    add-int/lit8 p2, p2, -0x1

    .line 220
    aget v0, p1, p2

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    int-to-long v6, p3

    and-long/2addr v6, v2

    const/16 v8, 0x20

    cmp-long v9, v4, v6

    if-ltz v9, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    .line 225
    aput v5, p0, p2

    shl-long/2addr v0, v8

    move p2, v4

    :goto_0
    if-ltz p2, :cond_1

    .line 231
    aget v4, p1, p2

    const-wide v5, -0x100000000L

    and-long/2addr v0, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 233
    invoke-static {v0, v1, p3}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v0

    long-to-int v4, v0

    .line 234
    aput v4, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    shr-long p0, v0, v8

    long-to-int p1, p0

    return p1
.end method

.method static findLowestBit(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0xf

    if-nez v1, :cond_0

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_1

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method static findLowestBit([I)I
    .locals 2

    const/4 v0, 0x0

    .line 594
    :goto_0
    aget v1, p0, v0

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x20

    .line 595
    invoke-static {v1}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gcd([I[II)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 610
    :goto_0
    aget v2, p0, v1

    aget v3, p1, v1

    or-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 618
    invoke-static {v2}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v2

    sub-int/2addr p2, v1

    .line 623
    invoke-static {p0, p0, v1, p2, v2}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 624
    invoke-static {p1, p1, v1, p2, v2}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 628
    aget v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move v3, p2

    move-object p2, p0

    goto :goto_1

    :cond_0
    move v3, p2

    move-object p2, p1

    move-object p1, p0

    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 644
    :goto_2
    aget v5, p1, v4

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-lez v4, :cond_4

    const/4 v5, 0x0

    :goto_3
    sub-int v6, v3, v4

    if-ge v5, v6, :cond_3

    add-int v6, v5, v4

    .line 649
    aget v6, p1, v6

    aput v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v5, v3, :cond_4

    .line 651
    aput v0, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 653
    :cond_4
    aget v4, p1, v0

    invoke-static {v4}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 655
    invoke-static {p1, p1, v0, v3, v4}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 661
    :cond_5
    invoke-static {p2, p1, v3}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v4

    if-nez v4, :cond_a

    add-int p1, v1, v2

    if-lez p1, :cond_9

    if-lez v2, :cond_6

    .line 681
    invoke-static {p0, v1, p0, v3, v2}, Lgnu/math/MPN;->lshift([II[III)I

    move-result p1

    if-eqz p1, :cond_7

    add-int/lit8 p2, v3, 0x1

    add-int/2addr v3, v1

    .line 683
    aput p1, p0, v3

    move v3, p2

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_7

    add-int p2, p1, v1

    .line 688
    aget v2, p0, p1

    aput v2, p0, p2

    goto :goto_5

    :cond_7
    :goto_6
    move p1, v1

    :goto_7
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_8

    .line 691
    aput v0, p0, p1

    goto :goto_7

    :cond_8
    add-int/2addr v3, v1

    :cond_9
    return v3

    :cond_a
    if-lez v4, :cond_b

    .line 666
    invoke-static {p2, p2, p1, v3}, Lgnu/math/MPN;->sub_n([I[I[II)I

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_8

    .line 672
    :cond_b
    invoke-static {p1, p1, p2, v3}, Lgnu/math/MPN;->sub_n([I[I[II)I

    :goto_8
    add-int/lit8 v4, v3, -0x1

    .line 674
    aget v5, p2, v4

    if-nez v5, :cond_1

    aget v4, p1, v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static intLength(I)I
    .locals 0

    if-gez p0, :cond_0

    not-int p0, p0

    .line 699
    :cond_0
    invoke-static {p0}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static intLength([II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 707
    aget p0, p0, p1

    invoke-static {p0}, Lgnu/math/MPN;->intLength(I)I

    move-result p0

    mul-int/lit8 p1, p1, 0x20

    add-int/2addr p0, p1

    return p0
.end method

.method public static lshift([II[III)I
    .locals 6

    rsub-int/lit8 v0, p4, 0x20

    add-int/lit8 p3, p3, -0x1

    .line 555
    aget v1, p2, p3

    ushr-int v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 560
    aget v3, p2, p3

    add-int v4, p1, p3

    shl-int/2addr v1, p4

    ushr-int v5, v3, v0

    or-int/2addr v1, v5

    .line 561
    aput v1, p0, v4

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/2addr p1, p3

    shl-int p2, v1, p4

    .line 564
    aput p2, p0, p1

    return v2
.end method

.method public static mul([I[II[II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 111
    aget v4, p3, v3

    invoke-static {v0, v1, v2, v4}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v4

    aput v4, v0, v2

    const/4 v4, 0x1

    move/from16 v5, p4

    :goto_0
    if-ge v4, v5, :cond_1

    .line 115
    aget v6, p3, v4

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_0

    .line 119
    aget v13, v1, v12

    int-to-long v13, v13

    and-long/2addr v13, v8

    mul-long v13, v13, v6

    add-int v15, v4, v12

    aget v3, v0, v15

    move-wide/from16 v16, v6

    int-to-long v5, v3

    and-long/2addr v5, v8

    add-long/2addr v13, v5

    add-long/2addr v10, v13

    long-to-int v3, v10

    .line 121
    aput v3, v0, v15

    const/16 v3, 0x20

    ushr-long/2addr v10, v3

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, p4

    move-wide/from16 v6, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    add-int v3, v4, v2

    long-to-int v5, v10

    .line 124
    aput v5, v0, v3

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p4

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static mul_1([I[III)I
    .locals 8

    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 90
    aget v6, p1, p3

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 91
    aput v6, p0, p3

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v4

    return p0
.end method

.method public static rshift([I[IIII)I
    .locals 8

    rsub-int/lit8 v0, p4, 0x20

    .line 489
    aget v1, p1, p2

    shl-int v2, v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, p3, :cond_0

    add-int v5, p2, v4

    .line 494
    aget v5, p1, v5

    add-int/lit8 v6, v4, -0x1

    ushr-int/2addr v1, p4

    shl-int v7, v5, v0

    or-int/2addr v1, v7

    .line 495
    aput v1, p0, v6

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    ushr-int p1, v1, p4

    .line 498
    aput p1, p0, v4

    return v2
.end method

.method public static rshift0([I[IIII)V
    .locals 1

    if-lez p4, :cond_0

    .line 513
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/MPN;->rshift([I[IIII)I

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    add-int v0, p4, p2

    .line 516
    aget v0, p1, v0

    aput v0, p0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static rshift_long([III)J
    .locals 4

    shr-int/lit8 v0, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    add-int/lit8 v1, p1, -0x1

    .line 529
    aget v1, p0, v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    move v2, v1

    goto :goto_1

    .line 530
    :cond_1
    aget v2, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_2

    move v3, v1

    goto :goto_2

    .line 532
    :cond_2
    aget v3, p0, v0

    :goto_2
    if-eqz p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_3

    goto :goto_3

    .line 536
    :cond_3
    aget v1, p0, v0

    :goto_3
    ushr-int p0, v2, p2

    rsub-int/lit8 p1, p2, 0x20

    shl-int v0, v3, p1

    or-int v2, p0, v0

    ushr-int p0, v3, p2

    shl-int p1, v1, p1

    or-int v3, p0, p1

    :cond_4
    int-to-long p0, v3

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static set_str([I[BII)I
    .locals 7

    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    shr-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    .line 398
    aget-byte v3, p1, p2

    shl-int v4, v3, p3

    or-int/2addr v1, v4

    add-int/2addr p3, v0

    const/16 v4, 0x20

    if-lt p3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 403
    aput v1, p0, v2

    add-int/lit8 p3, p3, -0x20

    sub-int v1, v0, p3

    shr-int v1, v3, v1

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_8

    add-int/lit8 p1, v2, 0x1

    .line 410
    aput v1, p0, v2

    move v2, p1

    goto :goto_5

    .line 415
    :cond_3
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, p2, :cond_8

    sub-int v3, p2, v1

    if-le v3, v0, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v4, v1, 0x1

    .line 423
    aget-byte v1, p1, v1

    move v5, p3

    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_5

    mul-int v1, v1, p3

    add-int/lit8 v6, v4, 0x1

    .line 428
    aget-byte v4, p1, v4

    add-int/2addr v1, v4

    mul-int v5, v5, p3

    move v4, v6

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    .line 437
    :cond_6
    invoke-static {p0, p0, v2, v5}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v3

    .line 438
    invoke-static {p0, p0, v2, v1}, Lgnu/math/MPN;->add_1([I[III)I

    move-result v1

    add-int/2addr v1, v3

    :goto_4
    if-eqz v1, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 441
    aput v1, p0, v2

    move v2, v3

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    :goto_5
    return v2
.end method

.method public static sub_n([I[I[II)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 62
    aget v3, p2, v1

    .line 63
    aget v4, p1, v1

    add-int/2addr v3, v2

    const/high16 v5, -0x80000000

    xor-int v6, v3, v5

    xor-int/2addr v2, v5

    const/4 v7, 0x1

    if-ge v6, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sub-int v3, v4, v3

    xor-int v6, v3, v5

    xor-int/2addr v4, v5

    if-le v6, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/2addr v2, v7

    .line 70
    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static submul_1([II[III)I
    .locals 11

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 251
    :cond_0
    aget v6, p2, v4

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    long-to-int v8, v6

    const/16 v9, 0x20

    shr-long/2addr v6, v9

    long-to-int v7, v6

    add-int/2addr v8, v5

    const/high16 v6, -0x80000000

    xor-int v9, v8, v6

    xor-int/2addr v5, v6

    if-ge v9, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v5, v7

    add-int v7, p1, v4

    .line 259
    aget v9, p0, v7

    sub-int v8, v9, v8

    xor-int v10, v8, v6

    xor-int/2addr v6, v9

    if-le v10, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 263
    :cond_2
    aput v8, p0, v7

    add-int/lit8 v4, v4, 0x1

    if-lt v4, p3, :cond_0

    return v5
.end method

.method public static udiv_qrnnd(JI)J
    .locals 19

    move/from16 v0, p2

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    const-wide v4, 0xffffffffL

    and-long v6, p0, v4

    if-ltz v0, :cond_1

    int-to-long v8, v0

    sub-long v10, v8, v2

    const/16 v0, 0x1f

    ushr-long/2addr v6, v0

    sub-long/2addr v10, v6

    and-long v6, v10, v4

    cmp-long v10, v2, v6

    if-gez v10, :cond_0

    .line 143
    div-long v2, p0, v8

    .line 144
    rem-long v6, p0, v8

    goto/16 :goto_5

    :cond_0
    shl-long v2, v8, v0

    sub-long v2, p0, v2

    .line 151
    div-long v6, v2, v8

    .line 152
    rem-long/2addr v2, v8

    const-wide/32 v8, -0x80000000

    add-long/2addr v6, v8

    move-wide/from16 v17, v2

    move-wide v2, v6

    move-wide/from16 v6, v17

    goto :goto_5

    :cond_1
    ushr-int/lit8 v8, v0, 0x1

    int-to-long v8, v8

    const/4 v10, 0x1

    ushr-long v11, p0, v10

    cmp-long v13, v2, v8

    if-ltz v13, :cond_4

    shr-long/2addr v2, v10

    cmp-long v10, v2, v8

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    neg-int v2, v0

    int-to-long v2, v2

    and-long/2addr v2, v4

    cmp-long v8, v6, v2

    if-ltz v8, :cond_3

    const-wide/16 v2, -0x1

    int-to-long v8, v0

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0x2

    int-to-long v8, v0

    add-long/2addr v6, v8

    :goto_0
    add-long/2addr v6, v8

    goto :goto_5

    :cond_4
    :goto_1
    const-wide/16 v2, 0x1

    if-gez v13, :cond_5

    .line 167
    div-long v13, v11, v8

    .line 168
    rem-long/2addr v11, v8

    goto :goto_2

    :cond_5
    shl-long v13, v8, v1

    sub-long/2addr v11, v13

    not-long v10, v11

    .line 173
    div-long v12, v10, v8

    .line 174
    rem-long/2addr v10, v8

    not-long v12, v12

    and-long/2addr v12, v4

    sub-long/2addr v8, v2

    sub-long/2addr v8, v10

    move-wide v13, v12

    move-wide v11, v8

    :goto_2
    const-wide/16 v8, 0x2

    mul-long v11, v11, v8

    and-long/2addr v6, v2

    add-long/2addr v6, v11

    and-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_8

    cmp-long v10, v6, v13

    if-ltz v10, :cond_6

    sub-long/2addr v6, v13

    goto :goto_4

    :cond_6
    sub-long v10, v13, v6

    int-to-long v8, v0

    and-long v15, v8, v4

    cmp-long v0, v10, v15

    if-gtz v0, :cond_7

    sub-long/2addr v6, v13

    add-long/2addr v6, v8

    goto :goto_3

    :cond_7
    sub-long/2addr v6, v13

    add-long/2addr v6, v8

    add-long/2addr v6, v8

    const-wide/16 v2, 0x2

    :goto_3
    sub-long v2, v13, v2

    goto :goto_5

    :cond_8
    :goto_4
    move-wide v2, v13

    :goto_5
    shl-long v0, v6, v1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
