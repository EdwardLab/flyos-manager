.class public Lgnu/math/IntNum;
.super Lgnu/math/RatNum;
.source "IntNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final maxFixNum:I = 0x400

.field static final minFixNum:I = -0x64

.field static final numFixNum:I = 0x465

.field static final smallFixNums:[Lgnu/math/IntNum;


# instance fields
.field public ival:I

.field public words:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x465

    new-array v1, v0, [Lgnu/math/IntNum;

    .line 27
    sput-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 31
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    new-instance v2, Lgnu/math/IntNum;

    add-int/lit8 v3, v0, -0x64

    invoke-direct {v2, v3}, Lgnu/math/IntNum;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 42
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    return-void
.end method

.method public static abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final add(II)Lgnu/math/IntNum;
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    .line 326
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2

    .line 332
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 333
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/IntNum;->add(II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 334
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 335
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 336
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x1

    .line 418
    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 11

    .line 430
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    int-to-long v0, p2

    .line 431
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    int-to-long p1, p1

    mul-long v0, v0, p1

    iget p0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 435
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {p2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p2

    invoke-static {p1, p2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 439
    :cond_2
    :goto_0
    iget-object p2, p0, Lgnu/math/IntNum;->words:[I

    if-nez p2, :cond_3

    .line 440
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, p0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 441
    :cond_3
    iget-object p2, p1, Lgnu/math/IntNum;->words:[I

    if-nez p2, :cond_4

    .line 442
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 445
    :cond_4
    iget p2, p1, Lgnu/math/IntNum;->ival:I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-le p2, v1, :cond_5

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 449
    :cond_5
    iget p2, p0, Lgnu/math/IntNum;->ival:I

    add-int/2addr p2, v0

    invoke-static {p2}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object p2

    .line 450
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    .line 451
    iget-object v2, p2, Lgnu/math/IntNum;->words:[I

    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v2, v3, v4, v1}, Lgnu/math/MPN;->add_n([I[I[II)I

    move-result v2

    int-to-long v2, v2

    .line 452
    iget-object p1, p1, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v4, v1, -0x1

    aget p1, p1, v4

    const-wide v4, 0xffffffffL

    if-gez p1, :cond_6

    move-wide v6, v4

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    .line 453
    :goto_1
    iget p1, p0, Lgnu/math/IntNum;->ival:I

    if-ge v1, p1, :cond_7

    .line 455
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    aget p1, p1, v1

    int-to-long v8, p1

    and-long/2addr v8, v4

    add-long/2addr v8, v6

    add-long/2addr v2, v8

    .line 456
    iget-object p1, p2, Lgnu/math/IntNum;->words:[I

    long-to-int v8, v2

    aput v8, p1, v1

    const/16 p1, 0x20

    ushr-long/2addr v2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_7
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 p1, v1, -0x1

    aget p0, p0, p1

    if-gez p0, :cond_8

    const-wide/16 p0, 0x1

    sub-long/2addr v6, p0

    .line 461
    :cond_8
    iget-object p0, p2, Lgnu/math/IntNum;->words:[I

    add-long/2addr v2, v6

    long-to-int p1, v2

    aput p1, p0, v1

    add-int/2addr v1, v0

    .line 462
    iput v1, p2, Lgnu/math/IntNum;->ival:I

    .line 463
    invoke-virtual {p2}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static alloc(I)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 142
    new-instance p0, Lgnu/math/IntNum;

    invoke-direct {p0}, Lgnu/math/IntNum;-><init>()V

    return-object p0

    .line 143
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 144
    new-array p0, p0, [I

    iput-object p0, v0, Lgnu/math/IntNum;->words:[I

    return-object v0
.end method

.method public static asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2

    .line 92
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lgnu/math/IntNum;

    return-object p0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 99
    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compare(Lgnu/math/IntNum;J)I
    .locals 7

    .line 236
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 237
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    int-to-long v4, p0

    goto :goto_4

    .line 240
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v0, v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 244
    :cond_3
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    iget v5, p0, Lgnu/math/IntNum;->ival:I

    :goto_3
    if-ne v5, v3, :cond_5

    .line 246
    aget p0, v4, v2

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v5, v4, :cond_8

    .line 248
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    :goto_4
    cmp-long p0, v4, p1

    if-gez p0, :cond_6

    goto :goto_5

    :cond_6
    if-lez p0, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    return v1

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x1

    :goto_6
    return v1
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I
    .locals 6

    .line 219
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_2

    .line 220
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    iget p1, p1, Lgnu/math/IntNum;->ival:I

    if-ge p0, p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    .line 221
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 222
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 225
    :cond_4
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    .line 226
    :goto_2
    iget-object v5, p1, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    :goto_3
    if-eq p0, p1, :cond_9

    if-le p0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eq v1, v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    .line 229
    :cond_9
    invoke-static {v4, v5, p0}, Lgnu/math/MPN;->cmp([I[II)I

    move-result p0

    return p0
.end method

.method public static divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 19

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    move/from16 v11, p6

    if-ne v11, v10, :cond_1

    cmp-long v10, v2, v7

    if-gez v10, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    const-wide/high16 v11, -0x8000000000000000L

    const/4 v13, 0x0

    cmp-long v14, v0, v7

    if-gez v14, :cond_3

    cmp-long v14, v0, v11

    if-nez v14, :cond_2

    .line 560
    invoke-static/range {p0 .. p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, v4, v5, v10}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    return-void

    :cond_2
    neg-long v0, v0

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    cmp-long v15, v2, v7

    if-gez v15, :cond_8

    cmp-long v15, v2, v11

    if-nez v15, :cond_7

    const/4 v6, 0x3

    if-ne v10, v6, :cond_5

    if-eqz v4, :cond_4

    .line 577
    invoke-virtual {v4, v13}, Lgnu/math/IntNum;->set(I)V

    :cond_4
    if-eqz v5, :cond_6

    .line 579
    invoke-virtual {v5, v0, v1}, Lgnu/math/IntNum;->set(J)V

    goto :goto_2

    .line 582
    :cond_5
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, v4, v5, v10}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    neg-long v2, v2

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 591
    :goto_3
    div-long v15, v0, v2

    .line 592
    rem-long/2addr v0, v2

    xor-int/2addr v11, v14

    const-wide/16 v17, 0x1

    cmp-long v12, v0, v7

    if-eqz v12, :cond_c

    if-eq v10, v9, :cond_a

    if-eq v10, v6, :cond_a

    const/4 v6, 0x4

    if-eq v10, v6, :cond_9

    goto :goto_5

    :cond_9
    and-long v6, v15, v17

    sub-long v6, v2, v6

    shr-long/2addr v6, v9

    cmp-long v8, v0, v6

    if-lez v8, :cond_c

    goto :goto_6

    :cond_a
    if-ne v10, v9, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-ne v11, v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v9, 0x0

    :goto_6
    if-eqz v4, :cond_f

    if-eqz v9, :cond_d

    add-long v15, v15, v17

    :cond_d
    move-wide v6, v15

    if-eqz v11, :cond_e

    neg-long v6, v6

    .line 618
    :cond_e
    invoke-virtual {v4, v6, v7}, Lgnu/math/IntNum;->set(J)V

    :cond_f
    if-eqz v5, :cond_12

    if-eqz v9, :cond_10

    sub-long v0, v2, v0

    xor-int/lit8 v14, v14, 0x1

    :cond_10
    if-eqz v14, :cond_11

    neg-long v0, v0

    .line 638
    :cond_11
    invoke-virtual {v5, v0, v1}, Lgnu/math/IntNum;->set(J)V

    :cond_12
    return-void
.end method

.method public static divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 654
    iget-object v2, v0, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget v2, v0, Lgnu/math/IntNum;->ival:I

    if-gt v2, v3, :cond_2

    :cond_0
    iget-object v2, v1, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_1

    iget v2, v1, Lgnu/math/IntNum;->ival:I

    if-gt v2, v3, :cond_2

    .line 657
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v6

    .line 658
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v6, v10

    if-eqz v2, :cond_2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2

    move-wide v0, v6

    move-wide v2, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 661
    invoke-static/range {v0 .. v6}, Lgnu/math/IntNum;->divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V

    return-void

    .line 666
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    .line 667
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    xor-int v7, v2, v6

    .line 670
    iget-object v8, v1, Lgnu/math/IntNum;->words:[I

    const/4 v9, 0x1

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    iget v8, v1, Lgnu/math/IntNum;->ival:I

    .line 671
    :goto_0
    new-array v10, v8, [I

    .line 672
    invoke-virtual {v1, v10}, Lgnu/math/IntNum;->getAbsolute([I)V

    :goto_1
    if-le v8, v9, :cond_4

    add-int/lit8 v11, v8, -0x1

    .line 673
    aget v11, v10, v11

    if-nez v11, :cond_4

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 675
    :cond_4
    iget-object v11, v0, Lgnu/math/IntNum;->words:[I

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    iget v11, v0, Lgnu/math/IntNum;->ival:I

    :goto_2
    add-int/lit8 v12, v11, 0x2

    .line 676
    new-array v12, v12, [I

    .line 677
    invoke-virtual {v0, v12}, Lgnu/math/IntNum;->getAbsolute([I)V

    :goto_3
    if-le v11, v9, :cond_6

    add-int/lit8 v0, v11, -0x1

    .line 678
    aget v0, v12, v0

    if-nez v0, :cond_6

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 682
    :cond_6
    invoke-static {v12, v11, v10, v8}, Lgnu/math/MPN;->cmp([II[II)I

    move-result v0

    const/4 v13, 0x0

    if-gez v0, :cond_7

    .line 686
    aput v13, v10, v13

    move v8, v11

    const/4 v11, 0x1

    move-object/from16 v16, v12

    move-object v12, v10

    move-object/from16 v10, v16

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 690
    aput v9, v12, v13

    .line 691
    aput v13, v10, v13

    const/4 v8, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    if-ne v8, v9, :cond_9

    .line 697
    aget v0, v10, v13

    invoke-static {v12, v12, v11, v0}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v0

    aput v0, v10, v13

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v8, -0x1

    .line 705
    aget v0, v10, v0

    invoke-static {v0}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v0

    if-eqz v0, :cond_a

    .line 710
    invoke-static {v10, v13, v10, v8, v0}, Lgnu/math/MPN;->lshift([II[III)I

    .line 714
    invoke-static {v12, v13, v12, v11, v0}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v14

    add-int/lit8 v15, v11, 0x1

    .line 715
    aput v14, v12, v11

    move v11, v15

    :cond_a
    if-ne v11, v8, :cond_b

    add-int/lit8 v14, v11, 0x1

    .line 719
    aput v13, v12, v11

    move v11, v14

    .line 720
    :cond_b
    invoke-static {v12, v11, v10, v8}, Lgnu/math/MPN;->divide([II[II)V

    .line 722
    invoke-static {v10, v12, v13, v8, v0}, Lgnu/math/MPN;->rshift0([I[IIII)V

    add-int/2addr v11, v9

    sub-int/2addr v11, v8

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_c

    add-int v14, v0, v8

    .line 728
    aget v14, v12, v14

    aput v14, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    if-le v8, v9, :cond_d

    add-int/lit8 v0, v8, -0x1

    .line 732
    aget v0, v10, v0

    if-nez v0, :cond_d

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v0, v8, -0x1

    .line 734
    aget v0, v10, v0

    if-gez v0, :cond_e

    .line 736
    aput v13, v10, v8

    add-int/lit8 v8, v8, 0x1

    :cond_e
    if-gt v8, v9, :cond_f

    .line 743
    aget v0, v10, v13

    if-eqz v0, :cond_19

    :cond_f
    const/4 v0, 0x5

    move/from16 v14, p4

    if-ne v14, v0, :cond_11

    if-eqz v6, :cond_10

    const/4 v0, 0x2

    goto :goto_6

    :cond_10
    const/4 v0, 0x1

    :goto_6
    move v14, v0

    :cond_11
    if-eq v14, v9, :cond_16

    if-eq v14, v3, :cond_16

    const/4 v0, 0x4

    if-eq v14, v0, :cond_12

    goto :goto_a

    :cond_12
    if-nez v5, :cond_13

    .line 760
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    goto :goto_7

    :cond_13
    move-object v0, v5

    .line 761
    :goto_7
    invoke-virtual {v0, v10, v8}, Lgnu/math/IntNum;->set([II)V

    .line 762
    invoke-static {v0, v9}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    if-eqz v6, :cond_14

    .line 764
    invoke-virtual {v0}, Lgnu/math/IntNum;->setNegative()V

    .line 765
    :cond_14
    invoke-static {v0, v1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-eqz v6, :cond_15

    neg-int v0, v0

    :cond_15
    if-eq v0, v9, :cond_18

    if-nez v0, :cond_19

    .line 769
    aget v0, v12, v13

    and-int/2addr v0, v9

    if-eqz v0, :cond_19

    goto :goto_9

    :cond_16
    if-ne v14, v9, :cond_17

    const/4 v0, 0x1

    goto :goto_8

    :cond_17
    const/4 v0, 0x0

    :goto_8
    if-ne v7, v0, :cond_19

    :cond_18
    :goto_9
    const/4 v0, 0x1

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v4, :cond_1d

    add-int/lit8 v3, v11, -0x1

    .line 774
    aget v3, v12, v3

    if-gez v3, :cond_1a

    .line 776
    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    .line 779
    :cond_1a
    invoke-virtual {v4, v12, v11}, Lgnu/math/IntNum;->set([II)V

    if-eqz v7, :cond_1c

    if-eqz v0, :cond_1b

    .line 783
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setInvert()V

    goto :goto_c

    .line 785
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setNegative()V

    goto :goto_c

    :cond_1c
    if-eqz v0, :cond_1d

    .line 788
    invoke-virtual {v4, v9}, Lgnu/math/IntNum;->setAdd(I)V

    :cond_1d
    :goto_c
    if-eqz v5, :cond_23

    .line 793
    invoke-virtual {v5, v10, v8}, Lgnu/math/IntNum;->set([II)V

    if-eqz v0, :cond_22

    .line 799
    iget-object v0, v1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1f

    if-eqz v6, :cond_1e

    .line 802
    aget v0, v10, v13

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    add-int/2addr v0, v1

    goto :goto_d

    :cond_1e
    aget v0, v10, v13

    iget v1, v1, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v0, v1

    :goto_d
    invoke-virtual {v5, v0}, Lgnu/math/IntNum;->set(I)V

    move-object v0, v5

    goto :goto_f

    :cond_1f
    if-eqz v6, :cond_20

    goto :goto_e

    :cond_20
    const/4 v9, -0x1

    .line 805
    :goto_e
    invoke-static {v5, v1, v9}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    :goto_f
    if-eqz v2, :cond_21

    .line 811
    invoke-virtual {v5, v0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    goto :goto_10

    .line 813
    :cond_21
    invoke-virtual {v5, v0}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto :goto_10

    :cond_22
    if-eqz v2, :cond_23

    .line 820
    invoke-virtual/range {p3 .. p3}, Lgnu/math/IntNum;->setNegative()V

    :cond_23
    :goto_10
    return-void
.end method

.method public static equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 5

    .line 1301
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_1

    .line 1302
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    iget p1, p1, Lgnu/math/IntNum;->ival:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_4

    .line 1303
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_4

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v3, p1, Lgnu/math/IntNum;->ival:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 1307
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v0

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public static final gcd(II)I
    .locals 2

    if-le p1, p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, p1

    move p1, p0

    move p0, v1

    :goto_1
    if-nez p0, :cond_1

    return p1

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return p0

    .line 947
    :cond_2
    rem-int/2addr p1, p0

    goto :goto_0
.end method

.method public static gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 4

    .line 955
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 956
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    .line 957
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    if-nez v0, :cond_0

    .line 960
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 961
    :cond_0
    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_3

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    if-eq v1, v2, :cond_3

    if-gez v0, :cond_1

    neg-int v0, v0

    :cond_1
    if-gez v1, :cond_2

    neg-int v1, v1

    .line 968
    :cond_2
    invoke-static {v0, v1}, Lgnu/math/IntNum;->gcd(II)I

    move-result p0

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x1

    .line 972
    :cond_4
    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    .line 975
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-le v0, v1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    .line 979
    :goto_0
    new-array v1, v0, [I

    .line 980
    new-array v2, v0, [I

    .line 981
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 982
    invoke-virtual {p1, v2}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 983
    invoke-static {v1, v2, v0}, Lgnu/math/MPN;->gcd([I[II)I

    move-result p0

    .line 984
    new-instance p1, Lgnu/math/IntNum;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lgnu/math/IntNum;-><init>(I)V

    add-int/lit8 v2, p0, -0x1

    .line 987
    aget v2, v1, v2

    if-gez v2, :cond_8

    add-int/lit8 v2, p0, 0x1

    .line 988
    aput v0, v1, p0

    move p0, v2

    .line 989
    :cond_8
    iput p0, p1, Lgnu/math/IntNum;->ival:I

    .line 990
    iput-object v1, p1, Lgnu/math/IntNum;->words:[I

    .line 991
    invoke-virtual {p1}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static intValue(Ljava/lang/Object;)I
    .locals 1

    .line 1277
    check-cast p0, Lgnu/math/IntNum;

    .line 1278
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1281
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    return p0

    .line 1280
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "integer too large"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lcm(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 3

    .line 996
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 999
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 1000
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 1001
    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, p0, v0, p1, v2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 1002
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 997
    :cond_1
    :goto_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static make(I)Lgnu/math/IntNum;
    .locals 2

    const/16 v0, -0x64

    if-lt p0, v0, :cond_0

    const/16 v1, 0x400

    if-gt p0, v1, :cond_0

    .line 49
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, p0}, Lgnu/math/IntNum;-><init>(I)V

    return-object v0
.end method

.method public static make(J)Lgnu/math/IntNum;
    .locals 4

    const-wide/16 v0, -0x64

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 79
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    long-to-int p1, p0

    add-int/lit8 p1, p1, 0x64

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_1

    .line 82
    new-instance p0, Lgnu/math/IntNum;

    invoke-direct {p0, v0}, Lgnu/math/IntNum;-><init>(I)V

    return-object p0

    :cond_1
    const/4 v1, 0x2

    .line 83
    invoke-static {v1}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v2

    .line 84
    iput v1, v2, Lgnu/math/IntNum;->ival:I

    .line 85
    iget-object v1, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    const/16 v3, 0x20

    shr-long/2addr p0, v3

    long-to-int p1, p0

    .line 86
    aput p1, v1, v0

    return-object v2
.end method

.method public static make([I)Lgnu/math/IntNum;
    .locals 1

    .line 133
    array-length v0, p0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static make([II)Lgnu/math/IntNum;
    .locals 1

    if-nez p0, :cond_0

    .line 121
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-static {p0, p1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    if-nez p1, :cond_1

    .line 124
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    aget p0, p0, p1

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    :goto_0
    return-object p0

    .line 125
    :cond_2
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 126
    iput-object p0, v0, Lgnu/math/IntNum;->words:[I

    .line 127
    iput p1, v0, Lgnu/math/IntNum;->ival:I

    return-object v0
.end method

.method public static makeU(J)Lgnu/math/IntNum;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 107
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 108
    invoke-static {v0}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 109
    iput v0, v1, Lgnu/math/IntNum;->ival:I

    .line 110
    iget-object v0, v1, Lgnu/math/IntNum;->words:[I

    long-to-int v2, p0

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    const/16 v4, 0x20

    shr-long/2addr p0, v4

    long-to-int p1, p0

    .line 111
    aput p1, v0, v2

    const/4 p0, 0x2

    .line 112
    aput v3, v0, p0

    return-object v1
.end method

.method public static minusOne()Lgnu/math/IntNum;
    .locals 2

    .line 72
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x1

    .line 863
    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 2

    .line 1616
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    neg-int p0, v0

    .line 1617
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 1618
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 1619
    invoke-virtual {v0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1620
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static negate([I[II)Z
    .locals 11

    add-int/lit8 v0, p2, -0x1

    .line 1574
    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_1

    .line 1577
    aget v7, p1, v6

    not-int v7, v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 1578
    aput v7, p0, v6

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 1581
    aget p0, p0, v0

    if-gez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static final one()Lgnu/math/IntNum;
    .locals 2

    .line 61
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 8

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 888
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 890
    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "negative exponent"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 892
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 894
    :cond_2
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 895
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->intLength()I

    move-result v2

    mul-int v2, v2, p1

    shr-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    .line 896
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 897
    :goto_1
    new-array v5, v2, [I

    .line 898
    new-array v6, v2, [I

    .line 899
    new-array v2, v2, [I

    .line 900
    invoke-virtual {p0, v5}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 902
    aput v1, v6, v4

    :goto_2
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_6

    .line 909
    invoke-static {v2, v5, v0, v6, v1}, Lgnu/math/MPN;->mul([I[II[II)V

    add-int/2addr v1, v0

    :goto_3
    add-int/lit8 p0, v1, -0x1

    .line 912
    aget p0, v2, p0

    if-nez p0, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    move-object v7, v6

    move-object v6, v2

    move-object v2, v7

    :cond_6
    shr-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_9

    add-int/lit8 p0, v1, -0x1

    .line 923
    aget p0, v6, p0

    if-gez p0, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    if-eqz v3, :cond_8

    .line 926
    invoke-static {v6, v6, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 927
    :cond_8
    invoke-static {v6, v1}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 918
    :cond_9
    invoke-static {v2, v5, v0, v5, v0}, Lgnu/math/MPN;->mul([I[II[II)V

    mul-int/lit8 v0, v0, 0x2

    :goto_4
    add-int/lit8 p0, v0, -0x1

    .line 921
    aget p0, v2, p0

    if-nez p0, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_a
    move-object v7, v5

    move-object v5, v2

    move-object v2, v7

    goto :goto_2
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x3

    .line 834
    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2

    .line 827
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    const/4 v1, 0x0

    .line 828
    invoke-static {p0, p1, v0, v1, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 829
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, 0x3

    .line 858
    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2

    .line 849
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 851
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    const/4 v1, 0x0

    .line 852
    invoke-static {p0, p1, v1, v0, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 853
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static shift(II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_1

    shl-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p1, p1

    if-lt p1, v1, :cond_3

    if-gez p0, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0

    :cond_3
    shr-int/2addr p0, p1

    return p0
.end method

.method public static shift(JI)J
    .locals 3

    const/16 v0, 0x20

    const-wide/16 v1, 0x0

    if-lt p2, v0, :cond_0

    return-wide v1

    :cond_0
    if-ltz p2, :cond_1

    shl-long/2addr p0, p2

    return-wide p0

    :cond_1
    neg-int p2, p2

    if-lt p2, v0, :cond_3

    cmp-long p2, p0, v1

    if-gez p2, :cond_2

    const-wide/16 v1, -0x1

    :cond_2
    return-wide v1

    :cond_3
    shr-long/2addr p0, p2

    return-wide p0
.end method

.method public static shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2

    .line 1094
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-gtz p1, :cond_2

    const/16 v0, -0x20

    .line 1097
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    if-le p1, v0, :cond_0

    neg-int p1, p1

    shr-int v1, p0, p1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 v1, -0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x20

    if-ge p1, v0, :cond_3

    .line 1099
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v0, p0

    shl-long p0, v0, p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    return-object p0

    .line 1103
    :cond_4
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 1104
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setShift(Lgnu/math/IntNum;I)V

    .line 1105
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1

    const/4 v0, -0x1

    .line 424
    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static final ten()Lgnu/math/IntNum;
    .locals 2

    .line 66
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x6e

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final times(II)Lgnu/math/IntNum;
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    .line 469
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static final times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 5

    if-nez p1, :cond_0

    .line 475
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    .line 478
    :cond_1
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 479
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    if-nez v1, :cond_2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    .line 481
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, p0, 0x1

    .line 483
    invoke-static {v2}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v3

    add-int/lit8 v4, p0, -0x1

    .line 484
    aget v4, v1, v4

    if-gez v4, :cond_3

    .line 487
    iget-object v4, v3, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v1, p0}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 488
    iget-object v1, v3, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-gez p1, :cond_4

    xor-int/lit8 v0, v0, 0x1

    neg-int p1, p1

    .line 497
    :cond_4
    iget-object v4, v3, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v1, p0, p1}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result p1

    aput p1, v4, p0

    .line 498
    iput v2, v3, Lgnu/math/IntNum;->ival:I

    if-eqz v0, :cond_5

    .line 500
    invoke-virtual {v3}, Lgnu/math/IntNum;->setNegative()V

    .line 501
    :cond_5
    invoke-virtual {v3}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static final times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 8

    .line 506
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 507
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 508
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 509
    iget p0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, p0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 513
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 514
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    .line 515
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    new-array v2, v0, [I

    .line 519
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v2, p0, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 524
    iget-object p0, p0, Lgnu/math/IntNum;->words:[I

    move-object v2, p0

    const/4 p0, 0x0

    .line 526
    :goto_0
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_3

    xor-int/lit8 p0, p0, 0x1

    .line 529
    new-array v3, v1, [I

    .line 530
    iget-object p1, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v3, p1, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    goto :goto_1

    .line 533
    :cond_3
    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    :goto_1
    if-ge v0, v1, :cond_4

    move v6, v1

    move v1, v0

    move v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_4
    add-int p1, v0, v1

    .line 540
    invoke-static {p1}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v4

    .line 541
    iget-object v5, v4, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, v2, v0, v3, v1}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 542
    iput p1, v4, Lgnu/math/IntNum;->ival:I

    if-eqz p0, :cond_5

    .line 544
    invoke-virtual {v4}, Lgnu/math/IntNum;->setNegative()V

    .line 545
    :cond_5
    invoke-virtual {v4}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/math/IntNum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1401
    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v0, p1

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1c

    if-gt v1, v5, :cond_1

    if-le v0, v4, :cond_0

    .line 1353
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1355
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1357
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 1361
    :cond_1
    new-array v1, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 1365
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2

    if-nez v3, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v2, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0x5f

    if-eq v7, v8, :cond_6

    if-nez v5, :cond_4

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    const/16 v8, 0x9

    if-ne v7, v8, :cond_4

    goto :goto_1

    .line 1374
    :cond_4
    invoke-static {v7, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ltz v7, :cond_5

    add-int/lit8 v8, v5, 0x1

    int-to-byte v7, v7

    .line 1377
    aput-byte v7, v1, v5

    move v5, v8

    goto :goto_1

    .line 1376
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For input string: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    :cond_7
    invoke-static {v1, v5, v6, p1}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([BIZI)Lgnu/math/IntNum;
    .locals 1

    .line 1386
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v0

    .line 1387
    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 1388
    invoke-static {v0, p0, p1, p3}, Lgnu/math/MPN;->set_str([I[BII)I

    move-result p0

    if-nez p0, :cond_0

    .line 1390
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p0, -0x1

    .line 1391
    aget p1, v0, p1

    if-gez p1, :cond_1

    add-int/lit8 p1, p0, 0x1

    const/4 p3, 0x0

    .line 1392
    aput p3, v0, p0

    move p0, p1

    :cond_1
    if-eqz p2, :cond_2

    .line 1394
    invoke-static {v0, v0, p0}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1395
    :cond_2
    invoke-static {v0, p0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([CIIIZ)Lgnu/math/IntNum;
    .locals 5

    .line 1325
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    add-int v3, p1, v1

    .line 1328
    aget-char v3, p0, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1335
    :cond_1
    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 1338
    aput-byte v3, v0, v2

    move v2, v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    :cond_4
    :goto_2
    invoke-static {v0, v2, p4, p3}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static wordsNeeded([II)I
    .locals 2

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 292
    aget v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 295
    aget v0, p0, v0

    if-gez v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 303
    aget v0, p0, v0

    if-ltz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static final zero()Lgnu/math/IntNum;
    .locals 2

    .line 56
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x64

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1

    .line 1514
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1515
    check-cast p1, Lgnu/math/IntNum;

    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 1516
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1518
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 1517
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 1705
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    .line 1707
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1708
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1709
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 1698
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1700
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1699
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canonicalize()Lgnu/math/IntNum;
    .locals 3

    .line 311
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_1

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v0

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    :cond_0
    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 318
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_2

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/16 v1, -0x64

    if-lt v0, v1, :cond_2

    const/16 v2, 0x400

    if-gt v0, v2, :cond_2

    .line 319
    sget-object v2, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method checkBits(I)Z
    .locals 5

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 1422
    :cond_0
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-nez v1, :cond_3

    if-gt p1, v2, :cond_1

    .line 1423
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    shl-int p1, v3, p1

    sub-int/2addr p1, v3

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    shr-int/lit8 v4, p1, 0x5

    if-ge v1, v4, :cond_5

    .line 1426
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v1

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    .line 1428
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v2, v1

    shl-int p1, v3, p1

    sub-int/2addr p1, v3

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1

    .line 257
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lgnu/math/IntNum;

    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result p1

    return p1

    .line 259
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result p1

    return p1
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 1

    .line 188
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 1532
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 1534
    check-cast p1, Lgnu/math/RatNum;

    .line 1535
    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {v0, p1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 1538
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1540
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 1539
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public doubleValue()D
    .locals 3

    .line 1406
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1407
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-double v0, v0

    return-wide v0

    .line 1408
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1409
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 1410
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1411
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    return-wide v0

    .line 1413
    :cond_2
    invoke-virtual {p0, v1, v1, v1}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1316
    instance-of v0, p1, Lgnu/math/IntNum;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    check-cast p1, Lgnu/math/IntNum;

    invoke-static {p0, p1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public format(ILjava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1137
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1139
    iget p1, p0, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void

    .line 1142
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void

    .line 1148
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public format(ILjava/lang/StringBuilder;)V
    .locals 13

    .line 1160
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/16 v1, 0xa

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 1163
    iget p1, p0, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1165
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1167
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    .line 1169
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    if-ne p1, v1, :cond_2

    .line 1171
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1173
    :cond_2
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 1185
    :cond_4
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_1

    .line 1181
    :cond_5
    :goto_0
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    new-array v2, v2, [I

    .line 1182
    invoke-virtual {p0, v2}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 1186
    :goto_1
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    const/16 v4, 0x2d

    if-ne p1, v1, :cond_a

    if-eqz v0, :cond_6

    .line 1191
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    :cond_7
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_12

    .line 1195
    aget v0, v2, v3

    const/16 v4, 0x8

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_7

    mul-int/lit8 v5, v4, 0x4

    shr-int v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    if-gtz v5, :cond_9

    .line 1200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, p1, :cond_8

    .line 1201
    :cond_9
    invoke-static {v5, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1207
    :cond_a
    invoke-static {p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v1

    move v6, p1

    move v5, v1

    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_b

    mul-int v6, v6, p1

    goto :goto_3

    .line 1211
    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1214
    :cond_c
    invoke-static {v2, v2, v3, v6}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v7

    :goto_4
    if-lez v3, :cond_d

    add-int/lit8 v8, v3, -0x1

    .line 1215
    aget v8, v2, v8

    if-nez v8, :cond_d

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_d
    move v8, v1

    :goto_5
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_10

    if-nez v3, :cond_e

    if-nez v7, :cond_e

    goto :goto_7

    :cond_e
    if-gez v7, :cond_f

    int-to-long v9, v7

    const-wide/16 v11, -0x1

    and-long/2addr v9, v11

    int-to-long v11, p1

    .line 1223
    rem-long/2addr v9, v11

    long-to-int v10, v9

    .line 1224
    div-int/2addr v7, p1

    goto :goto_6

    .line 1228
    :cond_f
    rem-int v10, v7, p1

    .line 1229
    div-int/2addr v7, p1

    .line 1231
    :goto_6
    invoke-static {v10, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    :goto_7
    if-nez v3, :cond_c

    if-eqz v0, :cond_11

    .line 1237
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    :cond_11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ge v5, p1, :cond_12

    .line 1242
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1243
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1244
    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_12
    :goto_9
    return-void
.end method

.method public getAbsolute([I)V
    .locals 4

    .line 1551
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1554
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    aput v0, p1, v1

    const/4 v0, 0x1

    goto :goto_1

    .line 1558
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    move v2, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 1560
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    aput v3, p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .line 1562
    aget v2, p1, v2

    if-gez v2, :cond_2

    .line 1563
    invoke-static {p1, p1, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1564
    :cond_2
    array-length v2, p1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-le v2, v0, :cond_3

    .line 1565
    aput v1, p1, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1295
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public inIntRange()Z
    .locals 4

    const-wide/32 v0, -0x80000000

    const-wide/32 v2, 0x7fffffff

    .line 1721
    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inLongRange()Z
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    const-wide v2, 0x7fffffffffffffffL

    .line 1727
    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inRange(JJ)Z
    .locals 0

    .line 1715
    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p0, p3, p4}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intLength()I
    .locals 2

    .line 1633
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1634
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    return v0

    .line 1636
    :cond_0
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/MPN;->intLength([II)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1269
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1270
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1271
    aget v0, v0, v1

    return v0
.end method

.method public final isMinusOne()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNegative()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    :goto_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isOdd()Z
    .locals 3

    .line 264
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    aget v0, v0, v1

    :goto_0
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isOne()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isZero()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 7

    .line 1286
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1287
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 1288
    :cond_0
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1289
    aget v0, v0, v2

    goto :goto_0

    .line 1290
    :cond_1
    aget v1, v0, v3

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    aget v0, v0, v2

    int-to-long v0, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 1523
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1524
    check-cast p1, Lgnu/math/IntNum;

    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 1525
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1527
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 1526
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .line 1625
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 0

    return-object p0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lgnu/math/IntNum;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 870
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isMinusOne()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p1

    :goto_0
    return-object p1

    .line 872
    :cond_2
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_3

    iget v0, p1, Lgnu/math/IntNum;->ival:I

    if-ltz v0, :cond_3

    .line 873
    invoke-static {p0, v0}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 874
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    invoke-static {p1}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p0

    :goto_1
    return-object p1

    .line 876
    :cond_5
    invoke-super {p0, p1}, Lgnu/math/RatNum;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1674
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    if-gt v0, v1, :cond_2

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1679
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    goto :goto_1

    .line 1682
    :cond_0
    new-array v1, v0, [I

    move v2, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 1684
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 1685
    :cond_1
    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 1688
    :cond_2
    :goto_1
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1693
    invoke-virtual {p0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public realloc(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 154
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz p1, :cond_5

    .line 156
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-lez v1, :cond_0

    .line 157
    aget p1, p1, v0

    iput p1, p0, Lgnu/math/IntNum;->ival:I

    :cond_0
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_1

    .line 161
    :cond_1
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, p1, :cond_2

    array-length v2, v1

    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_5

    .line 165
    :cond_2
    new-array v2, p1, [I

    if-nez v1, :cond_3

    .line 168
    iget p1, p0, Lgnu/math/IntNum;->ival:I

    aput p1, v2, v0

    const/4 p1, 0x1

    .line 169
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    .line 173
    :cond_3
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    if-ge p1, v3, :cond_4

    .line 174
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 175
    :cond_4
    iget p1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :goto_0
    iput-object v2, p0, Lgnu/math/IntNum;->words:[I

    :cond_5
    :goto_1
    return-void
.end method

.method public roundToDouble(IZZ)D
    .locals 18

    move-object/from16 v0, p0

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->intLength()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    add-int v2, p1, v2

    const/16 v3, -0x433

    if-ge v2, v3, :cond_1

    if-eqz p2, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_1
    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v7, 0x3ff

    if-le v2, v7, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    return-wide v3

    :cond_3
    const/16 v8, -0x3fe

    if-lt v2, v8, :cond_4

    const/16 v8, 0x35

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v2, 0x35

    add-int/lit16 v8, v8, 0x3fe

    :goto_2
    add-int/lit8 v9, v8, 0x1

    sub-int v9, v1, v9

    if-lez v9, :cond_6

    .line 1467
    iget-object v10, v0, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_5

    iget v10, v0, Lgnu/math/IntNum;->ival:I

    shr-int/2addr v10, v9

    int-to-long v10, v10

    goto :goto_3

    :cond_5
    iget v11, v0, Lgnu/math/IntNum;->ival:I

    invoke-static {v10, v11, v9}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v10

    goto :goto_3

    .line 1470
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v10

    neg-int v12, v9

    shl-long/2addr v10, v12

    :goto_3
    const/4 v12, 0x1

    if-ne v2, v7, :cond_b

    shr-long v13, v10, v12

    const-wide v15, 0x1fffffffffffffL

    cmp-long v17, v13, v15

    if-nez v17, :cond_b

    if-nez p3, :cond_9

    sub-int/2addr v1, v8

    .line 1476
    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    const-wide v1, -0x10000000000001L

    goto :goto_4

    :cond_8
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_4
    return-wide v1

    :cond_9
    :goto_5
    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move-wide v3, v5

    :goto_6
    return-wide v3

    :cond_b
    const-wide/16 v3, 0x1

    and-long v5, v10, v3

    const/16 v1, 0x34

    const-wide/16 v13, 0x0

    cmp-long v15, v5, v3

    if-nez v15, :cond_e

    const-wide/16 v3, 0x2

    and-long v5, v10, v3

    cmp-long v15, v5, v3

    if-eqz v15, :cond_c

    if-nez p3, :cond_c

    .line 1484
    invoke-virtual {v0, v9}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    add-long/2addr v10, v3

    const-wide/high16 v3, 0x40000000000000L

    and-long/2addr v3, v10

    cmp-long v5, v3, v13

    if-eqz v5, :cond_d

    add-int/lit8 v2, v2, 0x1

    shr-long/2addr v10, v12

    goto :goto_7

    :cond_d
    if-ne v8, v1, :cond_e

    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v10

    cmp-long v5, v3, v13

    if-eqz v5, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    :goto_7
    shr-long v3, v10, v12

    if-eqz p2, :cond_f

    const-wide/high16 v5, -0x8000000000000000L

    goto :goto_8

    :cond_f
    move-wide v5, v13

    :goto_8
    add-int/2addr v2, v7

    if-gtz v2, :cond_10

    goto :goto_9

    :cond_10
    int-to-long v7, v2

    shl-long v13, v7, v1

    :goto_9
    const-wide v1, -0x10000000000001L

    and-long/2addr v1, v3

    or-long v3, v5, v13

    or-long/2addr v1, v3

    .line 1508
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method public final set(I)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 373
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    return-void
.end method

.method public final set(J)V
    .locals 4

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 382
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 p1, 0x0

    .line 383
    iput-object p1, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 387
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 388
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/16 v3, 0x20

    shr-long/2addr p1, v3

    long-to-int p2, p1

    .line 389
    aput p2, v2, v0

    .line 390
    iput v1, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    return-void
.end method

.method public final set(Lgnu/math/IntNum;)V
    .locals 4

    .line 405
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 406
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->set(I)V

    goto :goto_0

    :cond_0
    if-eq p0, p1, :cond_1

    .line 409
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->realloc(I)V

    .line 410
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    iput p1, p0, Lgnu/math/IntNum;->ival:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final set([II)V
    .locals 0

    .line 398
    iput p2, p0, Lgnu/math/IntNum;->ival:I

    .line 399
    iput-object p1, p0, Lgnu/math/IntNum;->words:[I

    return-void
.end method

.method public final setAdd(I)V
    .locals 0

    .line 366
    invoke-virtual {p0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    return-void
.end method

.method public setAdd(Lgnu/math/IntNum;I)V
    .locals 8

    .line 343
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 345
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lgnu/math/IntNum;->set(J)V

    return-void

    .line 348
    :cond_0
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    add-int/lit8 v1, v0, 0x1

    .line 349
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    int-to-long v2, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 353
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, p2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 354
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    long-to-int v5, v2

    aput v5, v4, p2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object p1, p1, Lgnu/math/IntNum;->words:[I

    add-int/lit8 p2, v0, -0x1

    aget p1, p1, p2

    if-gez p1, :cond_2

    const-wide/16 p1, 0x1

    sub-long/2addr v2, p1

    .line 359
    :cond_2
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    long-to-int p2, v2

    aput p2, p1, v0

    .line 360
    invoke-static {p1, v1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result p1

    iput p1, p0, Lgnu/math/IntNum;->ival:I

    return-void
.end method

.method setInvert()V
    .locals 3

    .line 1007
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1008
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    not-int v0, v0

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    .line 1011
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1012
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v1, v0

    not-int v2, v2

    aput v2, v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setNegative()V
    .locals 0

    .line 1606
    invoke-virtual {p0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    return-void
.end method

.method public setNegative(Lgnu/math/IntNum;)V
    .locals 3

    .line 1588
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    .line 1589
    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    const/high16 p1, -0x80000000

    if-ne v0, p1, :cond_0

    int-to-long v0, v0

    neg-long v0, v0

    .line 1592
    invoke-virtual {p0, v0, v1}, Lgnu/math/IntNum;->set(J)V

    goto :goto_0

    :cond_0
    neg-int p1, v0

    .line 1594
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->set(I)V

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 1597
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 1598
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    iget-object p1, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v2, p1, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1599
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    aput v2, p1, v0

    move v0, v1

    .line 1600
    :cond_2
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    return-void
.end method

.method setShift(Lgnu/math/IntNum;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 1087
    invoke-virtual {p0, p1, p2}, Lgnu/math/IntNum;->setShiftLeft(Lgnu/math/IntNum;I)V

    goto :goto_0

    :cond_0
    neg-int p2, p2

    .line 1089
    invoke-virtual {p0, p1, p2}, Lgnu/math/IntNum;->setShiftRight(Lgnu/math/IntNum;I)V

    :goto_0
    return-void
.end method

.method setShiftLeft(Lgnu/math/IntNum;I)V
    .locals 6

    .line 1020
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-ge p2, v2, :cond_0

    .line 1024
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v0, p1

    shl-long p1, v0, p2

    invoke-virtual {p0, p1, p2}, Lgnu/math/IntNum;->set(J)V

    return-void

    :cond_0
    new-array v0, v3, [I

    .line 1028
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    aput p1, v0, v1

    goto :goto_0

    .line 1034
    :cond_1
    iget v3, p1, Lgnu/math/IntNum;->ival:I

    :goto_0
    shr-int/lit8 p1, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    add-int v4, v3, p1

    if-nez p2, :cond_2

    .line 1041
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 1043
    iget-object p2, p0, Lgnu/math/IntNum;->words:[I

    add-int v2, v3, p1

    aget v5, v0, v3

    aput v5, p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1048
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1049
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, p1, v0, v3, p2}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v0

    sub-int/2addr v2, p2

    .line 1051
    iget-object p2, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v3, v4, -0x1

    shl-int/2addr v0, v2

    shr-int/2addr v0, v2

    aput v0, p2, v3

    .line 1053
    :cond_3
    iput v4, p0, Lgnu/math/IntNum;->ival:I

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 1055
    iget-object p2, p0, Lgnu/math/IntNum;->words:[I

    aput v1, p2, p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method setShiftRight(Lgnu/math/IntNum;I)V
    .locals 5

    .line 1060
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    .line 1061
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    if-ge p2, v0, :cond_0

    shr-int v1, p1, p2

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->set(I)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 1063
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto :goto_2

    .line 1066
    :cond_3
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    shr-int/lit8 v3, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    .line 1069
    iget v4, p1, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v4, v3

    if-gtz v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1071
    :goto_1
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->set(I)V

    goto :goto_2

    .line 1074
    :cond_5
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_6

    array-length v1, v1

    if-ge v1, v4, :cond_7

    .line 1075
    :cond_6
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1076
    :cond_7
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object p1, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v1, p1, v3, v4, p2}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 1077
    iput v4, p0, Lgnu/math/IntNum;->ival:I

    if-eqz v0, :cond_8

    .line 1079
    iget-object p1, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v4, v4, -0x1

    aget v0, p1, v4

    const/4 v1, -0x2

    rsub-int/lit8 p2, p2, 0x1f

    shl-int p2, v1, p2

    or-int/2addr p2, v0

    aput p2, p1, v4

    :cond_8
    :goto_2
    return-void
.end method

.method public sign()I
    .locals 6

    .line 198
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 199
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v1, :cond_2

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    add-int/2addr v0, v4

    .line 202
    aget v5, v1, v0

    if-lez v5, :cond_3

    return v3

    :cond_3
    if-gez v5, :cond_4

    return v4

    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 211
    aget v4, v1, v0

    if-eqz v4, :cond_4

    return v3
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 0

    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 1253
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1254
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1255
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1256
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1257
    :cond_1
    invoke-static {p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1263
    invoke-virtual {p0, p1, v1}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuilder;)V

    .line 1264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v2}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v0

    :goto_0
    if-gt v0, v1, :cond_4

    .line 1653
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    :cond_1
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    aget v1, v0, v1

    :goto_1
    const/high16 v0, -0x40000000    # -2.0f

    if-lt v1, v0, :cond_3

    .line 1655
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_3

    :cond_3
    const v0, -0x7fffffff

    .line 1658
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1659
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    .line 1664
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 1666
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
