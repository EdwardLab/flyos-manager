.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .locals 12

    .line 252
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    int-to-long v2, p2

    iget p2, p1, Lgnu/math/Duration;->months:I

    int-to-long v4, p2

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    .line 255
    iget-wide v4, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v6, 0x3b9aca00

    mul-long v4, v4, v6

    iget p2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v8, p2

    add-long/2addr v4, v8

    iget-wide v8, p1, Lgnu/math/Duration;->seconds:J

    mul-long v8, v8, v6

    iget p2, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v10, p2

    add-long/2addr v8, v10

    mul-long v2, v2, v8

    add-long/2addr v4, v2

    .line 259
    new-instance p2, Lgnu/math/Duration;

    invoke-direct {p2}, Lgnu/math/Duration;-><init>()V

    long-to-int v1, v0

    .line 260
    iput v1, p2, Lgnu/math/Duration;->months:I

    .line 261
    div-long v0, v4, v6

    long-to-int v1, v0

    int-to-long v0, v1

    iput-wide v0, p2, Lgnu/math/Duration;->seconds:J

    .line 262
    rem-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, p2, Lgnu/math/Duration;->nanos:I

    .line 263
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object p1, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v0, p1, :cond_0

    sget-object p1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, p1, :cond_0

    .line 265
    iget-object p0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object p0, p2, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object p2

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "cannot add these duration types"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2e

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 v1, v0, 0x9

    sub-int p0, v1, p0

    :goto_0
    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0x30

    if-ltz p0, :cond_1

    .line 380
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 382
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .locals 8

    .line 287
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    iget v2, p1, Lgnu/math/Duration;->months:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 288
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget p0, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, p0

    add-long/2addr v2, v6

    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    mul-long v6, v6, v4

    iget p0, p1, Lgnu/math/Duration;->nanos:I

    int-to-long p0, p0

    add-long/2addr v6, p0

    sub-long/2addr v2, v6

    const/4 p0, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-lez p1, :cond_1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_4

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_4
    const/4 p0, -0x2

    return p0
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .locals 8

    .line 217
    iget v0, p0, Lgnu/math/Duration;->months:I

    .line 218
    iget v1, p1, Lgnu/math/Duration;->months:I

    .line 219
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    long-to-double v2, v2

    iget p0, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v4, p0

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    .line 220
    iget-wide v4, p1, Lgnu/math/Duration;->seconds:J

    long-to-double v4, v4

    int-to-double p0, p0

    mul-double p0, p0, v6

    add-double/2addr v4, p0

    const-wide/16 p0, 0x0

    if-nez v1, :cond_1

    cmpl-double v6, v4, p0

    if-eqz v6, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "divide duration by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_3

    div-double/2addr v2, v4

    return-wide v2

    :cond_2
    cmpl-double v6, v4, p0

    if-nez v6, :cond_3

    cmpl-double v4, v2, p0

    if-nez v4, :cond_3

    int-to-double p0, v0

    int-to-double v0, v1

    div-double/2addr p0, v0

    return-wide p0

    .line 233
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "divide of incompatible durations"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .locals 5

    .line 512
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget v1, p1, Lgnu/math/Duration;->months:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    iget-wide v2, p1, Lgnu/math/Duration;->seconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget p0, p0, Lgnu/math/Duration;->nanos:I

    iget p1, p1, Lgnu/math/Duration;->nanos:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .locals 1

    .line 24
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 25
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 26
    iput-wide p1, v0, Lgnu/math/Duration;->seconds:J

    .line 27
    iput p3, v0, Lgnu/math/Duration;->nanos:I

    .line 28
    iput-object p4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .locals 3

    .line 42
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 43
    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    mul-int/lit8 p0, p0, 0x3c

    int-to-long v1, p0

    .line 44
    iput-wide v1, v0, Lgnu/math/Duration;->seconds:J

    return-object v0
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .locals 2

    .line 34
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 35
    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    iput p0, v0, Lgnu/math/Duration;->months:I

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 3

    .line 50
    invoke-static {p0, p1}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " duration: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1

    .line 69
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1

    .line 58
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1

    .line 63
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .locals 10

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, -0x1

    move v3, p1

    move-wide v4, v1

    :cond_0
    const-wide/16 v6, 0x0

    if-ge v3, v0, :cond_4

    .line 398
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0xa

    .line 400
    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    if-gez v9, :cond_2

    cmp-long p0, v4, v6

    if-gez p0, :cond_1

    shl-int/lit8 p0, p1, 0x10

    int-to-long p0, p0

    return-wide p0

    :cond_1
    const/16 p0, 0x20

    shl-long p0, v4, p0

    shl-int/lit8 v0, v3, 0x10

    int-to-long v0, v0

    or-long/2addr p0, v0

    int-to-long v0, v8

    or-long/2addr p0, v0

    return-wide p0

    :cond_2
    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    int-to-long v4, v9

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0xa

    mul-long v4, v4, v6

    int-to-long v6, v9

    add-long/2addr v4, v6

    :goto_0
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    return-wide v1

    :cond_4
    cmp-long p0, v4, v6

    if-gez p0, :cond_5

    shl-int/lit8 p0, p1, 0x10

    int-to-long v1, p0

    :cond_5
    return-wide v1
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .locals 6

    .line 271
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_1

    .line 273
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-double v0, v0

    mul-double v0, v0, p1

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    mul-double v2, v2, p1

    .line 277
    new-instance p1, Lgnu/math/Duration;

    invoke-direct {p1}, Lgnu/math/Duration;-><init>()V

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p1, Lgnu/math/Duration;->months:I

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double v4, v2, v0

    double-to-int p2, v4

    int-to-long v4, p2

    .line 279
    iput-wide v4, p1, Lgnu/math/Duration;->seconds:J

    rem-double/2addr v2, v0

    double-to-int p2, v2

    .line 280
    iput p2, p1, Lgnu/math/Duration;->nanos:I

    .line 281
    iget-object p0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object p0, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object p1

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow/NaN when multiplying a duration"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot multiply general duration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 20

    move-object/from16 v0, p1

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    if-ge v6, v2, :cond_1a

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x50

    if-eq v4, v8, :cond_1

    goto/16 :goto_7

    .line 93
    :cond_1
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v4, v10

    shr-int/lit8 v6, v4, 0x10

    int-to-char v4, v4

    .line 96
    sget-object v12, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    const/16 v13, 0x59

    const/16 v14, 0x4d

    if-ne v0, v12, :cond_3

    if-eq v4, v13, :cond_2

    if-ne v4, v14, :cond_3

    :cond_2
    return-object v7

    :cond_3
    const/16 v12, 0x20

    if-ne v4, v13, :cond_4

    shr-long/2addr v10, v12

    long-to-int v4, v10

    mul-int/lit8 v4, v4, 0xc

    .line 102
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v13, v10

    int-to-char v13, v13

    move-wide v8, v10

    move v10, v4

    move v4, v13

    goto :goto_1

    :cond_4
    move-wide v8, v10

    const/4 v10, 0x0

    :goto_1
    if-ne v4, v14, :cond_5

    int-to-long v10, v10

    shr-long v17, v8, v12

    add-long v10, v10, v17

    long-to-int v10, v10

    long-to-int v4, v8

    shr-int/lit8 v6, v4, 0x10

    .line 109
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-char v4, v4

    .line 112
    :cond_5
    sget-object v11, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v11, :cond_6

    if-eq v6, v2, :cond_6

    return-object v7

    :cond_6
    const/16 v11, 0x44

    if-ne v4, v11, :cond_8

    .line 116
    sget-object v4, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v4, :cond_7

    return-object v7

    :cond_7
    const-wide/32 v15, 0x15180

    shr-long v3, v8, v12

    long-to-int v4, v3

    int-to-long v3, v4

    mul-long v3, v3, v15

    long-to-int v6, v8

    shr-int/lit8 v6, v6, 0x10

    .line 120
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v8

    move-wide v15, v3

    goto :goto_2

    :cond_8
    const-wide/16 v15, 0x0

    :goto_2
    shl-int/lit8 v3, v6, 0x10

    int-to-long v3, v3

    cmp-long v11, v8, v3

    if-eqz v11, :cond_9

    return-object v7

    :cond_9
    if-ne v6, v2, :cond_b

    :cond_a
    move-wide v8, v15

    const/4 v3, 0x0

    goto/16 :goto_6

    .line 128
    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_1a

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v2, :cond_c

    goto/16 :goto_7

    .line 132
    :cond_c
    sget-object v3, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v3, :cond_d

    return-object v7

    .line 134
    :cond_d
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v8, v3

    int-to-char v9, v8

    const/16 v11, 0x48

    if-ne v9, v11, :cond_e

    shr-long/2addr v3, v12

    long-to-int v4, v3

    mul-int/lit16 v4, v4, 0xe10

    int-to-long v3, v4

    add-long/2addr v15, v3

    shr-int/lit8 v6, v8, 0x10

    .line 140
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v8, v3

    int-to-char v9, v8

    :cond_e
    if-ne v9, v14, :cond_f

    shr-long v8, v3, v12

    long-to-int v6, v8

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v8, v6

    add-long/2addr v15, v8

    long-to-int v4, v3

    shr-int/lit8 v6, v4, 0x10

    .line 147
    invoke-static {v1, v6}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v8, v3

    int-to-char v9, v8

    :cond_f
    const/16 v8, 0x2e

    const/16 v11, 0x53

    if-eq v9, v11, :cond_10

    if-ne v9, v8, :cond_11

    :cond_10
    shr-long v12, v3, v12

    long-to-int v6, v12

    int-to-long v12, v6

    add-long/2addr v15, v12

    long-to-int v4, v3

    shr-int/lit8 v3, v4, 0x10

    move v6, v3

    :cond_11
    if-ne v9, v8, :cond_a

    add-int/lit8 v3, v6, 0x1

    if-ge v3, v2, :cond_a

    .line 155
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_a

    move v8, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v12, 0x9

    if-ge v8, v2, :cond_15

    add-int/lit8 v9, v8, 0x1

    .line 161
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 162
    invoke-static {v8, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-gez v13, :cond_12

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_5

    :cond_12
    if-ge v3, v12, :cond_13

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v13

    goto :goto_4

    :cond_13
    if-ne v3, v12, :cond_14

    const/4 v12, 0x5

    if-lt v13, v12, :cond_14

    add-int/lit8 v6, v6, 0x1

    :cond_14
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_3

    :cond_15
    :goto_5
    add-int/lit8 v1, v3, 0x1

    if-ge v3, v12, :cond_16

    mul-int/lit8 v6, v6, 0xa

    move v3, v1

    goto :goto_5

    :cond_16
    if-eq v9, v11, :cond_17

    return-object v7

    :cond_17
    move v3, v6

    move v6, v8

    move-wide v8, v15

    :goto_6
    if-eq v6, v2, :cond_18

    return-object v7

    .line 178
    :cond_18
    new-instance v1, Lgnu/math/Duration;

    invoke-direct {v1}, Lgnu/math/Duration;-><init>()V

    if-eqz v5, :cond_19

    neg-int v10, v10

    neg-long v8, v8

    neg-int v3, v3

    .line 185
    :cond_19
    iput v10, v1, Lgnu/math/Duration;->months:I

    .line 186
    iput-wide v8, v1, Lgnu/math/Duration;->seconds:J

    .line 187
    iput v3, v1, Lgnu/math/Duration;->nanos:I

    .line 188
    iput-object v0, v1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v1

    :cond_1a
    :goto_7
    return-object v7
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1

    .line 194
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1, p2}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 197
    check-cast p1, Lgnu/math/DateTime;

    invoke-static {p1, p0, v0}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1

    .line 301
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result p1

    return p1

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .line 238
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 243
    invoke-static {p0, v2, v3}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "divide of duration by 0 or NaN"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_1
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 247
    :cond_2
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 522
    instance-of v0, p1, Lgnu/math/Duration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDays()I
    .locals 4

    .line 426
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getHours()I
    .locals 4

    .line 431
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMinutes()I
    .locals 4

    .line 436
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMonths()I
    .locals 1

    .line 421
    iget v0, p0, Lgnu/math/Duration;->months:I

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getNanoSeconds()J
    .locals 4

    .line 466
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    iget v2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNanoSecondsOnly()I
    .locals 1

    .line 446
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    return v0
.end method

