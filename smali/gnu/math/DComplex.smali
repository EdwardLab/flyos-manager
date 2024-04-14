.class public Lgnu/math/DComplex;
.super Lgnu/math/Complex;
.source "DComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:D

.field real:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 25
    iput-wide p1, p0, Lgnu/math/DComplex;->real:D

    .line 26
    iput-wide p3, p0, Lgnu/math/DComplex;->imag:D

    return-void
.end method

.method public static div(DDDD)Lgnu/math/DComplex;
    .locals 7

    .line 211
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 212
    invoke-static {p6, p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_0

    div-double/2addr p4, p6

    mul-double v0, p4, p4

    add-double/2addr v0, v4

    mul-double p6, p6, v0

    mul-double v0, p0, p4

    add-double/2addr v0, p2

    mul-double p2, p2, p4

    sub-double/2addr p2, p0

    goto :goto_0

    :cond_0
    div-double/2addr p6, p4

    mul-double v0, p6, p6

    add-double/2addr v0, v4

    mul-double p4, p4, v0

    mul-double v0, p2, p6

    add-double/2addr v0, p0

    mul-double p0, p0, p6

    sub-double/2addr p2, p0

    move-wide p6, p4

    .line 229
    :goto_0
    new-instance p0, Lgnu/math/DComplex;

    div-double/2addr v0, p6

    div-double/2addr p2, p6

    invoke-direct {p0, v0, v1, p2, p3}, Lgnu/math/DComplex;-><init>(DD)V

    return-object p0
.end method

.method public static log(DD)Lgnu/math/Complex;
    .locals 2

    .line 175
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lgnu/math/DComplex;->make(DD)Lgnu/math/Complex;

    move-result-object p0

    return-object p0
.end method

.method public static power(DDDD)Lgnu/math/DComplex;
    .locals 4

    .line 160
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 165
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p2, v0, p4

    mul-double v2, p6, p0

    sub-double/2addr p2, v2

    .line 166
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double p6, p6, v0

    mul-double p4, p4, p0

    add-double/2addr p6, p4

    .line 168
    invoke-static {p2, p3, p6, p7}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object p0

    return-object p0
.end method

.method public static sqrt(DD)Lgnu/math/Complex;
    .locals 11

    .line 235
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    move-wide p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, p0, v2

    if-lez v8, :cond_1

    add-double/2addr v0, p0

    mul-double v0, v0, v6

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p2, v0

    div-double p0, p2, v4

    goto :goto_0

    :cond_1
    sub-double/2addr v0, p0

    mul-double v0, v0, v6

    .line 249
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_2

    neg-double p0, p0

    :cond_2
    move-wide v0, p0

    div-double/2addr p2, v0

    div-double p0, p2, v4

    move-wide v9, p0

    move-wide p0, v0

    move-wide v0, v9

    .line 254
    :goto_0
    new-instance p2, Lgnu/math/DComplex;

    invoke-direct {p2, v0, v1, p0, p1}, Lgnu/math/DComplex;-><init>(DD)V

    return-object p2
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7

    .line 116
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_1

    .line 118
    check-cast p1, Lgnu/math/Complex;

    .line 119
    invoke-virtual {p1}, Lgnu/math/Complex;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v0, v1, :cond_0

    .line 121
    new-instance v0, Lgnu/math/DComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    int-to-double v3, p2

    invoke-virtual {p1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v5

    mul-double v5, v5, v3

    add-double/2addr v1, v5

    iget-wide v5, p0, Lgnu/math/DComplex;->imag:D

    invoke-virtual {p1}, Lgnu/math/Complex;->imValue()D

    move-result-wide p1

    mul-double v3, v3, p1

    add-double/2addr v5, v3

    invoke-direct {v0, v1, v2, v5, v6}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "units mis-match"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 8

    .line 146
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lgnu/math/Complex;

    .line 149
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public doubleImagValue()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 46
    instance-of v1, p1, Lgnu/math/Complex;

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    check-cast p1, Lgnu/math/Complex;

    .line 49
    invoke-virtual {p1}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v1

    sget-object v2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/Complex;->imValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public im()Lgnu/math/RealNum;
    .locals 3

    .line 31
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->imag:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 12

    .line 129
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_1

    .line 131
    check-cast p1, Lgnu/math/Complex;

    .line 132
    invoke-virtual {p1}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v0

    .line 135
    invoke-virtual {p1}, Lgnu/math/Complex;->imValue()D

    move-result-wide v2

    .line 136
    new-instance p1, Lgnu/math/DComplex;

    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    mul-double v6, v4, v0

    iget-wide v8, p0, Lgnu/math/DComplex;->imag:D

    mul-double v10, v8, v2

    sub-double/2addr v6, v10

    mul-double v4, v4, v2

    mul-double v8, v8, v0

    add-double/2addr v4, v8

    invoke-direct {p1, v6, v7, v4, v5}, Lgnu/math/DComplex;-><init>(DD)V

    return-object p1

    .line 139
    :cond_0
    invoke-static {p0, p1}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object p1

    return-object p1

    .line 141
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public final neg()Lgnu/math/Numeric;
    .locals 5

    .line 112
    new-instance v0, Lgnu/math/DComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    neg-double v1, v1

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .locals 3

    .line 29
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 404
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->real:D

    .line 405
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->imag:D

    return-void
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 4

    .line 41
    new-instance v0, Lgnu/math/CComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v1, v2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lgnu/math/DComplex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 61
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v6, "#i"

    cmpl-double v7, v0, v4

    if-nez v7, :cond_0

    const-string v0, "1/0"

    :goto_0
    move-object v1, v6

    goto :goto_1

    :cond_0
    cmpl-double v7, v0, v2

    if-nez v7, :cond_1

    const-string v0, "-1/0"

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0/0"

    goto :goto_0

    .line 74
    :cond_2
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 76
    :goto_1
    iget-wide v7, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_3
    iget-wide v7, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v11, v7, v4

    if-nez v11, :cond_4

    const-string v1, "+1/0i"

    goto :goto_2

    :cond_4
    cmpl-double v4, v7, v2

    if-nez v4, :cond_5

    const-string v1, "-1/0i"

    goto :goto_2

    .line 88
    :cond_5
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "+0/0i"

    goto :goto_2

    .line 94
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_7

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v6, v1

    move-object v1, v2

    .line 99
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v3, v9

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 398
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    return-void
.end method
