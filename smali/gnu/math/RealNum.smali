.class public abstract Lgnu/math/RealNum;
.super Lgnu/math/Complex;
.source "RealNum.java"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    move-object p1, p0

    check-cast p1, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 3

    .line 17
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 18
    check-cast p0, Lgnu/math/RealNum;

    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 20
    :cond_2
    :goto_0
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    move-object p1, p0

    check-cast p1, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    move-object p1, p0

    check-cast p1, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static toExactInt(D)Lgnu/math/IntNum;
    .locals 5

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x34

    shr-long v3, p0, v1

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0x7ff

    const-wide v3, 0xfffffffffffffL

    and-long/2addr p0, v3

    if-nez v1, :cond_1

    shl-long/2addr p0, v2

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr p0, v2

    :goto_1
    const/16 v2, 0x433

    if-gt v1, v2, :cond_4

    sub-int/2addr v2, v1

    const/16 v1, 0x35

    if-le v2, v1, :cond_2

    .line 152
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_2
    shr-long/2addr p0, v2

    if-eqz v0, :cond_3

    neg-long p0, p0

    .line 154
    :cond_3
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    neg-long p0, p0

    .line 156
    :cond_5
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 139
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " to exact integer"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toExactInt(DI)Lgnu/math/IntNum;
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/RealNum;->toExactInt(D)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static toInt(DI)D
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-wide p0

    .line 109
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double p2, p0, v0

    if-gez p2, :cond_2

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 105
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    .line 103
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toScaledInt(DI)Lgnu/math/IntNum;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object p0

    invoke-static {p0, p2}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;
    .locals 2

    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int v1, p1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v0, v1}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    if-ltz p1, :cond_1

    .line 198
    invoke-static {v1, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {p0, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 201
    :goto_1
    invoke-static {v1, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    :cond_2
    const/4 p1, 0x4

    .line 203
    invoke-virtual {p0, p1}, Lgnu/math/RatNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static toStringDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v0, 0x45

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 354
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x79

    if-eq v3, v4, :cond_c

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_1

    goto/16 :goto_6

    .line 357
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    .line 358
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v8, v1, 0x1

    .line 359
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_b

    add-int/lit8 v8, v1, 0x2

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x30

    if-ge v8, v2, :cond_3

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v11, v8, 0x1

    .line 368
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v10

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 370
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    const-string v2, "0."

    .line 371
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_5

    .line 372
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v5, v2, 0x1

    .line 373
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_a

    if-eq v2, v6, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x2e

    if-eq v2, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    if-ne v2, v10, :cond_8

    if-ge v5, v1, :cond_9

    .line 377
    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v2, v5

    goto :goto_3

    .line 379
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_b
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: toStringDecimal given non-negative exponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    return-object p0
.end method

.method public static toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 9

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x2e

    const/16 v7, 0x30

    if-ne v4, v7, :cond_7

    move v3, v1

    :goto_1
    if-ne v3, v2, :cond_2

    const-string p0, "0"

    .line 287
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 291
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_6

    const/16 v8, 0x39

    if-gt v3, v8, :cond_6

    if-ne v3, v7, :cond_3

    if-ne v4, v2, :cond_6

    .line 294
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v3, v7, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v4

    add-int/2addr v1, v5

    move v0, v1

    :goto_2
    if-ne v4, v2, :cond_5

    .line 298
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    :goto_3
    if-ge v4, v2, :cond_a

    add-int/lit8 v1, v4, 0x1

    .line 302
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v1

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    const/4 v3, 0x2

    :cond_8
    sub-int v0, v2, v3

    .line 312
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    .line 318
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    if-ge v3, v2, :cond_a

    add-int/lit8 v1, v3, 0x1

    .line 322
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_9

    .line 324
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v3, v1

    goto :goto_4

    .line 328
    :cond_a
    :goto_5
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_6
    add-int/2addr p0, v1

    .line 332
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_b

    move v2, p0

    goto :goto_6

    :cond_b
    if-ne v3, v6, :cond_c

    add-int/lit8 v2, p0, 0x2

    :cond_c
    if-ltz v2, :cond_d

    .line 343
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_d
    return v0
.end method

.method public static toStringScientific(D)Ljava/lang/String;
    .locals 0

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringScientific(F)Ljava/lang/String;
    .locals 0

    .line 243
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringScientific(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x45

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    return-object p0

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x79

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    invoke-static {p0, v2}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result p0

    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .line 238
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public exp()Lgnu/math/Complex;
    .locals 3

    .line 161
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final im()Lgnu/math/RealNum;
    .locals 1

    .line 13
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract isNegative()Z
.end method

.method public isZero()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log()Lgnu/math/Complex;
    .locals 5

    .line 166
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 168
    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v2
.end method

.method public max(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, p0

    :cond_1
    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method public min(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 3

    .line 40
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 0

    return-object p0
.end method

.method public rneg()Lgnu/math/RealNum;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public abstract sign()I
.end method

.method public final sin()Lgnu/math/Complex;
    .locals 3

    .line 172
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final sqrt()Lgnu/math/Complex;
    .locals 5

    .line 176
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 178
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v2

    .line 180
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/RatNum;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toInexact()Lgnu/math/Complex;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/RealNum;
    .locals 3

    .line 89
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 3

    .line 120
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public toScaledInt(I)Lgnu/math/IntNum;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method