.method public getSecondsOnly()I
    .locals 4

    .line 441
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getTotalMinutes()J
    .locals 4

    .line 461
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMonths()I
    .locals 1

    .line 451
    iget v0, p0, Lgnu/math/Duration;->months:I

    return v0
.end method

.method public getTotalSeconds()J
    .locals 2

    .line 456
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    .line 416
    iget v0, p0, Lgnu/math/Duration;->months:I

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 504
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget-wide v1, p0, Lgnu/math/Duration;->seconds:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 471
    iget v0, p0, Lgnu/math/Duration;->months:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2

    .line 203
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 2

    .line 210
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 212
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 490
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->months:I

    .line 491
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/Duration;->seconds:J

    .line 492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->nanos:I

    .line 493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/math/Unit;

    iput-object p1, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    iget v1, p0, Lgnu/math/Duration;->months:I

    .line 311
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    .line 312
    iget v4, p0, Lgnu/math/Duration;->nanos:I

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-ltz v1, :cond_1

    cmp-long v8, v2, v6

    if-ltz v8, :cond_1

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    neg-int v1, v1

    neg-long v2, v2

    neg-int v4, v4

    const/16 v8, 0x2d

    .line 319
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v8, 0x50

    .line 321
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    div-int/lit8 v8, v1, 0xc

    if-eqz v8, :cond_3

    .line 325
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v9, 0x59

    .line 326
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-int/lit8 v8, v8, 0xc

    sub-int/2addr v1, v8

    :cond_3
    const/16 v8, 0x4d

    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    const-wide/32 v9, 0x15180

    .line 334
    div-long v11, v2, v9

    cmp-long v1, v11, v6

    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x44

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-long v11, v11, v9

    sub-long/2addr v2, v11

    :cond_5
    cmp-long v1, v2, v6

    if-nez v1, :cond_8

    if-eqz v4, :cond_6

    goto :goto_3

    .line 365
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 366
    iget-object v1, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v2, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v1, v2, :cond_7

    const-string v1, "0M"

    goto :goto_2

    :cond_7
    const-string v1, "T0S"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v1, 0x54

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v9, 0xe10

    .line 344
    div-long v11, v2, v9

    cmp-long v1, v11, v6

    if-eqz v1, :cond_9

    .line 347
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x48

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-long v11, v11, v9

    sub-long/2addr v2, v11

    :cond_9
    const-wide/16 v9, 0x3c

    .line 351
    div-long v11, v2, v9

    cmp-long v1, v11, v6

    if-eqz v1, :cond_a

    .line 354
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-long v11, v11, v9

    sub-long/2addr v2, v11

    :cond_a
    cmp-long v1, v2, v6

    if-nez v1, :cond_b

    if-eqz v4, :cond_c

    .line 360
    :cond_b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v4, v0}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    const/16 v1, 0x53

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    :cond_c
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 496
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    iget v0, p0, Lgnu/math/Duration;->months:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
